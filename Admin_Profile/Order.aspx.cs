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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            //OrderDao sd = new OrderDao();
            //DataTable dt = sd.GetOrder();
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

        }

     
    }
}