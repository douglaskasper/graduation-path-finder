using System;
using System.Collections.Generic;
using System.Web.Mvc;
using System.Web.Security;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;
using GPF.Web.Lib;
using GPF.Web.ViewModels;

namespace GPF.Web.Controllers
{
    public class AccountController : Controller
    {
        IAccountService _accountService;
        IDegreeService _degreeService;
        IClassOfferingService _classOfferingService;

        public AccountController(IAccountService accountService, IDegreeService degreeService, IClassOfferingService classOfferingService)
        {
            _accountService = accountService;
            _degreeService = degreeService;
            _classOfferingService = classOfferingService;
        }

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Login()
        {
            Statics.ImpersonateStop(Session);
            return View();
        }

        [HttpPost]
        public ActionResult Login(Account account)
        {
            if (ModelState.IsValid)
            {
                if (_accountService.Login(account))
                {
                    FormsAuthentication.SetAuthCookie(account.Username, account.RememberMe);
                    return RedirectToAction("Edit", "Account");
                }
                else
                {
                    ModelState.AddModelError("", "No matching account with this username and password.");
                }
            }

            return View(account);
        }

        public ActionResult Logout()
        {
            Statics.ImpersonateStop(Session);
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
        public ActionResult Register()
        {
            Statics.ImpersonateStop(Session);
            return View();
        }

        [HttpPost]
        public ActionResult Register(Account account)
        {
            /*
                TODO: Add opt-in responsibilities, agreements.
            */
            if (ModelState.IsValid)
            {
                if (_accountService.Register(account))
                {
                    if (_accountService.Login(account))
                    {
                        FormsAuthentication.SetAuthCookie(account.Username, false);
                        return RedirectToAction("Edit", "Account");
                    }
                    else
                    {
                        return RedirectToAction("Login", "Account");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "Unable to create account.");
                }
            }

            return View(account);
        }

        [HttpGet]
        public ActionResult Edit()
        {
            Account account = GetAuthCookieAccount();
            if (account == null)
                return RedirectToAction("Login", "Account");

            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;

            List<Degree> availableDegrees = new List<Degree>();
            availableDegrees = _degreeService.GetDegrees();

            AccountViewModel model = new AccountViewModel
            {
                Account = account,
                AvailableDegrees = availableDegrees,
                Impersonating = (impersonateAccount != null)
            };

            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(AccountViewModel viewModel)
        {
            Account account = viewModel.Account;
            if (ModelState.IsValid)
            {
                if (_accountService.Update(account))
                {
                }
            }

            return RedirectToAction("Edit", "Account");
        }

        public ActionResult Delete()
        {
            Account account = GetAuthCookieAccount();
            if (account == null)
                return RedirectToAction("Login", "Account");
            
            _accountService.Delete(account);
            FormsAuthentication.SignOut();

            return RedirectToAction("Index", "Home");
        }
        
        public ActionResult Students()
        {
            Account account = GetAuthCookieAccount();
            if (account == null)
                return RedirectToAction("Login", "Account");
            else if (account.Role == AccountRole.Student)
                return RedirectToAction("Edit", "Account");

            List<Account> studentAccounts = new List<Account>();
            studentAccounts = _accountService.GetAccounts();

            studentAccounts.FindAll(x => x.Role == AccountRole.Student);

            AccountViewModel model = new AccountViewModel
            {
                Account = account,
                StudentAccounts = studentAccounts
            };

            return View(model);
        }

        public ActionResult DataView()
        {
            Account account = GetAuthCookieAccount();
            if (account == null)
                return RedirectToAction("Login", "Account");
            else if (account.Role != AccountRole.Administrator)
                return RedirectToAction("Edit", "Account");

            List<Account> studentAccounts = new List<Account>();
            studentAccounts = _accountService.GetAccounts();

            studentAccounts.FindAll(x => x.Role == AccountRole.Student);

            AccountViewModel model = new AccountViewModel
            {
                Account = account,
                StudentAccounts = studentAccounts
            };

            return View(model);
        }

        public ActionResult Impersonate(int id)
        {
            Account account = GetAuthCookieAccount();
            if (account == null)
                return RedirectToAction("Login", "Account");
            else if (account.Role == AccountRole.Student)
                return RedirectToAction("Edit", "Account");

            Account studentAccount = _accountService.GetAccount(new Account() { Id = id });

            if (studentAccount != null)
            {
                Session["ImpersonateAccount"] = studentAccount;
            }

            return RedirectToAction("Students", "Account");
        }

        public ActionResult ImpersonateStop()
        {
            Statics.ImpersonateStop(Session);
            return RedirectToAction("Edit", "Account");
        }

        public ActionResult ClassHistory()
        {
            Account account = GetAuthCookieAccount();
            if (account == null)
                return RedirectToAction("Login", "Account");

            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;

            List<ClassOffering> classHistory = _classOfferingService.GetClassHistory(account);

            AccountViewModel model = new AccountViewModel
            {
                Account = account,
                ClassHistory = classHistory,
                Impersonating = (impersonateAccount != null)
            };

            return View(model);
        }

        public ActionResult GPFHistory()
        {
            //placeholder for GPF history display page.
            return View();
        }

        public ActionResult FillConcentrationList(int id)
        {
            Degree degree = _degreeService.GetDegreeById(new Degree { Id = id });
            return Json(degree.Concentrations, JsonRequestBehavior.AllowGet);
        }

        public Account GetAuthCookieAccount()
        {
            if (Lib.Statics.HasAuthCookie(Request))
            {
                string username = GetAuthCookieUsername();
                if (!string.IsNullOrWhiteSpace(username))
                {
                    Account account = new Account() { Username = username };
                    account = _accountService.GetAccount(account);
                    return account;
                }
            }
            return null;
        }
        public string GetAuthCookieUsername()
        {
            if(Request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                return FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value).Name;
            }

            return null;
        }
    }
}