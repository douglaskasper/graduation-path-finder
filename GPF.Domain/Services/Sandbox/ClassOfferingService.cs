using System;
using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services.Sandbox
{
    public class ClassOfferingService : IClassOfferingService
    {
        public ClassOffering GetClassById(ClassOffering classOffering)
        {
            return null;
        }

        public List<ClassOffering> GetClasses()
        {
            return null;
        }

        public List<ClassOffering> GetClassHistory(Account account)
        {
            List<ClassOffering> classes = new List<ClassOffering>();

            ClassOffering offering = new ClassOffering();
            offering.Id = 219849;
            offering.Course = new Course { Number = 394, Department = "CSC" };
            offering.AcademicTerm = new AcademicTerm { Year = 2014, Quarter = Quarter.Spring };
            classes.Add(offering);

            offering = new ClassOffering();
            offering.Id = 548655;
            offering.Course = new Course { Number = 103, Department = "ENG" };
            offering.AcademicTerm = new AcademicTerm { Year = 2015, Quarter = Quarter.Winter };
            classes.Add(offering);

            return classes;
        }

        public List<ClassOffering> GetClassesOfferedAfterDate(DateTime date)
        {
            return null;
        }

        public List<ClassOffering> GetClassesByDeliveryOption(ClassDelivery option)
        {
            return null;
        }
    }
}