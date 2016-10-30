using System;
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
        ICourseService _courseService;

        public CatalogController(IDegreeService degreeService, ICourseService courseService)
        {
            _degreeService = degreeService;
            _courseService = courseService;
        }

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Degrees()
        {
            /*
                TODO: Display full list of degrees, search options on top.
                    Search selections filter list w/ js?
            */
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
            /*
                TODO: Display full list of degrees, search options on top.
                    Search selections filter list w/ js?
            */
            List<Course> courses = _courseService.GetCourses();
            CatalogViewModel model = new CatalogViewModel()
            {
                Courses = courses
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

            CatalogViewModel model = new CatalogViewModel()
            {
                Courses = courses,
                SearchId = catalogModel.SearchId,
                SearchTitle = catalogModel.SearchTitle
            };
            return View(model);
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