<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="user_women.aspx.cs" Inherits="SastoMarket.User_Profile.user_women" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Women</title>
      <link rel="stylesheet" href="../css/card.css">
    <style>
         .active_women{
            color:#f49304;
        }
         .ads img{
            width:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <div class="container-fluid ads">
                <img class="img-fluid" src="../img/women_ads.jpeg" />
            </div>

      <h1 class="text-center m-4">Women</h1>
            <div class="row">
               
                  <asp:Repeater ID="Product_Women" runat="server">
                       <ItemTemplate>
                              <div class="col-sm-4">
                                  <div class="mb-3">
                                       <a style="text-decoration: none;" href='user_product_show.aspx?product_id=<%# Eval("Pid") %>' >
                                        <div class="card">
                                            <div class="card-block text-center">
                          
                                              <img class="img-fluid" src="../Product_Images/<%#Eval("Product_Image") %>" style="height:200px; width:50%">   
                                              <h4 class="card-title mt-2"><%# Eval("Product_Name")%></h4>
                                              <p class="card-text"><strong class="animated-text">Rs <%# Eval("Price")%></strong></p>   
                                                
                                             <button type="submit" class="btn btn-success m-3">Buy Now</button>   
                                      
                                            </div>        
                                          </div>
                                      </a>
                                  </div>
                                </div>                       
                       </ItemTemplate>
                  </asp:Repeater>
         
                    </div>

</asp:Content>
