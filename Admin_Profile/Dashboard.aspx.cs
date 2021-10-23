using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using SastoMarket.Bill;
using SastoMarket.Dao;
using SastoMarket.Utils;



namespace SastoMarket.Admin_Profile
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //OrderDao sd = new OrderDao();
            //DataTable dt = sd.GetOrder();
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

           

            if (!IsPostBack)
            {
               // if (Session["username"] == null) Response.Redirect("../error.aspx");
                //String user = Session["username"].ToString();
                //String pass = Session["password"].ToString();

                //if (Session["username"] != null)
                //{
                  //  admin.Text = Session["username"].ToString();




                    //AccountDao sd = new AccountDao();
                    //DataTable dt = sd.TotalAccount();

                    //ttlusr.Text = dt.Rows[0]["user"].ToString();

                }

            }
    }
}