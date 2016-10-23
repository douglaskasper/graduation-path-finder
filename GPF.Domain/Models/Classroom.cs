namespace GPF.Domain.Models
{
    public class Classroom
    {
        public int Id { get; set; }
        public int Number { get; set; }
        public string Section { get; set; }

        public Building Building { get; set; }
    }
}