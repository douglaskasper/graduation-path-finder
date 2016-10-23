using System;
using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface IClassOfferingService
    {
        ClassOffering GetClassById(ClassOffering classOffering);
        List<ClassOffering> GetClasses();
        List<ClassOffering> GetClassesOfferedAfterDate(DateTime date);
        List<ClassOffering> GetClassesByDeliveryOption(ClassDelivery option);
    }
}