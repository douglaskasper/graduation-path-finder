using System.Web.Mvc;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Web.Controllers
{
    public class GPFController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Options()
        {
            /*
                TODO: Initial option selection page before plotting path.
                    Options:
                        Degree program (MS CS or MS IS only)
			            Concentration
			            Entering quarter
			            Number of courses per quarter
			            Delivery choice– online, classroom, both
            */
            return View();
        }

        [HttpPost]
        public ActionResult Options(GPFSession searchSession)
        {
            /*
                TODO: Redirect to plotted path. Save search options if logged in.
            */
            return View();
        }

        public ActionResult Plot()
        {
            /*
                TODO: Use service to return list of classes to graduation, display classes.
                    This could be interactive, to choose courses when options are available under a certain quarter.
            */
            return View();
        }
    }
}