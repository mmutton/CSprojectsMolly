﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsPizza
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            double total;

            if (babyRadioButton.Checked)
                total = 10.0;
            else if (mamaRadioButton.Checked)
                total = 13.0;
            else 
                total = 16.0;

            if (deepdishRadioButton.Checked)
                total += 2.0;
            
            total = (pepperoniCheckBox.Checked) ? total + 1.5 : total;
            total = (onionsCheckBox.Checked) ? total + .75 : total;
            total = (gPeppersCheckBox.Checked) ? total + .5 : total;
            total = (rPeppersCheckBox.Checked) ? total + .75 : total;

            if (anchoviesCheckBox.Checked) total += 2.0;
            
            if ((pepperoniCheckBox.Checked 
                && gPeppersCheckBox.Checked 
                && anchoviesCheckBox.Checked) 
                || (pepperoniCheckBox.Checked 
                && rPeppersCheckBox.Checked 
                && onionsCheckBox.Checked))
            {
                total -= 2.0;
            }

            totalLabel.Text = "$" + total.ToString();

        }
    }
}