using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using SastoMarket.Dao;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SastoMarket
{
    public partial class Product_Show : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }

        }
        public void GetData()
        {
            Int64 productid = Convert.ToInt64(Request.QueryString["product_id"]);

            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from Product where Pid = " + productid + "", con);
                //SqlDataAdapter da = new SqlDataAdapter("Select product_id, name, color, type, description, price, material, imagepath, imagename from product where product_id=", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater2.DataSource = ds;
                Repeater2.DataBind();
                //return ds;
            }
        }
    }
}