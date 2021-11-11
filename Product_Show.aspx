<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="Product_Show.aspx.cs" Inherits="SastoMarket.Product_Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Product_view</title>
    <link rel="stylesheet" href="css/Product_view.css">
     <link rel="stylesheet" href="css/footer.css" />
    <style>
        .modal {
          display: none; /* Hidden by default */
          position: fixed; /* Stay in place */
          z-index: 1; /* Sit on top */
         /* Location of the box */
          left: 0;
          top: 0;
          width: 100%; /* Full width */
          height: 100%; /* Full height */
          overflow: auto; /* Enable scroll if needed */
          background-color: rgb(0,0,0); /* Fallback color */
          background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */

        /* The Close Button */
        .close {
          color: #aaaaaa;
          float: right;
          font-size: 28px;
          font-weight: bold;
        }

        .close:hover,
        .close:focus {
          color: #000;
          text-decoration: none;
          cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
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
                                                        <img class="img-fluid" src="img/rating3.jpg" />
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
                                                               
                                                              <asp:DropDownList ID="DropDownList1" runat="server" class="addtocart-btn qty">
                                                                  <asp:ListItem Value="None">Please Select</asp:ListItem>  
                                                                   <asp:ListItem Value="1">1</asp:ListItem>
                                                                   <asp:ListItem Value="2">2</asp:ListItem>
                                                                   <asp:ListItem Value="3">3</asp:ListItem>
                                                                   <asp:ListItem Value="4">4</asp:ListItem>
                                                                   <asp:ListItem Value="5">5</asp:ListItem>
                                                                   <asp:ListItem Value="6">6</asp:ListItem>

                                                              </asp:DropDownList>  
                                                             
                                                            </div>
                                                            <div class="addtocart-big-btn">
 
                                                              
                                                                <!-- Button trigger modal -->
                                                                <label class="addtocart-btn btn-big" id="myBtn">Buy Now</label>
                                                                <!-- The Modal -->
                                                                <div id="myModal" class="modal">

                                                             <div class="modal-dialog modal-dialog-centered">
                                                                            <div class="modal-content">
                                                                              <div class="modal-header">
                                                                                <h5 class="modal-title" ><h3 class="text-danger"><i class="fa fa-frown-o" aria-hidden="true"></i>  Oops!........</h3></h5>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                  <span aria-hidden="true">&times;</span>
                                                                                </button>
                                                                              </div>
                                                                              <div class="modal-body">
                                                                                <p class="text-center text-danger" style="font-size:20px;"> <b>Please signup or login to your account to add item to your cart.</b>
                                                                                  <h4 class="text-center text-danger"><b>Thank You!</b></h4>
                                                                                    </p>
                                                                              </div>
                                                                              <div class="modal-footer d-flex align-items-center">
                                                                               <div>
                                                                                   <a href="Login.aspx"> <button type="button" class="btn btn-primary" id="login">Login</button></a>
                                                                               </div>
                                                                               
                                                                              </div>
                                                                            </div>
                                                                    <script>
                                                                        // Get the modal
                                                                        var modal = document.getElementById("myModal");

                                                                        // Get the button that opens the modal
                                                                        var btn = document.getElementById("myBtn");

                                                                        // Get the <span> element that closes the modal
                                                                        var span = document.getElementsByClassName("close")[0];

                                                                        // When the user clicks the button, open the modal 
                                                                        btn.onclick = function () {
                                                                            modal.style.display = "block";
                                                                        }

                                                                        // When the user clicks on <span> (x), close the modal
                                                                        span.onclick = function () {
                                                                            modal.style.display = "none";
                                                                        }

                                                                        // When the user clicks anywhere outside of the modal, close it
                                                                        window.onclick = function (event) {
                                                                            if (event.target == modal) {
                                                                                modal.style.display = "none";
                                                                            }
                                                                        }
                                                                    </script>

                                                                       
                                                                <!--More information-->
                                                                    </div>
                                                            </div>
                                                    </div>
                                                </div>
                                            </div>                      
                                     </ItemTemplate>
                          </asp:Repeater>

</asp:Content>
