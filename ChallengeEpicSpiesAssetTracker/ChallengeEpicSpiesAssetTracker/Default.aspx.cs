using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeEpicSpiesAssetTracker
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string[] assets = new string[0];
                int[] elections = new int[0];
                int[] acts = new int[0];

                ViewState.Add("Assets", assets);
                ViewState.Add("Elections", elections);
                ViewState.Add("Acts", acts);
            }
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            string[] assets = (String[])ViewState["Assets"];
            int[] elections = (int[])ViewState["Elections"];
            int[] acts = (int[])ViewState["Acts"];

            int newLength = assets.Length + 1;

            Array.Resize(ref assets, newLength);
            Array.Resize(ref elections, newLength);
            Array.Resize(ref acts, newLength);

            int newIndex = assets.GetUpperBound(0);

            assets[newIndex] = assetNameTextBox.Text;
            elections[newIndex] = int.Parse(electionsRiggedTextBox.Text);
            acts[newIndex] = int.Parse(actsOfSubterfugeTextBox.Text);

            ViewState["Assets"] = assets;
            ViewState["Elections"] = elections;
            ViewState["Acts"] = acts;

            resultLabel.Text = String.Format("Total Elections Rigged: {0}" +
                "<br>Average acts of subterfuge per Asset:{1:N2}" +
                "<br>(Last Asset you added: {2})",
                elections.Sum(),
                acts.Average(),
                assets[newIndex]);

            assetNameTextBox.Text = "";
            electionsRiggedTextBox.Text = "";
            actsOfSubterfugeTextBox.Text = "";

        }
    }
}
