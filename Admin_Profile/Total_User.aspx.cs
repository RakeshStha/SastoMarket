using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SastoMarket.Admin_Profile
{
    public partial class Total_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Edit")
            {
                Session["btn"] = "Update";
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                int uid = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[0].Text);
                Session["uid"] = uid;
                Response.Redirect("Dashboard.aspx");
            }
            if(e.CommandName == "Delete")
            {
                Session["btn"] = "Delete";
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                int uid = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[0].Text);
                Session["uid"] = uid;
                Response.Redirect("Dashboard.aspx");
            }

        }
    }
}