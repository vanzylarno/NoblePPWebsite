using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace NoblePPWebsite
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Globals.LoggedIn = 0;
            var data = File.ReadAllText(Server.MapPath("~/Password.txt"));
            HiddenField1.Value = data.ToString();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "NoblePPAdmin" && txtPassword.Text == HiddenField1.Value.ToString())
            {
                Session["user"] = txtUsername.Text;
                Globals.LoggedIn = 1;
                Response.Redirect("AdminHome.aspx");
            }
            else if(txtUsername.Text == "NoblePPAdmin" && txtPassword.Text != HiddenField1.Value.ToString())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password Incorrect!')", true);
            }
            else if (txtUsername.Text != "NoblePPAdmin" && txtPassword.Text == HiddenField1.Value.ToString())
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username Incorrect!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username & Password Incorrect!')", true);
            }

        }
    }
}