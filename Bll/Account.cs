using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SastoMarket.Bill
{
    public class Account
    {
        public int uid { get; set; }

        public string username { get; set; }
        public string fullname { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string dob { get; set; }
        public string country { get; set; }

        public string password { get; set; }
        public string role { get; set; }
        public string entry_date { get; set; }

        //For Save

        public Account(string username, string fullname, string address, string phone, string dob, string password)
        {
            username = username;
            fullname = fullname;
            address = address;
            phone = phone;
            dob = dob;
            password = password;
          
        }


    }
}