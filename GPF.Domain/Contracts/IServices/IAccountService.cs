using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface IAccountService
    {
        bool Register(Account account);
        bool Login(Account account);
        bool Update(Account account);
        bool Delete(Account account);
        Account GetAccount(Account account);
        List<Account> GetAccounts();
        List<Account> GetAccountsByRole(AccountRole role);
    }
}