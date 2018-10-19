using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace NoblePPWebsite
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CurrentPassword = Properties.Settings.Default.Password;
            if(Globals.LoggedIn != 1)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            else
            {

            }
        }

        protected void btnUploadPublication_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string fileExtension = Path.GetExtension(FileUpload1.FileName);

                    if (fileExtension.ToLower() != ".pdf")
                    {
                        lblPublicationMessage.Text = "Please select a PDF File to Upload!";
                        lblPublicationMessage.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        int FileSize = FileUpload1.PostedFile.ContentLength;
                        if (FileSize > 52428800)
                        {
                            lblPublicationMessage.Text = "File Size has to be smaller than 50Mb";
                            lblPublicationMessage.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            FileUpload1.SaveAs(Server.MapPath("~/Publications/" + FileUpload1.FileName));
                            lblPublicationMessage.Text = "File Uploaded!";
                            lblPublicationMessage.ForeColor = System.Drawing.Color.Green;
                        }

                    }

                }
                else
                {
                    lblPublicationMessage.Text = "Please select a File to Upload!";
                    lblPublicationMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblPublicationMessage.Text = ex.Message;
                lblPublicationMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnUploadFactSheet_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload2.HasFile)
                {
                    string fileExtension = Path.GetExtension(FileUpload2.FileName);

                    if (fileExtension.ToLower() != ".pdf")
                    {
                        lblMessageFactSheets.Text = "Please select a PDF File to Upload!";
                        lblMessageFactSheets.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        int FileSize = FileUpload2.PostedFile.ContentLength;
                        if (FileSize > 52428800)
                        {
                            lblMessageFactSheets.Text = "File Size has to be smaller than 50Mb";
                            lblMessageFactSheets.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            FileUpload2.SaveAs(Server.MapPath("~/FactSheets/" + FileUpload2.FileName));
                            lblMessageFactSheets.Text = "File Uploaded!";
                            lblMessageFactSheets.ForeColor = System.Drawing.Color.Green;
                        }

                    }

                }
                else
                {
                    lblMessageFactSheets.Text = "Please select a File to Upload!";
                    lblMessageFactSheets.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblMessageFactSheets.Text = ex.Message;
                lblMessageFactSheets.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            if(txtPassword.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No Password Provided!')", true);
            }
            else if(HiddenField1.Value == "1")
            {
                //Clear Text File
                File.WriteAllText(Server.MapPath("~/Password.txt"), String.Empty);
                //Write New Password
                File.WriteAllText(Server.MapPath("~/Password.txt"), txtPassword.Text);
                //Display Success
                lblPassword.Text = "Password Updated Successfully!";
                lblPassword.ForeColor = System.Drawing.Color.Green;
                txtPassword.Text = "";
            }
            else if(HiddenField1.Value != "1")
            {
                lblPassword.Text = "Password Not Changed!";
                lblPassword.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}