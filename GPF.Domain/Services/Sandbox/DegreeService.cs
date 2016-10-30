using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services.Sandbox
{
    public class DegreeService : IDegreeService
    {
        public Degree GetDegreeById(Degree degree)
        {
            if (degree.Id == 1)
            {
                degree = new Degree();
                degree.Id = 1;
                degree.Title = "Computer Science";
                degree.College = "CDM";
                degree.Description = "This is a description of the Computer Science degree.";
                degree.RequiredCourses = new List<Course>() {
                    new Course { Id = 1 },
                    new Course { Id = 2 }
                };
                degree.Concentrations = new List<Concentration>();
                degree.Concentrations.Add(new Concentration
                {
                    Id = 1,
                    Title = "Software and Systems Development",
                    Courses = new List<Course>
                    {
                        new Course { Id = 3 },
                        new Course { Id = 4 }
                    }
                });
                degree.Concentrations.Add(new Concentration
                {
                    Id = 2,
                    Title = "Theory",
                    Courses = new List<Course>
                    {
                        new Course { Id = 3 },
                        new Course { Id = 4 }
                    }
                });
                degree.Concentrations.Add(new Concentration
                {
                    Id = 3,
                    Title = "Systems",
                    Courses = new List<Course>
                    {
                        new Course { Id = 3 },
                        new Course { Id = 4 }
                    }
                });
            }
            else
            {
                degree = new Degree();
                degree.Id = 2;
                degree.Title = "Information Systems";
                degree.College = "CDM";
                degree.Description = "This is a description of the Information Systems degree.";
                degree.RequiredCourses = new List<Course>() {
                    new Course { Id = 1 },
                    new Course { Id = 2 }
                };
                degree.Concentrations = new List<Concentration>();
                degree.Concentrations.Add(new Concentration
                    {
                        Id = 1,
                        Title = "Theory",
                        Courses = new List<Course>
                        {
                            new Course { Id = 3 },
                            new Course { Id = 4 }
                        }
                });
            }

            return degree;
        }

        public List<Degree> GetDegrees()
        {
            List<Degree> degrees = new List<Degree>();

            Degree degree = new Degree();
            degree.Id = 1;
            degree.Title = "Computer Science";
            degree.College = "CDM";
            degree.Description = "This is a description of the Computer Science degree.";
            degree.RequiredCourses = new List<Course>() {
                new Course { Id = 1 },
                new Course { Id = 2 }
            };
            degree.Concentrations = new List<Concentration>();
            degree.Concentrations.Add(new Concentration
            {
                Id = 1,
                Title = "Software and Systems Development",
                Courses = new List<Course>
                {
                    new Course { Id = 3 },
                    new Course { Id = 4 }
                }
            });

            degrees.Add(degree);

            degree = new Degree();
            degree.Id = 2;
            degree.Title = "Information Systems";
            degree.College = "CDM";
            degree.Description = "This is a description of the Information Systems degree.";
            degree.RequiredCourses = new List<Course>() {
                new Course { Id = 1 },
                new Course { Id = 2 }
            };
            degree.Concentrations = new List<Concentration>();
            degree.Concentrations.Add(new Concentration
            {
                Id = 1,
                Title = "Theory",
                Courses = new List<Course>
                {
                    new Course { Id = 3 },
                    new Course { Id = 4 }
                }
            });

            degrees.Add(degree);

            return degrees;
        }

        public List<Degree> GetDegreesByCollege(Degree degree)
        {
            return null;
        }
    }
}