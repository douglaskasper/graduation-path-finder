namespace GPF.Domain.Models
{
    public class Campus
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string Street { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
    }
}
