using System;
using System.Collections;

namespace GPF.Domain.Models
{
    public class Course : IComparable
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
        private List<ClassOffering> classesScheduled { get; set; }

        public int CompareTo(object obj)
        {
            if (obj == null) return 1;

            Course other = obj as Course;
            if (other != null)
                return this.Id.CompareTo(other.Id);
            else
                throw new ArgumentException("Object is not a Course");
        }
    }
}
