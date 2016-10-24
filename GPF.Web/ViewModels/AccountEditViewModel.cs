using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Web.ViewModels
{
    public class AccountEditViewModel
    {
        public Account Account;
        public List<Degree> AvailableDegrees;
    }
}