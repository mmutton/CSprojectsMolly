using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeBetweenDates
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate > Calendar2.SelectedDate)
            {
                resultLabel.Text = "The number of days between those two dates is " + Calendar1.SelectedDate
                    .Subtract(Calendar2.SelectedDate)
                    .TotalDays.ToString() + ".";
            }
            else
                resultLabel.Text = "The number of days between those two dates is " + Calendar2.SelectedDate
                   .Subtract(Calendar1.SelectedDate)
                   .TotalDays.ToString() + ".";
            {

            }
        }
    }
}