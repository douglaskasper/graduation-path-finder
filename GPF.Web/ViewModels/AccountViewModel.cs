using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Web.ViewModels
{
    public class AccountViewModel
    {
        public Account Account;
        public List<Degree> AvailableDegrees;
        public List<Account> StudentAccounts;
        public bool Impersonating { get; set; }
        public List<ClassOffering> ClassHistory { get; set; }
    }
}