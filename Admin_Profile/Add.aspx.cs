using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SastoMarket.Admin_Profile
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                String pass = Session["password"].ToString();  
            }

         }
    }
}