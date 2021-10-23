using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;

namespace SastoMarket.Utils
{
    public class DbConnection
    {
        public SqlConnection cn;
        public DbConnection()
        {
            string sqlcon = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnection"].ToString();
            cn = new SqlConnection(sqlcon);
            cn.Open();
        }
    }
}