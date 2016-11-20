using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Web.ViewModels
{
    public class AccountViewModel
    {
        public Account Account { get; set; }
        public List<Degree> AvailableDegrees { get; set; }
        public List<Account> StudentAccounts { get; set; }
        public List<Account> ElevatedAccounts { get; set; }
        public bool Impersonating { get; set; }
        public List<GPFSession> SavedSessions { get; set; }
        public List<Course> CourseHistory { get; set; }
        public AccountRole UserAccountRole { get; set; }
    }
}