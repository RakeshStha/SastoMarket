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
    public class OrderDao
    {
        DbConnection dc = new DbConnection();
        public DataTable GetOrder()
        {

            

            //connection to Database

            string sql = "SELECT * FROM orders";
            SqlDataAdapter da = new SqlDataAdapter(sql, dc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Order");
            return ds.Tables[0];
        }
    }
}