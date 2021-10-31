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
    public partial class user_allcatagories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductDao mn = new ProductDao();
            DataSet mdt = mn.GetHomeProduct();
            Repeater2.DataSource = mdt;
            Repeater2.DataBind();
        }
    }
}