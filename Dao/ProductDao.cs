using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using SastoMarket.Bill;
using SastoMarket.Bll;
using SastoMarket.Utils;



namespace SastoMarket.Dao
{
    public class ProductDao
    {
        DbConnection dc = new DbConnection();
        public void CreateProduct(Product s)
        {

            string sql = "INSERT INTO Product(Product_Name,Product_Image,Product_Description,Catagory, Price) VALUES (@Product_Name, @Product_Image, @Product_Description, @Catagory, @Price)";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@Product_Name", s.Productname);
            cmd.Parameters.AddWithValue("@Product_Image", s.FileUpload1);
            cmd.Parameters.AddWithValue("@Product_Description", s.Description);
            cmd.Parameters.AddWithValue("@Catagory", s.Catagorys);
            cmd.Parameters.AddWithValue("@Price", s.Prices);

            cmd.ExecuteNonQuery();
        }

        public void UpdateProduct(Product a)
        {
            string sql = "UPDATE Product SET Product_Name=@Product_Name, Product_Image=@Product_Image, Product_Description=@Product_Description, Catagory=@Catagory, Price=@Price WHERE Pid=Pid";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@Product_Name", a.Productname);
            cmd.Parameters.AddWithValue("@Product_Image", a.FileUpload1);
            cmd.Parameters.AddWithValue("@Product_Description", a.Description);
            cmd.Parameters.AddWithValue("@Catagory", a.Catagorys);
            cmd.Parameters.AddWithValue("@Price", a.Prices);
            cmd.ExecuteNonQuery();
        }

        public void DeleteProduct(int Pid)
        {
            string sql = "DELETC FROM product WHERE Pid=@Pid";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@Pid", Pid);
            cmd.ExecuteNonQuery();
        }

        public DataTable TotalProduct()
        {

            string sql = "SELECT COUNT(*) AS Product FROM Product";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "TotalProduct");
            return ds.Tables[0];

        }

        public DataSet GetProduct()
        {
            //connection to Database

            string sql = "SELECT * FROM Product";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Product");
            return ds;
        }
        public DataSet GetHomeProduct()
        {
            //connection to Database

            string sql = "SELECT * FROM Product";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "HomeProduct");
            return ds;
        }
        public DataSet GetMen()
        {
            //connection to Database

            string sql = "SELECT * FROM Product where Catagory ='Men' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Men");
            return ds;
        }

        public DataSet GetBeauty()
        {
            //connection to Database

            string sql = "SELECT * FROM Product where Catagory ='Beauty' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Beauty");
            return ds;
        }

        public DataSet GetWomen()
        {
            //connection to Database

            string sql = "SELECT * FROM Product where Catagory ='Women' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Women");
            return ds;
        }
      

        public DataSet GetKid()
        {
            //connection to Database

            string sql = "SELECT * FROM Product where Catagory ='Kid' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Kid");
            return ds;
        }

        public DataTable GetProductByuid(int Pid)
        {
            //connection to Database

            string sql = "SELECT * FROM Product WHERE Pid=@Pid";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@Pid", Pid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            //Database name
            da.Fill(ds, "Products");
            return ds.Tables[0];
        }
    }
}