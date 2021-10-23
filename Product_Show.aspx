﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="Product_Show.aspx.cs" Inherits="SastoMarket.Product_Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Product_view</title>
    <link rel="stylesheet" href="css/Product_view.css">
     <link rel="stylesheet" href="css/footer.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-container">
            <div class="row product-bg">
                <div class="col-sm-6 product-content">
                    <div class="product-images">
                        <img src="img/gadgets/electronic_computer.png" alt="computer">
                    </div>
                </div>
                <div class="col-sm-6 product-content">
                    <h1>Computer</h1>
                    <hr>
                        <h4> Description</h4>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Commodi, dignissimos. Consequatur eaque id fugit officia consequuntur deleniti voluptas tempore non eum, repellendus nihil sequi? Dolorem dicta dolorum vitae praesentium quos odit alias aperiam aliquid doloribus consectetur rerum autem, rem expedita officia harum sit nam placeat porro, temporibus doloremque, distinctio illo?
                        </p>
                        <h4> Specification</h4>
                        <p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <h6>Display</h6>      
                                </div>
                                <div class="col-sm-6">
                                    <p>15 inch</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <h6>Hard Disk</h6>
                                </div>
                                <div class="col-sm-6">
                                    <p>1 TB</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <h6>Ram</h6>
                                </div>
                                <div class="col-sm-6">
                                    <p>8 GB</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <h6>Graphic</h6>
                                </div>
                                <div class="col-sm-6">
                                    <p>4 GB GTX</p>
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

        <!--Features Products-->
        <div class="fetures-container">

            <h2 class=" text-center">Some other products that you may like</h2>

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
                <div class="seemore-btn">
                    <button type="submit" class="seemore">See more...</button>
                </div>
              </div>
              
        </div>

</asp:Content>