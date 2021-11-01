using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using SastoMarket.Bll;
using SastoMarket.Utils;


namespace SastoMarket.Dao
{
    public class AdminAddUserDao
    {

        DbConnection dc = new DbConnection();
        public void AddAccount(AdminAddUser s)
        {

            string sql = "INSERT INTO user_account(username,fullname,address,phone,dob,password,role, email, country) VALUES (@username, @fullname, @address, @phone, @dob, @password, @role, @email, @country)";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            cmd.Parameters.AddWithValue("@username", s.Username);
            cmd.Parameters.AddWithValue("@fullname", s.Fullname);
            cmd.Parameters.AddWithValue("@address", s.Address);
            cmd.Parameters.AddWithValue("@phone", s.Phone);
            cmd.Parameters.AddWithValue("@dob", s.Dob);
            cmd.Parameters.AddWithValue("@password", s.Password);
            cmd.Parameters.AddWithValue("@role", s.Role);
            cmd.Parameters.AddWithValue("@email", s.Email);
            cmd.Parameters.AddWithValue("@country", s.Country);
            cmd.ExecuteNonQuery();
        }
     
    }
}