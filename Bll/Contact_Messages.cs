using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SastoMarket.Bll
{
    public class Contact_Messages
    {
 

        public string Fullname { get; set; }
 
        public string Email { get; set; }
        public string Messages { get; set; } 
        public string Entry_date { get; set; }

        //For Save

        public Contact_Messages(string fullname, string email, string messages)
        {
            Fullname = fullname;
            Email = email;
            Messages = messages;
        }

    }
}