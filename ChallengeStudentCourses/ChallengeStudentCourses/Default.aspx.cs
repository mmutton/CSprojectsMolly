using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeStudentCourses
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
    //initializing the resul label to empty makes it so the results display only the current button clicked.

        {
            resultLabel.Text = "";   
        }

    //Created three courses and six students using Object and Collection Initializers.

        protected void assignment1Button_Click(object sender, EventArgs e)
        {
            List<Course> courses = new List<Course>() {
                new Course() { CourseId = 1, Name= "Music 400", Professor = "Angus Young", Students=new List<Student>() {
                    new Student() { StudentId = 1, Name = "Tom Smith" },
                    new Student() {StudentId = 2, Name = "Suzie Queue" }}},
                new Course() { CourseId = 2, Name = "Chemistry 210", Professor = "Eddie VanHalen", Students=new List<Student>() {
                    new Student() { StudentId = 3, Name = "Peggy Sue" },
                    new Student() { StudentId = 4, Name = "Jim Stone" }}},
                new Course() { CourseId = 3, Name = "Art History", Professor = "Pablo Picasso", Students=new List<Student>() {
                    new Student() { StudentId = 5, Name = "Joan Jones" },
                    new Student() { StudentId = 6, Name = "Kim Chee" }}}
                };
            foreach (var course in courses)
            {
                resultLabel.Text += String.Format("<br><h3>Course - {0}:  {1}</h3>", 
                    course.CourseId, course.Name);
                resultLabel.Text += String.Format("Professor: {0}<br> ", course.Professor);

                foreach (var student in course.Students)
                { 
                    resultLabel.Text += String.Format("&nbsp;&nbsp;Student - {0}: {1}<br>",
                         student.StudentId, student.Name);
                }
            }
        }

    //Createa Dictionary of three Students and used object and collection initializers.      

        protected void assignment2Button_Click(object sender, EventArgs e)
        {
            Course course1 = new Course() { CourseId = 1, Name = "Potions 101" };
            Course course2 = new Course() { CourseId = 2, Name = "Physics for Wands" };
            Course course3 = new Course() { CourseId = 3, Name = "Ethics" };

            Dictionary<int, Student> students = new Dictionary<int, Student>()
            {
                { 1, new Student { StudentId = 1, Name = "Harry Potter", Courses = new List<Course> { course1, course2 }}},
                { 2, new Student { StudentId = 2, Name = "Hermione Granger", Courses = new List<Course> { course2, course3 }}},
                { 3, new Student { StudentId = 3, Name = "Ron Weasley", Courses = new List<Course> { course3, course1 }}}

        };
            foreach (var student in students)
            {
                resultLabel.Text += String.Format("<br><br>Student - {0}: {1}", student.Value.StudentId, student.Value.Name);
                foreach (var course in student.Value.Courses)
                {
                    resultLabel.Text += String.Format("<br>&nbsp;&nbsp;Course - {0}: {1}", course.CourseId, course.Name);
                }
            }
        }

        // Added enrollment class, modified student class and gave grades to student.

        protected void assignment3Button_Click(object sender, EventArgs e)
        {
             Student student = new Student();
             student.StudentId = 7; 
             student.Name = "Jill Hill";
             student.Enrollments = new List<Enrollment>()

             {
                new Enrollment { Grade = 88, Course = new Course { CourseId = 1, Name = "Philosophy 101"}},
                new Enrollment { Grade = 100, Course = new Course { CourseId = 2, Name = "Phys Ed"}}
             };

             resultLabel.Text += String.Format("<br>Student - {0}:  {1}", student.StudentId, student.Name);
             foreach (var enrollment in student.Enrollments)
             {
                resultLabel.Text += String.Format("<br>Enrolled In: {0} - Grade: {1}", enrollment.Course.Name, enrollment.Grade);
             }
        }
      }
    }
