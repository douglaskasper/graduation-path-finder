using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services
{
    public class GPFService : IGPFService
    {
        private string GPFSessionSelect()
        {
            return $@"
                SELECT	gpf.gpf_id,
		                gpf.acc_id,
		                gpf.deg_id,
		                gpf.con_id,
		                gpf.gpf_entering_year,
		                gpf.gpf_entering_quarter,
		                gpf.gpf_classes_per_quarter,
		                gpf.gpf_class_delivery
                FROM dbo.tblGPFSession gpf
                ";
        }

        private GPFSession GPFSessionRead(SqlDataReader reader)
        {
            if (reader == null)
                return null;

            GPFSession session = new GPFSession();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    session.Id = (int)reader["gpf_id"];
                    session.Account = new Account() { Id = (int)reader["acc_id"] };

                    if (reader["deg_id"] != DBNull.Value)
                        session.Degree = new Degree() { Id = (int)reader["deg_id"] };
                    if (reader["con_id"] != DBNull.Value)
                        session.Concentration = new Concentration() { Id = (int)reader["con_id"] };
                    if (reader["gpf_entering_year"] != DBNull.Value && reader["gpf_entering_quarter"] != DBNull.Value)
                        session.EnteringTerm = new AcademicTerm((int)reader["gpf_entering_year"], reader["gpf_entering_quarter"].ToString().Trim());
                    if (reader["gpf_classes_per_quarter"] != DBNull.Value)
                        session.ClassesPerQuarter = (int)reader["gpf_classes_per_quarter"];
                    if (reader["gpf_class_delivery"] != DBNull.Value)
                        session.ClassDeliveryOption = ClassDelivery.GetClassDelivery(reader["gpf_class_delivery"].ToString().Trim());
                }
            }

            return session;
        }

        private List<GPFSession> GPFSessionListRead(SqlDataReader reader)
        {
            if (reader == null)
                return null;

            List<GPFSession> sessions = new List<GPFSession>();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    GPFSession session = new GPFSession();
                    session.Id = (int)reader["gpf_id"];
                    session.Account = new Account() { Id = (int)reader["acc_id"] };
                    session.Degree = new Degree() { Id = (int)reader["deg_id"] };
                    session.Concentration = new Concentration() { Id = (int)reader["con_id"] };
                    session.EnteringTerm = new AcademicTerm((int)reader["gpf_entering_year"], reader["gpf_entering_quarter"].ToString().Trim());
                    session.ClassesPerQuarter = (int)reader["gpf_classes_per_quarter"];
                    session.ClassDeliveryOption = ClassDelivery.GetClassDelivery(reader["gpf_class_delivery"].ToString().Trim());

                    sessions.Add(session);
                }
            }

            return sessions;
        }

        public bool SaveSession(GPFSession session)
        {
            string command =
                $@"
                INSERT INTO dbo.tblGPFSession (
	                acc_id,
	                deg_id,
	                con_id,
	                gpf_entering_year,
	                gpf_entering_quarter,
	                gpf_classes_per_quarter,
	                gpf_class_delivery
                )
                SELECT	acc.acc_id,
		                '{session.Degree.Id}',
		                '{session.Concentration.Id}',
		                '{session.EnteringTerm.Year}',
		                '{session.EnteringTerm.Quarter.Value}',
		                '{session.ClassesPerQuarter}',
		                '{session.ClassDeliveryOption.Value}'
                FROM dbo.tblAccount acc
                WHERE acc.acc_id = '{session.Account.Id}'
                ";

            DatabaseService service = new DatabaseService();
            int rowsAffected = service.Write(command);

            service.Close();

            if (rowsAffected > 0)
                return true;
            else
                return false;
        }

        public GPFSession GetSessionById(int sessionId)
        {
            string command =
                GPFSessionSelect() + $@"
                WHERE gpf.gpf_id = '{sessionId}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            GPFSession session = GPFSessionRead(reader);

            service.Close();

            return session;
        }

        public List<GPFSession> GetSessions()
        {
            string command = GPFSessionSelect();

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<GPFSession> sessions = GPFSessionListRead(reader);

            service.Close();

            return sessions;
        }

        public List<GPFSession> GetSessionsByAccountId(int accountId)
        {
            string command =
                GPFSessionSelect() + $@"
                WHERE gpf.acc_id = '{accountId}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<GPFSession> sessions = GPFSessionListRead(reader);

            service.Close();

            return sessions;
        }

        public GPFSchedule GetSessionSchedule(GPFSession session)
        {
            // Entry point to algorithm that returns path to graduation.
            return null;
        }
    }
}