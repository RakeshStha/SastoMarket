<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="user_women.aspx.cs" Inherits="SastoMarket.User_Profile.user_women" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Women</title>
    <style>
         .active_women{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <h1 class="text-center">Women</h1>
            <div class="row">
               
                  <asp:Repeater ID="Product_Women" runat="server">
                       <ItemTemplate>
                              <div class="col-sm-4">
                                  <div class="mb-3">
                                    <div class="card">
                                        <div class="card-block text-center">
                          
                                          <img class="img-fluid" src="img/<%#Eval("Product_Image") %>">   
                                          <h4 class="card-title mt-2"><%# Eval("Product_Name")%></h4>
                                          <p class="card-text"><strong class="animated-text">Rs <%# Eval("Price")%></strong></p>   
                                            <p><%# Eval("Product_Description")%></p>
                                         <button type="submit" class="btn btn-success m-3">Buy Now</button>       
                                        </div>        
                                      </div>
                                  </div>
                                </div>                       
                       </ItemTemplate>
                  </asp:Repeater>
         
                    </div>

</asp:Content>
