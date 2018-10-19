using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace NoblePPWebsite
{
    public partial class Publications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                bindGridView();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Publications/") + e.CommandArgument);
                Response.End();
            }
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {

        }
        private void bindGridView()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Publication Name", typeof(string));
            dt.Columns.Add("Download Link", typeof(string));
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Publications")))
            {
                FileInfo fi = new FileInfo(strFile);
                dt.Rows.Add(fi.Name, "Download");
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGridView(); //bindgridview will get the data source and bind it again
        }
    }
}