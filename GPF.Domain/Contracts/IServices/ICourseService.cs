using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface ICourseService
    {
        Course GetCoursesById(Course course);
        List<Course> GetCourses();
        List<Course> GetCoursesRequiredByDegree(Degree degree);
        List<Course> GetCoursesByConcentration(Concentration concentration);
        List<Course> GetAllElectivesByConcentration(Concentration excludeConcentration);
    }
}
