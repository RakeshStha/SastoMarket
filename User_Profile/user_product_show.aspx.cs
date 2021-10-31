using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SastoMarket.User_Profile
{
    public partial class user_product_show : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           // if (Session["username"] == null) Response.Redirect("../error.aspx");
            String user = Session["username"].ToString();
            if (!IsPostBack)
                GetData();

        }
        public void GetData()
        {
            Int64 productid = Convert.ToInt64(Request.QueryString["product_id"]);

            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from Product where Pid = " + productid + "", con);
                //SqlDataAdapter da = new SqlDataAdapter("Select product_id, name, color, type, description, price, material, imagepath, imagename from product where product_id=", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater2.DataSource = ds;
                Repeater2.DataBind();
                //return ds;
            }
        }
        protected void Addtocart(object sender, EventArgs e)
        {
            Int64 productid = Convert.ToInt64(Request.QueryString["product_id"]);

            String user = Session["Username"].ToString();
            { Response.Write("<script>alert('" + productid + "');</script>"); }


            DropDownList dp = (DropDownList)Repeater2.Items[0].FindControl("DropDownList1");
            Label pl = (Label)Repeater2.Items[0].FindControl("Price");





            if (pl == null) { Response.Write("<script>alert('no price data');</script>"); return; }

            int pric = Convert.ToInt32(pl.Text);
            int Quantity = Convert.ToInt32(dp.SelectedValue);
            int TotalPrice = pric * Quantity;


       


            string constr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmdselect = new SqlCommand("select * from Product where Pid =@productid", con);
            cmdselect.Parameters.AddWithValue("@productid", productid);
            con.Open();

            SqlDataReader dr = cmdselect.ExecuteReader();


            if (!dr.HasRows) { Response.Write("<script>alert('no data found');</script>"); return; }


            SqlCommand cmd = new SqlCommand("INSERT INTO orders (order_date, product_name, product_type, user_names, quantity, total_price, price, status) VALUES( @time, @product_name, @Catagory, @username, @quantity, @totalprice, @price, @status )", con);
            

            dr.Read();
           
            cmd.Parameters.AddWithValue("@product_name", dr["Product_Name"]);
            cmd.Parameters.AddWithValue("@Catagory", dr["Catagory"].ToString());
            cmd.Parameters.AddWithValue("@username", user);
            cmd.Parameters.AddWithValue("@quantity", Quantity);
            cmd.Parameters.AddWithValue("@totalprice", TotalPrice);
            cmd.Parameters.AddWithValue("@price", dr["Price"]);
            cmd.Parameters.AddWithValue("@status", "Pending");
            //cmd.Parameters.AddWithValue("@useraddress", "Nepal");
            




            dr.Close();
            cmd.Parameters.AddWithValue("@time", DateTime.Now);


            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Add to cart successfull'); </script>");
            con.Close();

        }
    }
}