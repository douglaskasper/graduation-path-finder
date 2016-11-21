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
        public ClassOfferingService classService = new ClassOfferingService();
        List<Course> toAdd;
        decimal hours;

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
            int listPos = -1;
            //true when a class is successfully added
            bool classAdded = false;
            //course we're currently trying to add
            Course currentCourse;
            toAdd = courses;
            while (toAdd.Count > 0 && termCount < 20)
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

                }
                Terms.Add(currentTerm);
                currentTerm = currentTerm.nextTerm();
                loopCount = 0;
                termCount += 1;
            }
            if (hours < 48)
            {
                //more hours needed for degree, display this somewhere or add random classes
            }
        }

        public bool AddClass(Course course, AcademicTerm term)
        {
            //check for prerequisites
            foreach (Course pre in course.Prerequisites)
            {
                if (!coursesTaken.Contains(pre)) return false;
            }
            AddCourseTaken(course);
            currentTerm.ClassSchedule.Add(course);
            toAdd.Remove(course);
            return true; //if it was able to add
        }

        public void AddCourseTaken(Course course)
        {
            coursesTaken.Add(course);
        }
    }
}
