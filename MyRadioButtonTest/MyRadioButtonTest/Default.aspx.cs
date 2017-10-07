using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyRadioButtonTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showMeButton_Click(object sender, EventArgs e)
        {
            if (pizzaRadioButton.Checked)
                resultImage.ImageUrl = "pizza.png";
            else if (tacoRadioButton.Checked)
                resultImage.ImageUrl = "flatbreadtaco.png";
            else
                resultLabel.Text = "Please make up your mind.";
        }
    }
}