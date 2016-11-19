using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface ICourseService
    {
        Course GetCoursesById(int courseId);
        List<Course> GetCourses();
        List<Course> GetCoursePrereqs(int courseId);
        List<Course> GetCoursesRequiredByDegree(int degreeId);
        List<Course> GetCoursesByConcentration(int concentrationId);
        List<Course> GetAllElectivesByConcentration(int excludeConcentrationId);
        List<Course> GetCourseHistory(int accountId);
    }
}
