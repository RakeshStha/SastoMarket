using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using SastoMarket.Utils;
using SastoMarket.Bll;

namespace SastoMarket.Dao
{
    public class ContactDao
    {
        DbConnection dc = new DbConnection();
        public void CreateContact(Contact_Messages s)
        {
            string sql = "INSERT INTO contact (fullname,email, messages) VALUES ( @fullname, @email, @messages)";
            SqlCommand cmd = new SqlCommand(sql, dc.cn);

            cmd.Parameters.AddWithValue("@fullname", s.Fullname);
            cmd.Parameters.AddWithValue("@email", s.Email);
            cmd.Parameters.AddWithValue("@messages", s.Messages);

            cmd.ExecuteNonQuery();
        }
       
    
}
}