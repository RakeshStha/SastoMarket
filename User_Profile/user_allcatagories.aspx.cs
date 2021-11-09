using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SastoMarket.Dao;

namespace SastoMarket.User_Profile
{
    public partial class user_allcatagories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                if (Session["username"] == null) return;
                if (Session["username"] != null)
                {
                    ProductDao mn = new ProductDao();
                    DataSet mdt = mn.GetHomeProduct();
                    Repeater2.DataSource = mdt;
                    Repeater2.DataBind();
                }

            }
        }
    }
}