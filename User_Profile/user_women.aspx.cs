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
    public partial class user_women : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductDao mn = new ProductDao();
            DataSet mdt = mn.GetMen();
            Product_Women.DataSource = mdt;
            Product_Women.DataBind();

        }
    }
}