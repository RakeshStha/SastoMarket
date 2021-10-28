using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SastoMarket.Bill;
using SastoMarket.Bll;

using SastoMarket.Dao;



namespace SastoMarket.Admin_Profile
{
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {

                Product s = new Product(Productname.Value,FileUpload1.FileName,Description.Value,Catagory.Value,Price.Value);
                ProductDao sd = new ProductDao();
                FileUpload1.SaveAs(Server.MapPath("~/img/" + FileUpload1.FileName));
                sd.CreateProduct(s);
                Response.Redirect("Dashboard.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}