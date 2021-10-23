<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="SastoMarket.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" href="css/contact.css">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--COntact Us-->
    <div class="container-fluid">
     <div class="row">
      <div class="col-sm-6 p-5">
        <p class="text-center hd">Contact Us</p>
        <p class="text-start info">Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. rat vel eaque perferendis ipsam </p>
        <div class="contact-forms">
            <div class="form-group">
            <input type="email" class="form-control" id="email" placeholder="Enter email" runat="server">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="fame"   placeholder="Enter your Full Name" runat="server">
            </div>
            <div class="form-group">
                <textarea class="form-control" id="message" rows="7" placeholder="Your Message" runat="server"></textarea>
            </div>
            <div class="text-center">
                <asp:Button ID="Button1"  class="btn btn-clr px-5 py-3" runat="server" Text="Button" OnClick="Unnamed1_Click" />

              
            </div>
        </div>
      </div>
      <div class="col-sm-6">
        <img src="./img/contact-us/contact us.PNG" alt="Contact us" class="img-fluid">
      </div>
     </div>
    </div>
</asp:Content>
