using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Wizard1.Visible = true;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int pos;
            string no;
            if (e.CommandName == "Select")
            {   
                pos = Convert.ToInt32(e.CommandArgument);
                no = GridView1.DataKeys[pos].Value.ToString();
                lblOutput.Text = "品牌: " + no;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

            lblOutput.Text = "您喜愛的品牌: " + txtUser.Text + "<br/>";
            lblOutput.Text += "車款名稱: " + txtPass.Text + "<br/>";
            Wizard1.Visible = false;
        }
    }
}