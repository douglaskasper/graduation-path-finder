using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services
{
    public class DegreeService : IDegreeService
    {
        private string DegreeSelect()
        {
            return $@"
                SELECT	deg.deg_id,
		                deg.deg_name,
		                deg.deg_title,
		                deg.deg_description
                FROM dbo.tblDegree deg
                ";
        }

        private Degree DegreeRead(SqlDataReader reader)
        {
            if (reader == null)
                return null;

            Degree degree = new Degree();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    degree.Id = (int)reader["deg_id"];

                    if (reader["deg_title"] != DBNull.Value)
                        degree.Title = reader["deg_title"].ToString().Trim();
                    if (reader["deg_description"] != DBNull.Value)
                        degree.Description = reader["deg_description"].ToString().Trim();
                }
            }

            return degree;
        }

        private List<Degree> DegreeListRead(SqlDataReader reader)
        {
            if (reader == null)
                return null;

            List<Degree> degrees = new List<Degree>();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Degree degree = new Degree();
                    degree.Id = (int)reader["deg_id"];

                    if (reader["deg_title"] != DBNull.Value)
                        degree.Title = reader["deg_title"].ToString().Trim();
                    if (reader["deg_description"] != DBNull.Value)
                        degree.Description = reader["deg_description"].ToString().Trim();

                    degrees.Add(degree);
                }
            }

            return degrees;
        }

        public Degree GetDegreeById(int degreeId)
        {
            string command =
                DegreeSelect() + $@"
                WHERE deg.deg_id = '{degreeId}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            Degree degree = DegreeRead(reader);

            if(degree != null)
                degree.Concentrations = GetConcentrationsByDegreeId(degree.Id);

            service.Close();

            return degree;
        }

        public List<Degree> GetDegrees()
        {
            string command = DegreeSelect();

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Degree> degrees = DegreeListRead(reader);

            if (degrees != null && degrees.Count > 0)
            {
                foreach (var degree in degrees)
                {
                    degree.Concentrations = GetConcentrationsByDegreeId(degree.Id);
                }
            }
            
            service.Close();

            return degrees;
        }

        public List<Concentration> GetConcentrationsByDegreeId(int degreeId)
        {
            string command;

            if(degreeId > 0)
            {
                command = $@"
                    SELECT	con.con_id,
		                    con.con_title,
		                    con.deg_id
                    FROM dbo.tblConcentration con
                    WHERE con.deg_id = '{degreeId}'
                    ";
            }
            else
            {
                command = $@"
                    SELECT	con.con_id,
		                    con.con_title,
		                    con.deg_id
                    FROM dbo.tblConcentration con
                    ";
            }

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);

            List<Concentration> concentrations = new List<Concentration>();
            
            if (reader != null && reader.HasRows)
            {
                while (reader.Read())
                {
                    Concentration concentration = new Concentration();
                    concentration.Id = (int)reader["con_id"];

                    if (reader["con_title"] != DBNull.Value)
                        concentration.Title = (string)reader["con_title"];
                    if (reader["deg_id"] != DBNull.Value)
                        concentration.DegreeId = (int)reader["deg_id"];

                    concentrations.Add(concentration);
                }
            }

            service.Close();

            return concentrations;
        }
    }
}