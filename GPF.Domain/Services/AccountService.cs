using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services
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
            return null;
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
