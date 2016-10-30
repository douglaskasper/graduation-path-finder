using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services.Sandbox
{
    public class GPFService : IGPFService
    {
        public bool SaveSession(GPFSession session)
        {
            return true;
        }

        public GPFSession GetSessionById(GPFSession session)
        {
            return null;
        }

        public List<GPFSession> GetSessions()
        {
            return null;
        }

        public List<GPFSession> GetSessionsByAccountId(Account account)
        {
            return null;
        }

        public GPFSchedule GetSessionSchedule(GPFSession session)
        {
            GPFSchedule schedule = new GPFSchedule();

            ClassOffering classToSchedule = new ClassOffering();
            classToSchedule.Id = 219849;
            classToSchedule.Course = new Course { Number = 394, Department = "CSC" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2016, Quarter = Quarter.Fall };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);
            classToSchedule = new ClassOffering();
            classToSchedule.Id = 219849;
            classToSchedule.Course = new Course { Number = 322, Department = "IS" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2016, Quarter = Quarter.Fall };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);
            classToSchedule = new ClassOffering();
            classToSchedule.Id = 219849;
            classToSchedule.Course = new Course { Number = 456, Department = "CSC" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2016, Quarter = Quarter.Fall };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);
            classToSchedule = new ClassOffering();
            classToSchedule.Id = 548655;

            classToSchedule.Course = new Course { Number = 103, Department = "ENG" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2016, Quarter = Quarter.Winter };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);
            classToSchedule = new ClassOffering();
            classToSchedule.Id = 548655;
            classToSchedule.Course = new Course { Number = 103, Department = "ENG" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2016, Quarter = Quarter.Winter };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);

            classToSchedule = new ClassOffering();
            classToSchedule.Id = 548655;
            classToSchedule.Course = new Course { Number = 103, Department = "ENG" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2017, Quarter = Quarter.Spring };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);
            classToSchedule = new ClassOffering();
            classToSchedule.Id = 548655;
            classToSchedule.Course = new Course { Number = 103, Department = "ENG" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2017, Quarter = Quarter.Spring };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);
            classToSchedule = new ClassOffering();
            classToSchedule.Id = 548655;
            classToSchedule.Course = new Course { Number = 103, Department = "ENG" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2017, Quarter = Quarter.Spring };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);
            classToSchedule = new ClassOffering();
            classToSchedule.Id = 548655;
            classToSchedule.Course = new Course { Number = 103, Department = "ENG" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2017, Quarter = Quarter.Spring };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);

            classToSchedule = new ClassOffering();
            classToSchedule.Id = 548655;
            classToSchedule.Course = new Course { Number = 103, Department = "ENG" };
            classToSchedule.AcademicTerm = new AcademicTerm { Year = 2017, Quarter = Quarter.SummerII };
            if (schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)) == null)
                schedule.Terms.Add(new AcademicTerm(classToSchedule.AcademicTerm.Year, classToSchedule.AcademicTerm.Quarter.Value));
            schedule.Terms.Find(x => x.Equals(classToSchedule.AcademicTerm)).ClassSchedule.Add(classToSchedule);

            return schedule;
        }
    }
}