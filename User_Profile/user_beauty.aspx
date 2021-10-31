<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="user_beauty.aspx.cs" Inherits="SastoMarket.User_Profile.user_beauty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Beauty</title>
    <style>
     .active_beauty{
            color:#f49304;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="collection-container"> 
             <h1 class="text-center">Beauty</h1>
            <div class="row">
               
                  <asp:Repeater ID="Product_Beauty" runat="server">
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

            </div>


</asp:Content>
