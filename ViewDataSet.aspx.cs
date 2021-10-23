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

namespace SastoMarket
{
    public partial class ViewDataSet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // AccountDao sd = new AccountDao();
            //DataTable dt = sd.GetAccount();
           // Repeater1.DataSource = dt;
            //Repeater1.DataBind();
        }
    }
}