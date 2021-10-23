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
using SastoMarket.Utils;


namespace SastoMarket.User_Profile
{
    public partial class user_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null) Response.Redirect("../error.aspx");
                String user = Session["username"].ToString();
                String pass = Session["password"].ToString();
                if (Session["username"] == null) return;


                GetData();
                Repeater1.DataBind();
            }

        }
        private void GetData()
        {
            DbConnection cn = new DbConnection();

            using (SqlConnection con = new SqlConnection(cn))
            {
                string user = Session["username"].ToString();

                SqlDataAdapter da = new SqlDataAdapter("Select * from signup where email = '" + user + "'", con);

                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds;

                //return ds;
            }
        }
    }
}