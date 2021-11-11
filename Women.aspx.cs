using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SastoMarket.Dao;

namespace SastoMarket
{
    public partial class Women : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductDao mn = new ProductDao();
            DataSet mdt = mn.GetWomen();
            Product_Women.DataSource = mdt;
            Product_Women.DataBind();
        }
    }
}