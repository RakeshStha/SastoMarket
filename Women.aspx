<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="Women.aspx.cs" Inherits="SastoMarket.Women" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>WOMEN</title>

     <link rel="stylesheet" href="css/card.css">
    <link rel="stylesheet" href="css/footer.css" />

    <style>
        .active_women{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

               
             <h1 class="text-center">Women</h1>
            <div class="row">
               
                  <asp:Repeater ID="Product_Women" runat="server">
                       <ItemTemplate>
                              <div class="col-sm-4">
                                  <div class="mb-3">
                                       <a style="text-decoration: none;" href='Product_Show.aspx?product_id=<%# Eval("Pid") %>' >
                                        <div class="card">
                                            <div class="card-block text-center">
                                              <img class="img-fluid" src="Product_Images/<%#Eval("Product_Image") %>" style="height:200px; width:50%">   
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
