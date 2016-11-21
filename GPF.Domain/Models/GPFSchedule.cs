using System.Collections.Generic;
using GPF.Domain.Services;

namespace GPF.Domain.Models
{
    public class GPFSchedule
    {
        public List<AcademicTerm> Terms { get; set; }
        public AcademicTerm currentTerm;
        //List of courses already added, to check for prereqs of future courses
        public List<Course> coursesTaken;
        public CourseService cServ = new CourseService();
        List<Course> toAdd;
        decimal hours = 0;

        public GPFSchedule(GPFSession session, List<Course> courses, List<Course> taken)
        {
            coursesTaken = new List<Course>();

            //get courses and hours already taken
            foreach (Course course in taken)
            {
                coursesTaken.Add(course);
                hours += course.Units;
            }
            Terms = new List<AcademicTerm>();
            //create entering term
            currentTerm = session.EnteringTerm;
            //count variables to prevent infinite loops when classes cannot be placed
            int loopCount = 0;
            int termCount = 1;
            //variable to track position in toAdd
            int listPos = 0;
            //true when a class is successfully added
            bool classAdded = false;
            //course we're currently trying to add
            Course currentCourse;
            toAdd = courses;
            while (toAdd.Count > 0)
            {
                for (int i = 0; i < session.ClassesPerQuarter; i++)
                {
                    classAdded = false;
                    while (!classAdded && loopCount < 20)
                    {
                        listPos += 1;
                        if (listPos >= toAdd.Count)
                        {
                            listPos = 0;
                            loopCount += 1;
                        }
                        currentCourse = toAdd[listPos];
                        classAdded = AddClass(currentCourse, currentTerm);
                    }
                    if (toAdd.Count == 0) break;
                }
                Terms.Add(currentTerm);
                foreach (Course c in currentTerm.ClassSchedule)
                {
                    AddCourseTaken(c);
                }
                currentTerm = currentTerm.nextTerm();
                loopCount = 0;
                termCount += 1;
                
            }
        }

        public bool AddClass(Course course, AcademicTerm term)
        {
            //check for prerequisites
            foreach (Course pre in course.Prerequisites)
            {
                if (!isCourseTaken(pre)) return false;
            }
            currentTerm.ClassSchedule.Add(course);
            toAdd.Remove(course);
            return true; //if it was able to add
        }

        public void AddCourseTaken(Course course)
        {
            coursesTaken.Add(course);
        }

        public bool isCourseTaken(Course other)
        {
            foreach (Course course in coursesTaken)
            {
                if (course.Id == other.Id)
                    return true;
            }
            return false;
        }
    }
}
