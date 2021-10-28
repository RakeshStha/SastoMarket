<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="SastoMarket.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" href="css/contact.css">
   <link rel="stylesheet" href="css/footer.css" />
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
                <input type="email" class="form-control" id="Email" placeholder="Enter Your Email" runat="server">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Email" runat="server" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" controlToValidate="Email" runat="server" ErrorMessage="Email must contain @ !" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="Fullname"   placeholder="Enter Your Full Name" runat="server">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Fullname" runat="server" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <textarea class="form-control" id="Messages" placeholder="Your Message" runat="server" style="height: 10rem;"></textarea>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Messages" runat="server" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="text-center">
                <asp:Button ID="Contact"  class="btn btn-clr px-5 py-3" runat="server" Text="Send" OnClick="Unnamed1_Click" />
            </div>
        </div>
      </div>
      <div class="col-sm-6">
        <img src="./img/contact-us/contact us.PNG" alt="Contact us" class="img-fluid">
      </div>
     </div>
    </div>
</asp:Content>
