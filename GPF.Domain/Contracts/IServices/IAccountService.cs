using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface IAccountService
    {
        bool Register(Account account);
        bool Login(string username, string password);
        bool Update(Account account);
        bool Delete(Account account);
        Account GetAccount(int accountId);
        Account GetAccount(string username);
        List<Account> GetAccounts();
        List<Account> GetAccountsByRole(AccountRole role);
        bool AddCourseToHistory(Account account, int courseId);
        bool RemoveCourseFromHistory(Account account, int courseId);
    }
}