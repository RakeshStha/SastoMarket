<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="Product_Show.aspx.cs" Inherits="SastoMarket.Product_Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Product_view</title>
    <link rel="stylesheet" href="css/Product_view.css">
     <link rel="stylesheet" href="css/footer.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                                          <div class="modal-dialog modal-dialog-centered" role="document">
                                                                            <div class="modal-content">
                                                                              <div class="modal-header">
                                                                                <h5 class="modal-title" ><h3 class="text-danger"><i class="fa fa-frown-o" aria-hidden="true"></i>  Oops!........</h3></h5>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                  <span aria-hidden="true">&times;</span>
                                                                                </button>
                                                                              </div>
                                                                              <div class="modal-body">
                                                                                <p class="text-center text-danger" style="font-size:20px;"> <b>Please create your account to add item to your cart.</b>
                                                                                  <h4 class="text-center text-danger"><b>Thank You!</b></h4>
                                                                                    </p>
                                                                              </div>
                                                                              <div class="modal-footer">
                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                                <button type="button" class="btn btn-primary" id="login">Login</button>
                                                                              </div>
                                                                            </div>
                                                                          </div>
                                                                        </div>
  
                            <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>
                                        <div class="product-container">
                                                <div class="row product-bg">
                                                    <div class="col-sm-6 product-content">
                                                        <div class="product-images">
                                                            <img src="Product_Images/<%# Eval("Product_Image")%>" alt="computer">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 product-content">
                                                        <h1><%# Eval("Product_Name")%></h1>
                                                        <hr>
                                                            <h4> Description</h4>
                                                            <p><%# Eval("Product_Description")%> </p>
                                                            <h4> Specification</h4>
                                                            <p>
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <h6>Name</h6>      
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <p><%# Eval("Product_Name")%></p>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <h6>Catagory</h6>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <p><%# Eval("Catagory")%></p>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <h6>Price</h6>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <p><%# Eval("Price")%></p>
                                                                    </div>
                                                                </div>
                          
                                                            </p>
                                                            <div class="addtocart-content">
                                                                <button type="submit" class="addtocart-btn qty"> -</button>
                                                                <span>0</span>
                                                                <button type="submit" class="addtocart-btn qty"> +</button>
                                                            </div>
                                                            <div class="addtocart-big-btn">
                                                              
                                                                <!-- Button trigger modal -->
                                                                <button class="addtocart-btn btn-big" data-toggle="modal" data-target="#Modal">Buy Now </button>


                                                                     <!-- Modal -->
                                                                        <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                                          <div class="modal-dialog modal-dialog-centered" role="document">
                                                                            <div class="modal-content">
                                                                              <div class="modal-header">
                                                                                <h5 class="modal-title" ><h3 class="text-danger"><i class="fa fa-frown-o" aria-hidden="true"></i>  Oops!........</h3></h5>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                  <span aria-hidden="true">&times;</span>
                                                                                </button>
                                                                              </div>
                                                                              <div class="modal-body">
                                                                                <p class="text-center text-danger" style="font-size:20px;"> <b>Please create your account to add item to your cart.</b>
                                                                                  <h4 class="text-center text-danger"><b>Thank You!</b></h4>
                                                                                    </p>
                                                                              </div>
                                                                              <div class="modal-footer">
                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                                <button type="button" class="btn btn-primary" id="login">Login</button>
                                                                              </div>
                                                                            </div>
                                                                          </div>
                                                                        </div>
                                                                <!--More information-->
                                                            </div>
                                                    </div>
                                                </div>
                                            </div>                      
                                     </ItemTemplate>
                          </asp:Repeater>

</asp:Content>
