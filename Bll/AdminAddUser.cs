using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SastoMarket.Bll
{
    public class AdminAddUser
    {
        public int uid { get; set; }

        public string Username { get; set; }
        public string Fullname { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Dob { get; set; }
        public string Country { get; set; }

        public string Password { get; set; }
        public string Role { get; set; }
        public string Entry_date { get; set; }

        //For Save

        public AdminAddUser(string username, string fullname, string address, string phone, string dob, string password, string country, string email, string role)
        {

            Username = username;
            Fullname = fullname;
            Address = address;
            Phone = phone;
            Dob = dob;
            Password = password;
            Country = country;
            Email = email;
            Role = role;

        }
    }
}