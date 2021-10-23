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
            
            string sql = "INSERT INTO user_Account(username,fullname,address,phone,dob,password,role) VALUES (@username, @fullname, @address, @phone, @dob, @password, @role)";
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
    }
}