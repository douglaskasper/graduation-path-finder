using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services
{
    public class CourseService : ICourseService
    {
        private string CourseSelect()
        {
            return $@"
                SELECT	crs.crs_id,
		                crs.crs_department_code,
		                crs.crs_number,
		                crs.crs_title,
		                crs.crs_description,
		                crs.crs_units,
		                crs.crs_active
                FROM dbo.tblCourse crs
                ";
        }

        private Course CourseRead(SqlDataReader reader)
        {
            if (reader == null)
                return null;

            Course course = new Course();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    course.Id = (int)reader["crs_id"];

                    if (reader["crs_department_code"] != DBNull.Value)
                        course.Department = reader["crs_department_code"].ToString().Trim();
                    if (reader["crs_number"] != DBNull.Value)
                        course.Number = (int)reader["crs_number"];
                    if (reader["crs_title"] != DBNull.Value)
                        course.Title = reader["crs_title"].ToString().Trim();
                    if (reader["crs_description"] != DBNull.Value)
                        course.Description = reader["crs_description"].ToString().Trim();
                    if (reader["crs_units"] != DBNull.Value)
                        course.Units = (decimal)reader["crs_units"];
                    if (reader["crs_active"] != DBNull.Value)
                        course.Active = (reader["crs_active"].ToString().Trim() == "Y" ? true : false);
                }
            }

            return course;
        }

        private List<Course> CourseListRead(SqlDataReader reader)
        {
            if (reader == null)
                return null;

            List<Course> courses = new List<Course>();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Course course = new Course();
                    course.Id = (int)reader["crs_id"];

                    if (reader["crs_department_code"] != DBNull.Value)
                        course.Department = reader["crs_department_code"].ToString().Trim();
                    if (reader["crs_number"] != DBNull.Value)
                        course.Number = (int)reader["crs_number"];
                    if (reader["crs_title"] != DBNull.Value)
                        course.Title = reader["crs_title"].ToString().Trim();
                    if (reader["crs_description"] != DBNull.Value)
                        course.Description = reader["crs_description"].ToString().Trim();
                    if (reader["crs_units"] != DBNull.Value)
                        course.Units = (decimal)reader["crs_units"];
                    if (reader["crs_active"] != DBNull.Value)
                        course.Active = (reader["crs_active"].ToString().Trim() == "Y" ? true : false);

                    courses.Add(course);
                }
            }

            return courses;
        }

        public Course GetCoursesById(int courseId)
        {
            string command =
                CourseSelect() + $@"
                WHERE crs.crs_id = '{courseId}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            Course course = CourseRead(reader);

            service.Close();

            return course;
        }

        public List<Course> GetCourses()
        {
            string command = CourseSelect();

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Course> courses = CourseListRead(reader);

            service.Close();

            return courses;
        }

        public List<Course> GetCoursePrereqs(int courseId)
        {
            string command;

            if (courseId > 0)
            {
                command =
                    CourseSelect() + $@"
                    INNER JOIN dbo.tblCoursePrerequisite prq ON crs.crs_id = prq.crs_id
                    WHERE crs.crs_id = '{courseId}'
                    ";
            }
            else
            {
                command =
                    CourseSelect() + $@"
                    INNER JOIN dbo.tblCoursePrerequisite prq ON crs.crs_id = prq.crs_id
                    ";
            }

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Course> courses = CourseListRead(reader);

            service.Close();

            return courses;
        }

        public List<Course> GetCoursesRequiredByDegree(int degreeId)
        {
            string command;

            if (degreeId > 0)
            {
                command =
                    CourseSelect() + $@"
                    INNER JOIN dbo.tblDegreeRequirement drq ON crs.crs_id = drq.deg_id
                    WHERE drq.deg_id = '{degreeId}'
                    ";
            }
            else
            {
                command =
                    CourseSelect() + $@"
                    INNER JOIN dbo.tblDegreeRequirement drq ON crs.crs_id = drq.deg_id
                    ";
            }

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Course> courses = CourseListRead(reader);

            service.Close();

            return courses;
        }

        public List<Course> GetCoursesByConcentration(int concentrationId)
        {
            string command;

            if (concentrationId > 0)
            {
                command =
                    CourseSelect() + $@"
                    INNER JOIN dbo.tblConcentrationCourse ctc ON crs.crs_id = ctc.con_id
                    WHERE ctc.con_id = '{concentrationId}'
                    ";
            }
            else
            {
                command =
                    CourseSelect() + $@"
                    INNER JOIN dbo.tblConcentrationCourse ctc ON crs.crs_id = ctc.con_id
                    ";
            }

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Course> courses = CourseListRead(reader);

            service.Close();

            return courses;
        }

        public List<Course> GetAllElectivesByConcentration(int excludeConcentrationId)
        {
            string command =
                CourseSelect() + $@"
                INNER JOIN dbo.tblConcentrationCourse ctc ON crs.crs_id = ctc.con_id
                WHERE ctc.con_id = '{excludeConcentrationId}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Course> courses = CourseListRead(reader);

            service.Close();

            return courses;
        }

        public List<Course> GetCourseHistory(int accountId)
        {
            string command =
                CourseSelect() + $@"
                INNER JOIN dbo.tblCourseHistory coh ON crs.crs_id = coh.crs_id
                WHERE coh.acc_id = '{accountId}'
                ";

            DatabaseService service = new DatabaseService();
            SqlDataReader reader = service.Read(command);
            List<Course> courses = CourseListRead(reader);

            service.Close();

            return courses;
        }
    }
}
