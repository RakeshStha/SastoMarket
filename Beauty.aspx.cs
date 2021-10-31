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
    public partial class Beauty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductDao ff = new ProductDao();
            DataSet dss = ff.GetBeauty();
            Product_Beauty.DataSource = dss;
            Product_Beauty.DataBind();

           
        }
    }
}