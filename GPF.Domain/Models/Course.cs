using System.Collections.Generic;

namespace GPF.Domain.Models
{
    public class Course
    {
        public int Id { get; set; }
        public int Number { get; set; }
        public string Department { get; set; }
        public string DisplayId
        {
            get { return Department + Number.ToString(); }
        }

        public string Title { get; set; }
        public string Description { get; set; }
        public decimal Units { get; set; }

        public bool Active { get; set; }

        public List<Course> Prerequisites { get; set; }
    }
}
