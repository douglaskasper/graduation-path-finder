using System.Collections.Generic;

namespace GPF.Domain.Models
{
    public class GPFSchedule
    {
        public List<AcademicTerm> Terms { get; set; }

        public GPFSchedule()
        {
            Terms = new List<AcademicTerm>();
        }

        public bool AddClass(ClassOffering classOffering)
        {
            //add class to term
            return true; //if it was able to add
        }
    }
}
