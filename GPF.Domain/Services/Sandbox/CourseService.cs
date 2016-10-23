using System;
using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services.Sandbox
{
    public class CourseService : ICourseService
    {
        public Course GetCoursesById(Course course)
        {
            return null;
        }

        public List<Course> GetCourses()
        {
            List<Course> courses = new List<Course>();

            Course course = new Course();
            course.Id = 83334;
            course.Number = 394;
            course.Department = "CSC";
            course.Title = "Capstone: Software Projects";
            course.Description = "Design and build a software project";
            course.Units = Convert.ToDecimal(4.00);
            course.Active = true;
            course.Prerequisites = new List<Course>
            {
                new Course { Id = 1 },
                new Course { Id = 2 }
            };

            courses.Add(course);

            course = new Course();
            course.Id = 78465;
            course.Number = 421;
            course.Department = "IS";
            course.Title = "Systems Analysis";
            course.Description = "Traditional and object oriented systems analysis, with an emphasis upon developing competency in a wide range of modeling techniques.";
            course.Units = Convert.ToDecimal(4.00);
            course.Active = true;
            course.Prerequisites = new List<Course>
            {
                new Course { Id = 3 },
                new Course { Id = 4 }
            };

            courses.Add(course);

            return courses;
        }

        public List<Course> GetCoursesByDegree(Degree degree)
        {
            return null;
        }

        public List<Course> GetCoursesByConcentration(Concentration concentration)
        {
            return null;
        }
    }
}
