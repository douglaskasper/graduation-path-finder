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
    }
}
