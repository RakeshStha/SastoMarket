<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="user_allcatagories.aspx.cs" Inherits="SastoMarket.User_Profile.user_allcatagories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>All Catagories</title>
     <link rel="stylesheet" href="../css/home.css" />
    <link rel="stylesheet" href="../css/card.css">
    <style>
         .active_allcatagories{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="home_bdy">
                <!--Advertisement Banner-->
                    <div class="Banner p-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 ">
                                    <div class="Banner_pic">
                                        <img src="../img/Banner_1.gif" alt="Sale">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="Banner_pic">
                                        <img src="../img/Banner_2.gif" alt="50% off">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <!--Browser Categories-->
                <div class="container-fluid home_catagories_background">
                    <div class="container">

                        <h2 class="Home-heading text-center">Browser Catagories</h2>

                    <div class="row align-self-center">
                        <div class="col-xs-12 col-sm-6 col-md-3 home-height">
                            <h4 class="browser_catagories-heading">Kid</h4>
                            <div class="flex-box">
                            <div class="home_catagories">
                              <img class="img-fluid mx-auto d-block" src="../img/kid.png">
                            </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 home-height">
                            <h4 class="browser_catagories-heading">Men</h4>
                            <div class="flex-box">
                            <div class="home_catagories">
                              <img class="img-fluid" src="../img/men.jpg">
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 home-height">
                            <h4 class="browser_catagories-heading">Women</h4>
                            <div class="flex-box">
                            <div class="home_catagories">
                              <img class="img-fluid" src="../img/women.jpg">
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 home-height">
                            <h4 class="browser_catagories-heading">Kitchens</h4>
                            <div class="flex-box">
                            <div class="home_catagories">
                              <img class="img-fluid" src="../img/kitchen.jpg">
                            </div>
                          </div>
                        </div>
                    </div>
                    </div>
                </div>

                <!--Features Products-->
                <div class="container-fluid home_feature_background">
                    <div class="container">

                        <h2 class="Home-heading text-center">Features Products</h2>

                        <div class="container"> 
                            <div class="row mt-5">
                                 <asp:Repeater ID="Repeater2" runat="server">
                                   <ItemTemplate>
                                          <div class="col-sm-4">
                                              <div class="mb-3">
                                                 <a style="text-decoration: none;" href='user_product_show.aspx?product_id=<%# Eval("Pid") %>' >
                                                    <div class="card">
                                                        <div class="card-block text-center">
                                                          <img class="img-fluid" src="../Product_Images/<%# Eval("Product_Image") %>"  style="height:200px; width:50%">
                                                          <h4 class="card-title mt-2"><%#Eval("Product_Name") %></h4>
                                                          <p class="card-text"><strong class="animated-text">Rs <%#Eval("Price") %></strong></p>  
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
              
                    </div>
                </div>
        </div>
</asp:Content>
