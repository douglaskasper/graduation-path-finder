namespace GPF.Domain.Models
{
    public class ClassOffering
    {
        public int Id { get; set; }
        public int Section { get; set; }

        public Course Course { get; set; }
        public ClassLocation Location { get; set; }
        public Account Instructor { get; set; }
        
        public AcademicTerm AcademicTerm { get; set; }
        public ClassDay DayOfWeek { get; set; }
        public int TimeBegin { get; set; }
        public int TimeEnd { get; set; }

        public ClassStatus Status { get; set; }
    }
}
