using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BasicApp.Accounts
{
    public partial class Signin : System.Web.UI.Page
    {
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strcon);
            if (!IsPostBack)
            {
                Session.Abandon();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter("usp_Login", con);
                sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                sda.SelectCommand.Parameters.Add("@uname", SqlDbType.VarChar, 45).Value = txtEmail.Value.Trim();
                sda.SelectCommand.Parameters.Add("@pass", SqlDbType.VarChar, 45).Value = txtPass.Value.Trim();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        if (dt.Rows[i]["userEmail"].ToString().ToLower() == txtEmail.Value.ToLower())
                        {
                            //session----------
                            Session["Name"] = txtEmail.Value.ToUpper();
                            //if(count>0
                            Response.Redirect("HomePage.aspx");
                            //ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Login Successfully');", true);
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter Valid Username & Password');", true);

                        }
                    }

                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                throw ex;
              
            }
        }
    }
}