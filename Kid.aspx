﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="Kid.aspx.cs" Inherits="SastoMarket.Kid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>KID</title>

     <link rel="stylesheet" href="css/card.css">
    <link rel="stylesheet" href="css/footer.css" />

    <style>
        .active_kid{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="collection-container"> 
                <h1 class="text-center">Kid</h1>
                    <div class="row">
                          <asp:Repeater ID="Repeater2" runat="server">
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
