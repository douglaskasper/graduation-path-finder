using System;
using System.Data.SqlClient;

namespace GPF.Domain.Services
{
    public class DatabaseService
    {
        const string DATABASE_CONNECTION_STRING = @"server=sql2014.c5efoimnnlkb.us-east-2.rds.amazonaws.com;
                                                    database=gpfdatabase;
                                                    Integrated Security = false;
                                                    user id =admin;
                                                    pwd=password;
                                                    Encrypt=true;
                                                    TrustServerCertificate=true;
                                                    Application Name = GPF Website;
                                                    Persist Security Info=false;
                                                    Connection Timeout = 180";

        SqlConnection _sqlConnection;

        public DatabaseService()
        {
        }

        private SqlConnection Open()
        {
            try
            {
                _sqlConnection = new SqlConnection(DATABASE_CONNECTION_STRING);
                _sqlConnection.Open();
                return _sqlConnection;
            }
            catch (Exception e)
            {
                string errorMessage = e.Message;
                return null;
            }
        }

        public void Close()
        {
            try
            {
                _sqlConnection.Close();
            }
            catch (Exception e)
            {
                string errorMessage = e.Message;
            }
        }

        public SqlDataReader Read(string command)
        {
            try
            {
                SqlConnection sqlConnection = Open();

                SqlDataReader sqlReader = null;
                SqlCommand sqlCommand = new SqlCommand(command, sqlConnection);

                sqlReader = sqlCommand.ExecuteReader();

                return sqlReader;
            }
            catch (Exception e)
            {
                string errorMessage = e.Message;
                return null;
            }
        }

        public int Write(string command)
        {
            try
            {
                SqlConnection sqlConnection = Open();

                SqlCommand sqlCommand = new SqlCommand(command, sqlConnection);

                int rowsAffected = sqlCommand.ExecuteNonQuery();

                return rowsAffected;
            }
            catch (Exception e)
            {
                string errorMessage = e.Message;
                return 0;
            }
        }


    }
}
