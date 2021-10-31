using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




namespace SastoMarket.User_Profile
{
    public partial class user_profile : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //  if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["Username"].ToString();
                String pass = Session["Password"].ToString();
                //if (Session["username"] == null) return;
                GetData();
                Repeater1.DataBind();


             
            }

        }
        private void GetData()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string username = Session["Username"].ToString();

                SqlDataAdapter da = new SqlDataAdapter("Select * from user_account where username = '" + username + "'", con);

                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds;

                //return ds;
            }
        }
    }
}