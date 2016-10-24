using System.Collections.Generic;
using System.Web.Mvc;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;
using GPF.Web.ViewModels;

namespace GPF.Web.Controllers
{
    public class CatalogController : Controller
    {
        IDegreeService _degreeService;
        
        public CatalogController(IDegreeService degreeService)
        {
            _degreeService = degreeService;
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Degrees()
        {
            /*
                TODO: Display full list of degrees, search options on top.
                    Search selections filter list w/ js?
            */
            List<Degree> degrees = _degreeService.GetDegrees();
            DegreeListViewModel model = new DegreeListViewModel
            {
                Degrees = degrees
            };
            return View(model);
        }

        public ActionResult Courses()
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