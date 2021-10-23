<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="SastoMarket.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="css/home.css" />
    <link rel="stylesheet" href="css/card.css">
    <link rel="stylesheet" href="css/footer.css" />
    
    <style>
        .allcatagories{
            color:#f49304;
        }
       
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--Body-->
    <div class="home_bdy">
                <!--Advertisement Banner-->
                    <div class="Banner p-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 ">
                                    <div class="Banner_pic">
                                        <img src="img/Banner_1.gif" alt="Sale">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="Banner_pic">
                                        <img src="img/Banner_2.gif" alt="50% off">
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
                              <img class="img-fluid mx-auto d-block" src="img/kid.png">
                            </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 home-height">
                            <h4 class="browser_catagories-heading">Men</h4>
                            <div class="flex-box">
                            <div class="home_catagories">
                              <img class="img-fluid" src="img/men.jpg">
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 home-height">
                            <h4 class="browser_catagories-heading">Women</h4>
                            <div class="flex-box">
                            <div class="home_catagories">
                              <img class="img-fluid" src="img/women.jpg">
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3 home-height">
                            <h4 class="browser_catagories-heading">Kitchens</h4>
                            <div class="flex-box">
                            <div class="home_catagories">
                              <img class="img-fluid" src="img/Browser_Kitchen.png">
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
                                <div class="col">
                                    <div class="card">
                                        <div class="card-block text-center">
                              
                                          <img class="img-fluid" src="img/gadgets/electronic_computer.png">
                                          <h4 class="card-title mt-2">Computer</h4>
                                          <p class="card-text"><strong class="animated-text">Rs 50,000</strong></p>       
                                          <p>Rating</p>
                                        </div>        
                                      </div>
                                </div>
                              <div class="col">
                                <div class="card">
                                    <div class="card-block text-center">
                                    <img class="img-fluid" src="img/gadgets/electronic_samsung_mobile.png">
                                    <h4 class="card-title mt-2">Samsung galaxy</h4>
                                    <p class="card-text"><strong class="animated-text">Rs 25,000</strong></p>     
                                    <p>Rating</p>  
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-block text-center">
                        
                                    <img class="img-fluid" src="img/gadgets/electronic_samsung_mobile.png">
                                    <h4 class="card-title mt-2">Samsung galaxy</h4>
                                    <p class="card-text"><strong class="animated-text">Rs 25,000</strong></p>   
                                    <p>Rating</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-block text-center">
                        
                                    <img class="img-fluid" src="img/gadgets/electronic_samsung_mobile.png">
                                    <h4 class="card-title mt-2">Samsung galaxy</h4>
                                    <p class="card-text"><strong class="animated-text">Rs 25,000</strong></p>
                                    <p>Rating    
                                    </p>  
                                    </div>
                                </div>
                            </div>
        
                            <div class="col">
                              <div class="card">
                                <div class="card-block text-center">
                      
                                  <img class="img-fluid" src="img/gadgets/electronic_computer.png">
                                  <h4 class="card-title mt-2">Computer</h4>
                                  <p class="card-text"><strong class="animated-text">Rs 50,000</strong></p>       
                                  <p>Rating</p>
                                </div>        
                              </div>
                            </div>

                            </div>
                          </div>
              
                    </div>
                </div>
        </div>
            <!--End of Body-->

</asp:Content>
