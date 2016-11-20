using System;
using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services
{
    public class ClassOfferingService : IClassOfferingService
    {
        /**
            Deprecated.
        */
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
            return null;
        }

        public List<ClassOffering> GetClassesOfferedAfterDate(DateTime date)
        {
            return null;
        }

        public List<ClassOffering> GetClassesByDeliveryOption(ClassDelivery option)
        {
            return null;
        }

        public ClassOffering GetClassInTerm(Course course, AcademicTerm term)
        {
            return null;
        }
    }
}