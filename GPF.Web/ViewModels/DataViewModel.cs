using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Web.ViewModels
{
    public class DataViewModel
    {
        public Account Account;
        public List<Account> Accounts { get; set; }
        public List<Course> Courses { get; set; }
        public List<Degree> Degrees { get; set; }
        public List<Concentration> Concentrations { get; set; }

        public List<Course> DegreeRequirements { get; set; }
        public List<Course> CoursePrerequisites { get; set; }
        public List<Course> ConcentrationCourses { get; set; }

        public List<GPFSession> GPFSessions { get; set; }
    }
}
