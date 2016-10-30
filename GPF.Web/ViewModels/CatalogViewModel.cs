using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Web.ViewModels
{
    public class CatalogViewModel
    {
        public List<Degree> Degrees { get; set; }
        public List<Course> Courses { get; set; }

        public int SearchId { get; set; }
        public string SearchTitle { get; set; }
    }
}