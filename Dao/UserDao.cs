using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

using SastoMarket.Bill;
using SastoMarket.Dao;
using SastoMarket.Utils;



namespace SastoMarket.Dao
{
    public class UserDao
    {
        DbConnection dc = new DbConnection();
        //Check username nad password
        public DataTable CheckUser(User u)
        {
            //connection to Database

            string sql = "SELECT * FROM user_account WHERE username=@Username and password=@Password";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@Username", u.username);
            cmd.Parameters.AddWithValue("@Password", u.password);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            //Database name
            da.Fill(ds, "Login");
            return ds.Tables[0];
        }
    }
}