using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeEpicSpiesAssignment
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Setting the postBack initiation and calendar day selection 

            if (!Page.IsPostBack)
            {
                oldCalendar.SelectedDate = DateTime.Now.Date;
                newCalendar.SelectedDate = DateTime.Now.AddDays(14);
                futureCalendar.SelectedDate = DateTime.Now.Date.AddDays(21);
            }
        }

        protected void AssignButton_Click(object sender, EventArgs e)
        {
            //cost of spy per day is $500

            TimeSpan assignmentLength = oldCalendar.SelectedDate
                .Subtract(newCalendar.SelectedDate);
            double totalCost = assignmentLength.TotalDays * 500.0;


            // If longer than 3 weeks (21 days), add $1000

            if (assignmentLength.TotalDays > 21)
            {
                totalCost += 1000.0;
            }

            resultLabel.Text = String.Format("Assignment of {0} to assignment {1} is authorized.  " +
                "Budget total: {2:C}",
                codeNameTextBox.Text, 
                newAssignmentTextBox.Text,
                totalCost);

            TimeSpan timeBetween = newCalendar.SelectedDate.Subtract(oldCalendar.SelectedDate);
            if (timeBetween.TotalDays < 14)
            {
                resultLabel.Text = "Error: Must allow at least two weeks" +
                    " between previous assignment and new assignment.";

                DateTime earliestNewDate = oldCalendar.SelectedDate.AddDays(14);

                newCalendar.SelectedDate = earliestNewDate;
                newCalendar.VisibleDate = earliestNewDate;
            }
        }
    }
}