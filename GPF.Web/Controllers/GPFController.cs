using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using System.Web.Security;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;
using GPF.Web.Lib;
using GPF.Web.ViewModels;

namespace GPF.Web.Controllers
{
    public class GPFController : Controller
    {
        IGPFService _gpfService;
        IAccountService _accountService;
        IDegreeService _degreeService;
        ICourseService _courseService;

        public GPFController(IGPFService gpfService, IAccountService accountService, IDegreeService degreeService, ICourseService courseService)
        {
            _gpfService = gpfService;
            _accountService = accountService;
            _degreeService = degreeService;
            _courseService = courseService;
        }

        public ActionResult Index()
        {
            return RedirectToAction("Options", "GPF");
        }

        [HttpGet]
        public ActionResult Options(int? id)
        {
            Account account = GetAuthCookieAccount();
            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;

            GPFSession gpfSession = new GPFSession();
            if (id.HasValue)
            {
                gpfSession = _gpfService.GetSessionById(id.Value);
            }

            List<Degree> availableDegrees = new List<Degree>();
            availableDegrees = _degreeService.GetDegrees();

            if (account != null && account.Id > 0)
            {
                gpfSession.Account = account;
                gpfSession.Degree = (gpfSession.Degree == null) ? account.Degree : gpfSession.Degree;
                gpfSession.Concentration = (gpfSession.Concentration == null) ? account.Concentration : gpfSession.Concentration;
            }

            if (gpfSession.Degree == null && availableDegrees != null)
            {
                gpfSession.Degree = availableDegrees[0];
                gpfSession.Concentration = gpfSession.Degree.Concentrations[0];
            }

            List<Course> availableConcentrationCourses = new List<Course>();
            if (gpfSession.Degree != null)
                availableConcentrationCourses = _courseService.GetCoursesByConcentration(gpfSession.Concentration.Id);

            List<Course> availableElectiveCourses = new List<Course>();
            if (gpfSession.Degree != null && gpfSession.Concentration != null)
                availableElectiveCourses = _courseService.GetAllElectivesByConcentration(gpfSession.Concentration.Id);

            GPFViewModel model = new GPFViewModel()
            {
                GPFSession = gpfSession,
                AvailableDegrees = availableDegrees,
                AvailableConcentrationCourses = availableConcentrationCourses,
                AvailableElectiveCourses = availableElectiveCourses,
                Impersonating = (impersonateAccount != null)
            };

            if (id.HasValue)
            {
                model.EnteringYear = gpfSession.EnteringTerm.Year;
                model.EnteringQuarter = gpfSession.EnteringTerm.Quarter.Value;
                model.ClassesPerQuarter = gpfSession.ClassesPerQuarter;
                model.ClassDeliveryOption = gpfSession.ClassDeliveryOption.Value;
            }

            return View(model);
        }

        [HttpPost]
        public ActionResult Options(GPFViewModel viewModel)
        {
            GPFSession session = viewModel.GPFSession;
            session.EnteringTerm = new AcademicTerm(viewModel.EnteringYear, viewModel.EnteringQuarter);
            session.ClassesPerQuarter = viewModel.ClassesPerQuarter;
            session.ClassDeliveryOption = ClassDelivery.GetClassDelivery(viewModel.ClassDeliveryOption);

            session.ConcentrationCoursesSelected = new List<Course>();
            if (viewModel.ConcentrationCoursesSelected != null)
            {
                viewModel.ConcentrationCoursesSelected = viewModel.ConcentrationCoursesSelected.Take(4).ToList();
                foreach (int courseId in viewModel.ConcentrationCoursesSelected)
                    session.ConcentrationCoursesSelected.Add(new Course() { Id = courseId });
            }
            session.ElectiveCoursesSelected = new List<Course>();
            if (viewModel.ElectiveCoursesSelected != null)
            {
                viewModel.ElectiveCoursesSelected = viewModel.ElectiveCoursesSelected.Take(4).ToList();
                foreach (int courseId in viewModel.ElectiveCoursesSelected)
                    session.ElectiveCoursesSelected.Add(new Course() { Id = courseId });
            }

            Account account = GetAuthCookieAccount();
            Account impersonateAccount = Statics.ImpersonateGet(Session);
            if (impersonateAccount != null)
                account = impersonateAccount;

            if(account != null && account.Id > 0)
            {
                session.Account = account;
                _gpfService.SaveSession(session);
            }

            TempData["GPFSession"] = session;
            return RedirectToAction("Schedule", "GPF");
        }

        public ActionResult Schedule()
        {
            GPFSession session = (GPFSession)TempData["GPFSession"];
            if (session == null)
                return RedirectToAction("Options", "GPF");

            session.Degree = _degreeService.GetDegreeById(session.Degree.Id);
            session.Concentration = session.Degree.Concentrations.Find(x => x.Id == session.Concentration.Id);
            GPFSchedule schedule = _gpfService.GetSessionSchedule(session);

            GPFViewModel model = new GPFViewModel()
            {
                GPFSession = session,
                GPFSchedule = schedule
            };
            return View(model);
        }

        public ActionResult FillConcentrationList(int id)
        {
            Degree degree = _degreeService.GetDegreeById(id);
            return Json(degree.Concentrations, JsonRequestBehavior.AllowGet);
        }
        
        public ActionResult FillConcentrationCourseList(int id)
        {
            List<Course> courses = new List<Course>();
            courses = _courseService.GetCoursesByConcentration(id);
            return Json(courses, JsonRequestBehavior.AllowGet);
        }

        public ActionResult FillElectiveCourseList(int id)
        {
            List<Course> courses = new List<Course>();
            courses = _courseService.GetAllElectivesByConcentration(id);
            return Json(courses, JsonRequestBehavior.AllowGet);
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