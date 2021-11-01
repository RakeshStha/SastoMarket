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
    public partial class Status : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                if (Session["username"] == null) return;

                GetData();
            }


        }
        public void GetData()
        {
            String user = Session["username"].ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from orders where user_names='" + user + "'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();

            }
        }
    }
}