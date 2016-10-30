using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services
{
    public class CourseService : ICourseService
    {
        public Course GetCoursesById(Course course)
        {
            return null;
        }

        public List<Course> GetCourses()
        {
            return null;
        }

        public List<Course> GetCoursesRequiredByDegree(Degree degree)
        {
            return null;
        }

        public List<Course> GetCoursesByConcentration(Concentration concentration)
        {
            return null;
        }

        public List<Course> GetAllElectivesByConcentration(Concentration excludeConcentration)
        {
            return null;
        }
    }
}
