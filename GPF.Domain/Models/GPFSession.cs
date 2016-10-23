using System.Collections.Generic;

namespace GPF.Domain.Models
{
    public class GPFSession
    {
        public int Id { get; set; }
        public Account Account { get; set; }

        public Degree Degree { get; set; }
        public Concentration Concentration { get; set; }
        public AcademicTerm EnteringTerm { get; set; }
        public int ClassesPerQuarter { get; set; }
        public ClassDelivery ClassDeliveryOption { get; set; }

        public List<Course> ConcentrationCoursesSelected { get; set; }
        public List<Course> ElectiveCoursesSelected { get; set; }
    }
}
