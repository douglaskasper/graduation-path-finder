using System.Collections.Generic;
using System.Web.Mvc;
using System.Web.Security;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;
using GPF.ViewModels;

namespace GPF.Controllers
{
    public class AccountController : Controller
    {
        IAccountService _accountService;
        IDegreeService _degreeService;

        public AccountController(IAccountService accountService, IDegreeService degreeService)
        {
            _accountService = accountService;
            _degreeService = degreeService;
        }

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Login()
        {
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
                    return RedirectToAction("Index", "Home");
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
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
        public ActionResult Register()
        {
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
                    return RedirectToAction("Login", "Account");
                }
                else
                {
                    ModelState.AddModelError("", "Unable to create account.");
                }
            }

            return View(account);
        }

        /*
            TODO: User profile page based on account role.

            Student:
                Edit profile.
                Delete account.
            Faculty:
                Edit profile.
                Delete account.
                Search students.
                Choose student account - edit account, GPF that uses that account's info and saves to it.
            Administrator:
                Edit profile.
                Delete account.        
                Search students.
                Choose student account - edit account, GPF that uses that account's info and saves to it.
                Pages that list table data.
                
        */

        [HttpGet]
        public ActionResult Edit()
        {
            Account account = new Account();
            account = _accountService.GetAccount(account);

            List<Degree> availableDegrees = new List<Degree>();
            availableDegrees = _degreeService.GetDegrees();

            AccountEditViewModel model = new AccountEditViewModel
            {
                Account = account,
                AvailableDegrees = availableDegrees
            };

            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(Account account)
        {
            if (ModelState.IsValid)
            {
                // save record.
            }

            return View(account);
        }

        public ActionResult FillConcentrationList(int id)
        {
            Degree degree = _degreeService.GetDegreeById(new Degree { Id = id });
            return Json(degree.Concentrations, JsonRequestBehavior.AllowGet);
        }
    }
}