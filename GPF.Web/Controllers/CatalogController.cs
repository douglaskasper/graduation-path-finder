using System;
using System.Collections.Generic;
using System.Web.Mvc;
using System.Web.Security;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;
using GPF.Web.ViewModels;
using GPF.Web.Lib;

namespace GPF.Web.Controllers
{
    public class CatalogController : Controller
    {
        IDegreeService _degreeService;
        ICourseService _courseService;
        IAccountService _accountService;

        public CatalogController(IDegreeService degreeService, ICourseService courseService, IAccountService accountService)
        {
            _degreeService = degreeService;
            _courseService = courseService;
            _accountService = accountService;
        }

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Degrees()
        {
            List<Degree> degrees = _degreeService.GetDegrees();
            CatalogViewModel model = new CatalogViewModel()
            {
                Degrees = degrees
            };
            return View(model);
        }
        
        [HttpPost]
        public ActionResult Degrees(CatalogViewModel catalogModel)
        {
            List<Degree> degrees = _degreeService.GetDegrees();

            if (catalogModel.SearchId > 0)
            {
                degrees = degrees.FindAll(x => x.Id == catalogModel.SearchId);
            }
            if (!string.IsNullOrWhiteSpace(catalogModel.SearchTitle))
            {
                degrees = degrees.FindAll(x => x.Title.ToLower().Contains(catalogModel.SearchTitle.ToLower()));
            }

            CatalogViewModel model = new CatalogViewModel()
            {
                Degrees = degrees,
                SearchId = catalogModel.SearchId,
                SearchTitle = catalogModel.SearchTitle
            };
            return View(model);
        }

        [HttpGet]
        public ActionResult Courses()
        {
            List<Course> courses = _courseService.GetCourses();

            foreach (var course in courses)
            {
                course.Prerequisites = _courseService.GetCoursePrereqs(course.Id);
            }

            Account account = GetAuthCookieAccount();
            AccountRole accountRole = null;
            if (account != null && account.Id > 0)
                accountRole = account.Role;

            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;

            CatalogViewModel model = new CatalogViewModel()
            {
                Courses = courses,
                ActingAccount = account,
                AccountLoggedInRole = accountRole
            };
            return View(model);
        }

        [HttpPost]
        public ActionResult Courses(CatalogViewModel catalogModel)
        {
            List<Course> courses = _courseService.GetCourses();

            if (catalogModel.SearchId > 0)
            {
                courses = courses.FindAll(x => x.Number == catalogModel.SearchId);
            }
            if (!string.IsNullOrWhiteSpace(catalogModel.SearchTitle))
            {
                courses = courses.FindAll(x => x.Title.ToLower().Contains(catalogModel.SearchTitle.ToLower()));
            }

            foreach (var course in courses)
            {
                course.Prerequisites = _courseService.GetCoursePrereqs(course.Id);
            }

            Account account = GetAuthCookieAccount();
            AccountRole accountRole = null;
            if (account != null && account.Id > 0)
                accountRole = account.Role;

            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;
            
            CatalogViewModel model = new CatalogViewModel()
            {
                Courses = courses,
                SearchId = catalogModel.SearchId,
                SearchTitle = catalogModel.SearchTitle,
                ActingAccount = account,
                AccountLoggedInRole = accountRole
            };

            return View(model);
        }

        public ActionResult AddCourseToHistory(int? id)
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
                _accountService.AddCourseToHistory(account, id.Value);
            }

            return RedirectToAction("ClassHistory", "Account");
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
            if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                return FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value).Name;
            }

            return null;
        }
    }
}