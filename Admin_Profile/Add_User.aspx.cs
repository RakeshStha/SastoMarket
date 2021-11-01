using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SastoMarket.Bll;
using SastoMarket.Dao;


namespace SastoMarket
{
    public partial class Add_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Add_Click(object sender, EventArgs e)
        {
         
            try
            {

               AdminAddUser s = new AdminAddUser(Username.Text, Fullname.Text, Address.Text, Phone.Text, Dob.Text, Password.Text, Country.SelectedItem.Value,  Email.Text, Role.SelectedItem.Value);
                AdminAddUserDao sd = new AdminAddUserDao();
                sd.AddAccount(s);
               Response.Redirect("Dashboard.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}