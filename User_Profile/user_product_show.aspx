<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="user_product_show.aspx.cs" Inherits="SastoMarket.User_Profile.user_product_show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/Product_view.css">
    <style>
        .addtocart_btn{
            
            margin-bottom: 10px;
             background-color:#f49304;
            border: none;
            color: black;
            font:'Mulish';
            font-weight:700;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>
                                        <div class="product-container">
                                                <div class="row product-bg">
                                                    <div class="col-sm-6 product-content">
                                                        <div class="product-images">
                                                            <img class="img-fluid" src="../Product_Images/<%# Eval("Product_Image")%>" alt="computer">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 product-content">
                                                        <h1><%# Eval("Product_Name")%></h1>
                                                        <hr>
                                                            <h4> Description</h4>
                                                            <p><%# Eval("Product_Description")%> </p>
                                                            <h4> Specification</h4>
                                                            <p>
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <h6>Name</h6>      
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <p><%# Eval("Product_Name")%></p>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <h6>Catagory</h6>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <p><%# Eval("Catagory")%></p>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <h6>Price</h6>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <asp:Label ID="Price" runat="server" Text='<%# Eval("Price")%>'></asp:Label>
                                                                      
                                                                    </div>
                                                                </div>
                          
                                                            </p>
                                                          
                                                            
                                                        <div class="text-center">
                                   
                                                               Quantity: <asp:DropDownList ID="DropDownList1" runat="server">
                                                                        <asp:ListItem>1</asp:ListItem>
                                                                        <asp:ListItem>2</asp:ListItem>
                                                                        <asp:ListItem>3</asp:ListItem>
                                                                        <asp:ListItem>4</asp:ListItem>
                                                                        <asp:ListItem>5</asp:ListItem>
                                                                        <asp:ListItem>6</asp:ListItem>
                                                                    </asp:DropDownList>
                                                               <br><br />
                                                            <div class="text-center addtocart-content">
                                     
                                                                <asp:Button 
                                                                    id="add2cart"
                                                                   class="addtocart_btn"
                                                                    runat="server"
                                                                    Text="Add to Cart"
                                                                     OnClick="Addtocart"
                                                                     />
                                            
                                                                <i class="fa fa-shopping-cart icon-card"></i>
                                                                </div>
                                                    </div>

                                                    </div>
                                                </div>
                                            </div>                      
                                     </ItemTemplate>
                          </asp:Repeater>
</asp:Content>
