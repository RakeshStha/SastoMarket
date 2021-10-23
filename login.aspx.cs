using System;
using System.Data;
using SastoMarket.Dao;

using SastoMarket.Bill;

namespace SastoMarket
{
    public partial class Login : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

            protected void Login_Btn(object sender, EventArgs e)
            {
            //Implementing try and catch
            try
                {

                    User u = new User();
                    u.username = Username.Text;
                    u.password = Password.Text;
                    UserDao ud = new UserDao();
                    DataTable dt = ud.CheckUser(u);
                    string role = dt.Rows[0]["role"].ToString();
                    if (dt.Rows.Count > 0)
                    {
                        Session["Username"] = u.username;
                        Session["Password"] = u.password;
                        if (role == "admin")
                        {
                            Response.Redirect("Admin_Profile/Dashboard.aspx");
                        }
                        if (role == "user")
                        {
                            Response.Redirect("User_Profile/user_profile.aspx");
                        }
                    }
                    else
                    {
                        ltrMessage.Text = "Invalid Username or Password";
                    }
                }
                catch (Exception ex)
                {
                    //ltrMessage.Text = ex.Message;
                ltrMessage.Text = "Invalid Username or Password";
                }

            
        }
    }
}