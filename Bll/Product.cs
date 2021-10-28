using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SastoMarket.Bll
{
    public class Product
    {
        public int Pid { get; set; }
        public string Productname { get; set; }
        public string FileUpload1 { get; set; }
        public string Description { get; set; }

        public string Catagorys { get; set; }
        public string Prices { get; set; }
        public string ENtry_Date { get; set; }
        public Product(string Product_Name, string Product_Image, string Product_Description, string Catagory, string Price)
        {

            Productname= Product_Name;
            FileUpload1= Product_Image;
            Description= Product_Description;
            Catagorys= Catagory;
            Prices= Price;



        }
    }
}