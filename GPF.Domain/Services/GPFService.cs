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
            List<int> toTake = new List<int>();
            List<int> missing = new List<int>();
            List<Course> temp;
            decimal hours = 0;
            //add major courses based on session
            CourseService crsServ = new CourseService();
            List<Course> majorCourses = crsServ.GetCoursesRequiredByDegree(session.Degree.Id);
            //populate course ids list from session
            List<Course> courseids = new List<Course>(session.ConcentrationCoursesSelected.Count + session.ElectiveCoursesSelected.Count + majorCourses.Count);
            courseids.AddRange(majorCourses);
            courseids.AddRange(session.ConcentrationCoursesSelected);
            courseids.AddRange(session.ElectiveCoursesSelected);
            //list of full course objects
            List<Course> courses = new List<Course>(courseids.Count);
            //Convert each course from an id to a full course object
            foreach (Course course in courseids)
            {
                courses.Add(crsServ.GetCoursesById(course.Id));
                toTake.Add(course.Id);
            }
            foreach (Course course in courses)
            {
                course.Prerequisites = crsServ.GetCoursePrereqs(course.Id);
                if (course.Prerequisites == null)
                {
                    course.Prerequisites = new List<Course>();
                }
            }
            //add any missing prereqs
            foreach (Course course in courses)
            {
                foreach (Course pre in course.Prerequisites)
                {
                    if (!toTake.Contains(pre.Id))
                    {
                        missing.Add(pre.Id);
                    }
                }
            }
            while (missing.Count > 0)
            {
                foreach (int misId in missing.ToArray())
                {
                    Course toAdd = crsServ.GetCoursesById(misId);
                    toAdd.Prerequisites = crsServ.GetCoursePrereqs(misId);
                    if (toAdd.Prerequisites == null)
                    {
                        toAdd.Prerequisites = new List<Course>();
                    }
                    courses.Add(toAdd);
                    toTake.Add(misId);
                    missing.Remove(misId);
                }
                foreach (Course course in courses)
                {
                    foreach (Course pre in course.Prerequisites)
                    {
                        if (!toTake.Contains(pre.Id))
                        {
                            missing.Add(pre.Id);
                        }
                    }
                }
            }
            //remove any duplicates
            temp = new List<Course>();
            foreach (Course course in courses)
            {
                if (!course.isContainedBy(temp)) temp.Add(course);
            }
            courses.Clear();
            courses.AddRange(temp);
            //determine number of hours being taken
            foreach (Course course in courses)
            {
                hours += course.Units;
            }
            //if less than 48 are being taken, add new concentration classes until at least 48 hours worth of classes are there
            if (hours < 48)
            {
                int count = 0;
                List<Course> extras = crsServ.GetCoursesByConcentration(session.Concentration.Id);
                foreach(Course course in extras)
                {
                    course.Prerequisites = crsServ.GetCoursePrereqs(course.Id);
                    if (course.Prerequisites == null)
                    {
                        course.Prerequisites = new List<Course>();
                    }
                }
                while (hours < 48)
                {
                    if (!extras[count].isContainedBy(courses) && extras[count].Prerequisites.Count == 0)
                    {
                        courses.Add(extras[count]);
                        toTake.Add(extras[count].Id);
                        hours += extras[count].Units;
                    }
                    count++;
                }
            }
            
            //add any missing prereqs
            foreach (Course course in courses)
            {
                foreach (Course pre in course.Prerequisites)
                {
                    if (!toTake.Contains(pre.Id))
                    {
                        missing.Add(pre.Id);
                    }
                }
            }
            while (missing.Count > 0)
            {
                foreach (int misId in missing.ToArray())
                {
                    Course toAdd = crsServ.GetCoursesById(misId);
                    toAdd.Prerequisites = crsServ.GetCoursePrereqs(misId);
                    if (toAdd.Prerequisites == null)
                    {
                        toAdd.Prerequisites = new List<Course>();
                    }
                    courses.Add(toAdd);
                    toTake.Add(misId);
                    missing.Remove(misId);
                }
                foreach (Course course in courses)
                {
                    foreach (Course pre in course.Prerequisites)
                    {
                        if (!toTake.Contains(pre.Id))
                        {
                            missing.Add(pre.Id);
                        }
                    }
                }
            }
            //remove any duplicates
            temp = new List<Course>();
            foreach (Course course in courses)
            {
                if (!course.isContainedBy(temp)) temp.Add(course);
            }
            courses.Clear();
            courses.AddRange(temp);
            //sort courses using tree
            CourseTree tree = new CourseTree(courses);
            List<Course> sortedCourses = tree.GetList();
            //get class history
            List<Course> taken = crsServ.GetCourseHistory(session.Account.Id);
            GPFSchedule schedule = new GPFSchedule(session, sortedCourses, taken);

            return schedule;
        }
    }
}