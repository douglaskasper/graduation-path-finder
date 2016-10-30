using System.Web.Mvc;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;
using GPF.Web.ViewModels;

namespace GPF.Web.Controllers
{
    public class HomeController : Controller
    {
        private ICourseService _service;

        public HomeController(ICourseService service)
        {
            _service = service;
        }

        public ActionResult Index()
        {
            return RedirectToAction("Options", "GPF");
        }
    }
}