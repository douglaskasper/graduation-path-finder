using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services.Sandbox
{
    public class AccountService : IAccountService
    {
        public bool Register(Account account)
        {
            return true;
        }

        public bool Login(Account account)
        {
            return true;
        }

        public bool Update(Account account)
        {
            return true;
        }

        public Account GetAccount(Account account)
        {
            account = new Account();
            account.Id = 93215556;
            account.Username = "johnsmith@email.com";
            account.FirstName = "John";
            account.LastName = "Smith";
            account.Street = "112 N Green St";
            account.City = "Chicago";
            account.State = "IL";
            account.Zip = "60607";
            account.Degree = new Degree { Id = 2 };
            account.Concentration = new Concentration { Id = 2 };
            account.Role = AccountRole.Student;
            account.ClassHistory = null;

            return account;
        }

        public List<Account> GetAccounts()
        {
            return null;
        }

        public List<Account> GetAccountsByRole(AccountRole role)
        {
            return null;
        }
    }
}
