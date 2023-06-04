using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicApp.Accounts
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            //-------session---------
            if (Session["Name"] != null)
            {
                string strname = Convert.ToString(Session["Name"]);
                lbltitle.Text = "Welcome: " + strname;

            }


        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Signin.aspx");
        }
    }
}