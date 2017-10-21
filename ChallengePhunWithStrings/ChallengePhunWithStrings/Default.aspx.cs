using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengePhunWithStrings
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // First challenge, reverse name
            string name = "Molly Brooke";
            /*   
            for (int i = name.Length - 1;  i >= 0; i--)
            {
                resultLabel.Text += name[i]; 
            }
            */

            // Second challenge, reverse list of names
            string names = "Luke,Leia,Han,Chewbacca";

            /*  string[] starWars = names.Split(',');
              Array.Reverse(starWars);
              string newNames = String.Join(",", starWars);
              resultLabel.Text += (newNames);
              */

            //Create ascii art with names list

            /*
            string[] starWars = names.Split(',');
            string result = "";
            for (int i = 0; i < starWars.Length; i++)
            {
                int padLeft = (14 - starWars[i].Length) / 2;
                string temporary = starWars[i].PadLeft(starWars[i].Length + padLeft, '*');
                result += temporary.PadRight(14, '*');
                result += "<br>";
            }
            resultLabel.Text = result;
            */
      

            string puzzle = "NOW IS ZHEremove-me ZIME FOR ALL GOOD MEN ZO COME ZO ZHE AID OF ZHEIR COUNZRY.";
            puzzle = puzzle.Replace("remove-me", ""); 
            puzzle = puzzle.ToLower();
            puzzle = puzzle.Replace('z','t');
            puzzle = char.ToUpper(puzzle[0]) + puzzle.Substring(1);

            resultLabel.Text = puzzle;

            
        }
    }
}