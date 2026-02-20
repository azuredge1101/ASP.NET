using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int quantity, total = 0;
            quantity = Convert.ToInt32(txtQuantity.Text);
            if (chkSandwich.Checked)
                total += 30 * quantity;
            quantity = Convert.ToInt32(txt1Quantity.Text);
            if (chkHamburger.Checked)
                total += 40 * quantity;
            quantity = Convert.ToInt32(txt2Quantity.Text);
            if (chkSoymilk.Checked)
                total += 20 * quantity;
            quantity = Convert.ToInt32(txt3Quantity.Text);
            if (chkMilktea.Checked)
                total += 25 * quantity;
            if (chkTopioca.Checked)
                total += 5 * quantity;
            lblOutput.Text = total.ToString("C");
        }
    }
}
