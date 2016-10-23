using System.Collections.Generic;

namespace GPF.Domain.Models
{
    public class Degree
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string College { get; set; }
        public string Description { get; set; }

        public List<Course> RequiredCourses { get; set; }
        public List<Concentration> Concentrations { get; set; }

        public int ConcentrationCoursesRequired { get; set; }
        public int ElectiveCoursesRequired { get; set; }
    }
}
