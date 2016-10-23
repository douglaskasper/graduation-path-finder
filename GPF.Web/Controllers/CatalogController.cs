using System.Web.Mvc;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Controllers
{
    public class CatalogController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DegreeBrowser()
        {
            /*
                TODO: Display full list of degrees, search options on top.
                    Search selections filter list w/ js?
            */
            return View();
        }

        public ActionResult CourseBrowser()
        {
            /*
                TODO: Display full list of courses, search options on top.
                    Search selections filter list w/ js?
            */
            return View();
        }

        public ActionResult DegreeDetails()
        {
            /*
                TODO: Displays data on specific degree, including degree requirements.
            */
            return View();
        }

        public ActionResult CourseDetails()
        {
            /*
                TODO: Displays data on specific course, including prerequisites.
            */
            return View();
        }
    }
}