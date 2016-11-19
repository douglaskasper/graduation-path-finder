using System.Collections.Generic;

namespace GPF.Domain.Models
{
    public class Account
    {
        public int Id { get; set; }
        
        public string Username { get; set; }
        public string Password { get; set; }
        
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public string Street { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Phone { get; set; }

        public AccountRole Role { get; set; }

        public Degree Degree { get; set; }
        public Concentration Concentration { get; set; }

        public List<ClassOffering> ClassHistory { get; set; }

        public bool RememberMe { get; set; }
    }
}
