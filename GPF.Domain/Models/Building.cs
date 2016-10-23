namespace GPF.Domain.Models
{
    public class Building
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string Street { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }

        public Campus Campus { get; set; }
    }
}
