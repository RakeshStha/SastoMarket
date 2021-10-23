using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using SastoMarket.Bill;
using SastoMarket.Utils;

namespace SastoMarket.Dao
{
    public class AccountDao
    {
        DbConnection dc = new DbConnection();
        public void CreateAccount(Account s)
        {

            string sql = "INSERT INTO user_account(username,fullname,address,phone,dob,password,role) VALUES (@username, @fullname, @address, @phone, @dob, @password, @role)";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@username", s.username);
            cmd.Parameters.AddWithValue("@fullname", s.fullname);
            cmd.Parameters.AddWithValue("@address", s.address);
            cmd.Parameters.AddWithValue("@phone", s.phone);
            cmd.Parameters.AddWithValue("@dob", s.dob);
            cmd.Parameters.AddWithValue("@password", s.password);
            cmd.Parameters.AddWithValue("@role", "user");
            cmd.ExecuteNonQuery();
        }

        public void UpdateAccount(Account a)
        {
            string sql = "UPDATE user_account SET username=@username, fullname=@fullname, address=@address, phone=@phone, dob=@dob, password=@password, role=@role WHERE uid=uid";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@uid", a.uid);
            cmd.Parameters.AddWithValue("@username", a.username);
            cmd.Parameters.AddWithValue("@fullname", a.fullname);
            cmd.Parameters.AddWithValue("@address", a.address);
            cmd.Parameters.AddWithValue("@phone", a.phone);
            cmd.Parameters.AddWithValue("@dob", a.dob);
            cmd.Parameters.AddWithValue("@password", a.password);
            cmd.Parameters.AddWithValue("@role", a.role);
            cmd.ExecuteNonQuery();
        }

        public void DeleteAccount(int uid)
        {
            string sql = "DELETC FROM user_account WHERE uid=@uid";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@uid", uid);
            cmd.ExecuteNonQuery();
        }

        public DataTable TotalAccount()
        {

            string sql = "SELECT COUNT(*) AS products FROM product";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "TotalAccount");
            return ds.Tables[0];

        }

        public DataTable GetAccount()
        {
            //connection to Database

            string sql = "SELECT * FROM user_account";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Account");
            return ds.Tables[0];
        }

        public DataTable GetAccountByuid(int uid)
        {
            //connection to Database

            string sql = "SELECT * FROM user_account WHERE uid=@uid";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@uid", uid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            //Database name
            da.Fill(ds, "Login");
            return ds.Tables[0];
        }
    }
    }