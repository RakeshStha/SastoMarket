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
