using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace SastoMarket.User_Profile
{
    public partial class FeedBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                string onwebsite = string.Empty;
                if (RadioButton1.Checked){
                        onwebsite = "Bad";
                    }
                 if(RadioButton2.Checked){
                        onwebsite = "Average";
                  }
                  if(RadioButton3.Checked){
                        onwebsite = "Good";
                    }
                string onproduct = string.Empty;

                if (RadioButton4.Checked)
                {
                    onproduct = "Bad";
                }
                if (RadioButton5.Checked)
                {
                    onproduct = "Average";
                }
                if (RadioButton6.Checked)
                {
                    onproduct = "Good";
                }
                string constr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                string comments = TextBox1.Text;
                string username = TextBox2.Text;
                string email = TextBox3.Text;

                SqlCommand cmd = new SqlCommand("insert into feedback values(@username, @email, @onwebsite, @onproduct, @comments, @entry_date)", con);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@onwebsite", onwebsite);
                cmd.Parameters.AddWithValue("@onproduct", onproduct);
                cmd.Parameters.AddWithValue("@comments", comments);
                cmd.Parameters.AddWithValue("@entry_date", DateTime.Now);
                con.Open();
                cmd.ExecuteScalar();
                con.Close();

                Label2.Visible = true;
                Label1.Visible = false;
                
                
            }
            else
            {
                Label1.Visible = true;
                Label2.Visible = false;

            }
        }
    }
}