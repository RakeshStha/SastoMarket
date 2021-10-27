using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using SastoMarket.Bll;
using SastoMarket.Bill;
using SastoMarket.Dao;

namespace SastoMarket
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {

                Contact_Messages s = new Contact_Messages(Fullname.Value, Email.Value, Messages.Value);
                ContactDao sd = new ContactDao();
                sd.CreateContact(s);
                Response.Redirect("home.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}