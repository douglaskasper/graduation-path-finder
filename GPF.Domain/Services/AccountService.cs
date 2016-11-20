using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services
{
    public class AccountService : IAccountService
    {
        private string AccountSelect()
        {
            return $@"
                SELECT	acc.acc_id,
		                acc.acc_username,
		                acc.acc_password,
		                acc.acc_first_name,
		                acc.acc_last_name,
		                acc.acc_street,
		                acc.acc_city,
		                acc.acc_state,
		                acc.acc_zip,
		                acc.acc_phone,
		                acc.acc_role,
		                acc.deg_id,
		                acc.con_id
                FROM dbo.tblAccount acc
                ";
        }

        private Account AccountRead(SqlDataReader reader)
        {
            if (reader == null)
                return null;

            Account account = new Account();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    account.Id = (int)reader["acc_id"];
                    account.Username = reader["acc_username"].ToString().Trim();
                    account.Password = reader["acc_password"].ToString().Trim();

                    if (reader["acc_first_name"] != DBNull.Value)
                        account.FirstName = reader["acc_first_name"].ToString().Trim();
                    if (reader["acc_last_name"] != DBNull.Value)
                        account.LastName = reader["acc_last_name"].ToString().Trim();
                    if (reader["acc_street"] != DBNull.Value)
                        account.Street = reader["acc_street"].ToString().Trim();
                    if (reader["acc_city"] != DBNull.Value)
                        account.City = reader["acc_city"].ToString().Trim();
                    if (reader["acc_state"] != DBNull.Value)
                        account.State = reader["acc_state"].ToString().Trim();
                    if (reader["acc_zip"] != DBNull.Value)
                        account.Zip = reader["acc_zip"].ToString().Trim();
                    if (reader["acc_phone"] != DBNull.Value)
                        account.Phone = reader["acc_phone"].ToString().Trim();
                    if (reader["acc_role"] != DBNull.Value)
                        account.Role = AccountRole.GetRole(reader["acc_role"].ToString().Trim());
                    if (reader["deg_id"] != DBNull.Value)
                        account.Degree = new Degree() { Id = (int)reader["deg_id"] };
                    if (reader["con_id"] != DBNull.Value)
                        account.Concentration = new Concentration() { Id = (int)reader["con_id"] };
                }
            }

            return account;
        }

        private List<Account> AccountListRead(SqlDataReader reader)
        {
            if (reader == null)
                return null;

            List<Account> accounts = new List<Account>();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Account account = new Account();
                    account.Id = (int)reader["acc_id"];
                    account.Username = reader["acc_username"].ToString().Trim();
                    account.Password = reader["acc_password"].ToString().Trim();

                    if (reader["acc_first_name"] != DBNull.Value)
                        account.FirstName = reader["acc_first_name"].ToString().Trim();
                    if (reader["acc_last_name"] != DBNull.Value)
                        account.LastName = reader["acc_last_name"].ToString().Trim();
                    if (reader["acc_street"] != DBNull.Value)
                        account.Street = reader["acc_street"].ToString().Trim();
                    if (reader["acc_city"] != DBNull.Value)
                        account.City = reader["acc_city"].ToString().Trim();
                    if (reader["acc_state"] != DBNull.Value)
                        account.State = reader["acc_state"].ToString().Trim();
                    if (reader["acc_zip"] != DBNull.Value)
                        account.Zip = reader["acc_zip"].ToString().Trim();
                    if (reader["acc_phone"] != DBNull.Value)
                        account.Phone = reader["acc_phone"].ToString().Trim();
                    if (reader["acc_role"] != DBNull.Value)
                        account.Role = AccountRole.GetRole(reader["acc_role"].ToString().Trim());
                    if (reader["deg_id"] != DBNull.Value)
                        account.Degree = new Degree() { Id = (int)reader["deg_id"] };
                    if (reader["con_id"] != DBNull.Value)
                        account.Concentration = new Concentration() { Id = (int)reader["con_id"] };

                    accounts.Add(account);
                }
            }

            return accounts;
        }

        public bool Register(Account account)
        {
            if (account == null || string.IsNullOrWhiteSpace(account.Username) || string.IsNullOrWhiteSpace(account.Password))
                return false;

            string command =
                $@"
                INSERT INTO dbo.tblAccount (
	                acc_username,
	                acc_password,
	                acc_first_name,
	                acc_last_name
                )
                SELECT
	                '{account.Username}',
	                '{account.Password}',
	                '{account.FirstName}',
	                '{account.LastName}'
                ";

            /** Fields can be updated from profile after registering.
            acc_street,
	        acc_city,
	        acc_state,
	        acc_zip,
	        acc_phone,
	        acc_role,
	        deg_id,
	        con_id
            '{account.Street}',
	        '{account.City}',
	        '{account.State}',
	        '{account.Zip}',
	        '{account.Phone}',
	        '{account.Role}',
	        '{account.Degree.Id}',
	        '{account.Concentration.Id}'
            */

            DatabaseService service = new DatabaseService();
            int rowsAffected = service.Write(command);

            service.Close();

            if (rowsAffected > 0)
                return true;
            else
                return false;
        }

        public bool Login(string username, string password)
        {
            string command =
                AccountSelect() + $@"
                WHERE acc.acc_username = '{username}'
                AND acc.acc_password = '{password}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            Account account = AccountRead(reader);

            service.Close();

            if (account != null && account.Id > 0)
                return true;
            else
                return false;
        }

        public bool Update(Account account)
        {
            if (account == null)
                return false;

            string command = $@"
                UPDATE acc SET ";
            if(!String.IsNullOrWhiteSpace(account.FirstName))
                command += $" acc.acc_first_name = '{account.FirstName}',";
            if (!String.IsNullOrWhiteSpace(account.LastName))
                command += $" acc.acc_last_name = '{account.LastName}',";
            if (!String.IsNullOrWhiteSpace(account.Street))
                command += $" acc.acc_street = '{account.Street}',";
            if (!String.IsNullOrWhiteSpace(account.City))
                command += $" acc.acc_city = '{account.City}',";
            if (!String.IsNullOrWhiteSpace(account.State))
                command += $" acc.acc_state = '{account.State}',";
            if (!String.IsNullOrWhiteSpace(account.Zip))
                command += $" acc.acc_zip = '{account.Zip}',";
            if (account.Role != null)
                command += $" acc.acc_role = '{account.Role.Value}',";
            if (account.Degree != null)
                command += $" acc.deg_id = '{account.Degree.Id}',";
            if (account.Concentration != null)
                command += $" acc.con_id = '{account.Concentration.Id}'";
            command += $@"
                FROM dbo.tblAccount acc
                WHERE acc.acc_id = '{account.Id}'
                ";

            /**
                acc.acc_phone = '{account.Phone}',
	            acc.acc_role = '{account.Role.Value}',
            */

            DatabaseService service = new DatabaseService();
            int rowsAffected = service.Write(command);

            service.Close();

            if (rowsAffected > 0)
                return true;
            else
                return false;
        }

        public bool Delete(Account account)
        {
            string command =
                $@"
                DELETE gpf
                FROM dbo.tblGPFSession gpf
                WHERE gpf.acc_id = '{account.Id}'
                
                DELETE coh
                FROM dbo.tblCourseHistory coh
                WHERE coh.acc_id = '{account.Id}'
                
                DELETE acc
                FROM dbo.tblAccount acc
                WHERE acc.acc_id = '{account.Id}'
                ";

            DatabaseService service = new DatabaseService();
            int rowsAffected = service.Write(command);

            service.Close();

            if (rowsAffected > 0)
                return true;
            else
                return false;
        }

        public Account GetAccount(int accountId)
        {
            string command =
                AccountSelect() + $@"
                WHERE acc.acc_id = '{accountId}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            Account account = AccountRead(reader);

            service.Close();

            return account;
        }

        public Account GetAccount(string username)
        {
            string command =
                AccountSelect() + $@"
                WHERE acc.acc_username = '{username}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            Account account = AccountRead(reader);

            service.Close();

            return account;
        }

        public List<Account> GetAccounts()
        {
            string command = AccountSelect();

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Account> accounts = AccountListRead(reader);

            service.Close();

            return accounts;
        }

        public List<Account> GetAccountsByRole(AccountRole role)
        {
            string command =
                AccountSelect() + $@"
                WHERE acc.acc_role = '{role.Value}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Account> accounts = AccountListRead(reader);

            service.Close();

            return accounts;
        }

        public bool AddCourseToHistory(Account account, int courseId)
        {
            string command =
                $@"
                INSERT INTO dbo.tblCourseHistory (
	                acc_id,
	                crs_id
                )
                SELECT	acc.acc_id,
		                '{courseId}'
                FROM dbo.tblAccount acc
                WHERE acc.acc_id = '{account.Id}'
                ";

            DatabaseService service = new DatabaseService();
            int rowsAffected = service.Write(command);

            service.Close();

            if (rowsAffected > 0)
                return true;
            else
                return false;
        }

        public bool RemoveCourseFromHistory(Account account, int courseId)
        {
            string command =
                $@"
                DELETE coh
                FROM dbo.tblCourseHistory coh
                WHERE coh.acc_id = '{account.Id}'
                AND coh.crs_id = '{courseId}'
                ";

            DatabaseService service = new DatabaseService();
            int rowsAffected = service.Write(command);

            service.Close();

            if (rowsAffected > 0)
                return true;
            else
                return false;
        }
    }
}
