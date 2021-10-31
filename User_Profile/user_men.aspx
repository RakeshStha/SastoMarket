<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="user_men.aspx.cs" Inherits="SastoMarket.User_Profile.user_men" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Men</title>
    <style>
         .active_men{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="collection-container"> 
        <h1 class="text-center">Men</h1>
            <div class="row">
                  <asp:Repeater ID="Repeater2" runat="server">
                       <ItemTemplate>
                              <div class="col-sm-4">
                                  <div class="mb-3">
                                       <a style="text-decoration: none;" href='user_product_show.aspx?product_id=<%# Eval("Pid") %>' >
                                            <div class="card">
                                                <div class="card-block text-center">
                                                  <img class="img-fluid" src="img/<%#Eval("Product_Image") %>">   
                                                  <h4 class="card-title mt-2"><%# Eval("Product_Name")%></h4>
                                                  <p class="card-text"><strong class="animated-text">Rs <%# Eval("Price")%></strong></p>   
                                                    <p><%# Eval("Product_Description")%></p>
                                                  <button type="submit" class="btn btn-success m-3">Buy Now</button>
                                                </div>        
                                              </div>
                                         </a>
                                  </div>
                                </div>                       
                       </ItemTemplate>
                  </asp:Repeater>
            </div>
          </div>
</asp:Content>
