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
        ICourseService _courseService;
        IGPFService _gpfService;

        public AccountController(IAccountService accountService, IDegreeService degreeService, ICourseService courseService, IGPFService gpfService)
        {
            _accountService = accountService;
            _degreeService = degreeService;
            _courseService = courseService;
            _gpfService = gpfService;
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
                if (_accountService.Login(account.Username, account.Password))
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
            if (ModelState.IsValid)
            {
                if (_accountService.Register(account))
                {
                    if (_accountService.Login(account.Username, account.Password))
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

            if (account.Degree == null || account.Degree.Id <= 0)
                account.Degree = availableDegrees[0];
            if (account.Concentration == null || account.Concentration.Id <= 0)
                account.Concentration = availableDegrees[0].Concentrations[0];

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

            List<Account> accounts = _accountService.GetAccounts();
            List<Course> courses = _courseService.GetCourses();
            List<Degree> degrees = _degreeService.GetDegrees();
            List<Concentration> concentrations = _degreeService.GetConcentrationsByDegreeId(0);

            /** Display if necessary:
                List<Course> degreeRequirements = _courseService.GetCoursesRequiredByDegree(0);
                List<Course> coursePrerequisites = _courseService.GetCoursePrereqs(0);
                List<Course> concentrationCourses = _courseService.GetCoursesByConcentration(0);
            */

            List<GPFSession> sessions = _gpfService.GetSessions();

            DataViewModel model = new DataViewModel
            {
                Account = account,
                Accounts = accounts,
                Courses = courses,
                Degrees = degrees,
                Concentrations = concentrations,
                //DegreeRequirements = degreeRequirements,
                //CoursePrerequisites = coursePrerequisites,
                //ConcentrationCourses = concentrationCourses,
                GPFSessions = sessions
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

            Account studentAccount = _accountService.GetAccount(id);

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
            AccountRole userAccountRole = null;
            if (account != null && account.Id > 0)
                userAccountRole = account.Role;

            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;

            List<Course> courseHistory = _courseService.GetCourseHistory(account.Id);

            AccountViewModel model = new AccountViewModel
            {
                Account = account,
                CourseHistory = courseHistory,
                Impersonating = (impersonateAccount != null),
                UserAccountRole = userAccountRole
            };

            return View(model);
        }

        public ActionResult GPFHistory()
        {
            Account account = GetAuthCookieAccount();
            if (account == null)
                return RedirectToAction("Login", "Account");

            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;

            List<GPFSession> gpfSessions = _gpfService.GetSessionsByAccountId(account.Id);

            AccountViewModel model = new AccountViewModel
            {
                Account = account,
                SavedSessions = gpfSessions,
                Impersonating = (impersonateAccount != null)
            };

            return View(model);
        }

        public ActionResult FillConcentrationList(int id)
        {
            Degree degree = _degreeService.GetDegreeById(id);
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
                    account = _accountService.GetAccount(account.Username);

                    if (account == null || account.Id <= 0)
                    {
                        Statics.KillCookie(Request);
                        return null;
                    }

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

        public ActionResult RemoveCourseFromHistory(int? id)
        {
            Account account = GetAuthCookieAccount();
            if (account == null)
                return RedirectToAction("Login", "Account");
            else if (account.Role == AccountRole.Student)
                return RedirectToAction("Edit", "Account");

            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;

            if (id.HasValue)
            {
                _accountService.RemoveCourseFromHistory(account, id.Value);
            }

            return RedirectToAction("ClassHistory", "Account");
        }
    }
}