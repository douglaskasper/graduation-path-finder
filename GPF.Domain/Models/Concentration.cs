using System.Collections.Generic;

namespace GPF.Domain.Models
{
    public class Concentration
    {
        public int Id { get; set; }
        public string Title { get; set; }

        public List<Course> Courses { get; set; }
    }
}
