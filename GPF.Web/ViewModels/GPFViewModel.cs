using System.Collections.Generic;
using System.Web.Mvc;
using GPF.Domain.Models;

namespace GPF.Web.ViewModels
{
    public class GPFViewModel
    {
        public Account Account { get; set; }
        public GPFSession GPFSession { get; set; }
        public GPFSchedule GPFSchedule { get; set; }

        public bool Impersonating { get; set; }
        public List<Degree> AvailableDegrees;
        public List<Course> AvailableConcentrationCourses;
        public List<Course> AvailableElectiveCourses;
        public List<int> ConcentrationCoursesSelected { get; set; }
        public List<int> ElectiveCoursesSelected { get; set; }

        public int EnteringYear { get; set; }
        public string EnteringQuarter { get; set; }
        public int ClassesPerQuarter { get; set; }
        public string ClassDeliveryOption { get; set; }

        public SelectList EnteringYearList;
        public SelectList EnteringQuarterList;
        public SelectList ClassesPerQuarterList;
        public SelectList ClassDeliveryOptionList;

        public GPFViewModel()
        {
            EnteringYearList = new SelectList(
                new List<SelectListItem>
                {
                    new SelectListItem {Selected = true, Text = "2016", Value = "2016"},
                    new SelectListItem {Selected = false, Text = "2017", Value = "2017"},
                    new SelectListItem {Selected = false, Text = "2018", Value = "2018"},
                    new SelectListItem {Selected = false, Text = "2019", Value = "2019"},
                    new SelectListItem {Selected = false, Text = "2020", Value = "2020"}
                }, "Value", "Text");
            EnteringQuarterList = new SelectList(
                new List<SelectListItem>
                {
                    new SelectListItem {Selected = true, Text = "Fall", Value = "Fall"},
                    new SelectListItem {Selected = false, Text = "Winter", Value = "Winter"},
                    new SelectListItem {Selected = false, Text = "Spring", Value = "Spring"},
                    new SelectListItem {Selected = false, Text = "SummerI", Value = "SummerI"},
                    new SelectListItem {Selected = false, Text = "SummerII", Value = "SummerII"},
                    new SelectListItem {Selected = false, Text = "Summer10Week", Value = "Summer10Week"},
                    new SelectListItem {Selected = false, Text = "DecIntersession", Value = "DecIntersession"}
                }, "Value", "Text");
            ClassesPerQuarterList = new SelectList(
                new List<SelectListItem>
                {
                    new SelectListItem {Selected = true, Text = "1", Value = "1"},
                    new SelectListItem {Selected = false, Text = "2", Value = "2"},
                    new SelectListItem {Selected = false, Text = "3", Value = "3"},
                    new SelectListItem {Selected = false, Text = "4", Value = "4"},
                    new SelectListItem {Selected = false, Text = "5", Value = "5"},
                    new SelectListItem {Selected = false, Text = "6", Value = "6"}
                }, "Value", "Text");
            ClassDeliveryOptionList = new SelectList(
                new List<SelectListItem>
                {
                    new SelectListItem {Selected = true, Text = "In Class And Online", Value = "CO"},
                    new SelectListItem {Selected = false, Text = "In Class", Value = "C"},
                    new SelectListItem {Selected = false, Text = "Online", Value = "O"}
                }, "Value", "Text");
        }
    }
}
