using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SastoMarket.Bill;
using SastoMarket.Dao;


namespace SastoMarket
{
    public partial class signup : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }


        protected void SignUp_Click(object sender, EventArgs e)
        {
            try
            {

                //File uploader
                //in string FileUpload1.FileName
                //FileUpload1.SaveAs(Server.MapPath("~/Folder/" + FileUpload1.FileName));

                //Dob.SelectedDate.ToString()




               Account s = new Account(Username.Text, Fullname.Text, Address.Text, Phone.Text, Dob.Text, Password.Text, Country.Value, Email.Value);
                AccountDao sd = new AccountDao();
                sd.CreateAccount(s);
               Response.Redirect("home.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }


    }
}