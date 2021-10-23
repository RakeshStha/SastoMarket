using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SastoMarket.Bll
{
    public class Order
    {
        public int oid { get; set; }
        public string order_date { get; set; }
        public string product_name { get; set; }
        public string product_type { get; set; }
        public int price { get; set; }
        public string user_address { get; set; }
        public string username { get; set; }
        public int quantity { get; set; }
        public int total_price { get; set; }
        public string statu { get; set; }
        public string entry_date { get; set; }

        public Order(string oid, string order_date, string product_name, string product_type, int price, string user_address, string username, int quantity, int total_price, string statu, string entry_date)
        {
            username = username;
            user_address = user_address;
            oid = oid;
            order_date = order_date;
            product_name = product_name;
            product_type = product_type;
            price = price;
            quantity = quantity;
            total_price = total_price;
            statu = statu;
            entry_date = entry_date;

        }
    }
}