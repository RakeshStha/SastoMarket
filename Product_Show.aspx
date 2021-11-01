<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="Product_Show.aspx.cs" Inherits="SastoMarket.Product_Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Product_view</title>
    <link rel="stylesheet" href="css/Product_view.css">
     <link rel="stylesheet" href="css/footer.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
                            <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>
                                        <div class="product-container">
                                                <div class="row product-bg">
                                                    <div class="col-sm-6 product-content">
                                                        <div class="product-images">
                                                            <img src="Product_Images/<%# Eval("Product_Image")%>" alt="computer">
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
                                                                        <p><%# Eval("Price")%></p>
                                                                    </div>
                                                                </div>
                          
                                                            </p>
                                                            <div class="addtocart-content">
                                                                <button type="submit" class="addtocart-btn qty"> -</button>
                                                                <span>0</span>
                                                                <button type="submit" class="addtocart-btn qty"> +</button>
                                                            </div>
                                                            <div class="addtocart-big-btn">
                                                                <button type="submit" class="addtocart-btn btn-big">Add to cart</button>
                                                            </div>
                                                    </div>
                                                </div>
                                            </div>                      
                                     </ItemTemplate>
                          </asp:Repeater>

</asp:Content>
