<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SastoMarket.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <!--Login-->
                <div class="container">
                    <div class="row">
                    <div class="col-sm-6">
                        <div class="side-login-1">
                            <img class="img-fluid" src="img/Logo_Navbar_.png" alt="Company_Logo"/>
                            <h2>Welcome Back</h2>
                        </div>
                        <hr>

                        <form class="form-login">
                            <div class="mb-3">
                              <label for="Email" class="form-label-login">Email address</label>
                              <input type="email" class="form-control" id="Email" placeholder="abc@gmail.com">
                              <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                            </div>
                            <div class="mb-3">
                              <label for="InputPassword" class="form-label-login">Password</label>
                              <input type="password" class="form-control" id="InputPassword" placeholder="******">
                            </div>
                            <div class="mb-3 form-check">
                              <input type="checkbox" class="form-check-input" id="exampleCheck1">
                              <label class="form-check-label" for="exampleCheck1">Keep me logged in</label>
                            </div>
                            <button type="submit" class="btn btn-primary" style="width: 100%; text-align: center; font-weight: 700;">Log In</button>
                          </form>

                          <p class="login-below-text">Don't have an account? <span class="login-to-singup">Sign Up</span></p>
            
                    </div>
                    <div class="col-sm-6">
                        <div class="row side-login-2">
                            <div class="col">
                                <img class="img-fluid" src="img/Login_cart.png" alt="Login-Cart">
                            </div>
                            <div class="col">
                                <h3>SastoMarket</h3>
                                <p class="login-below-text">Online shopping will make you feel better</p>
                                <button class="start-shopping">START SHOPPING</button>
                            </div>
                        </div>
                        <div class="login-ilustration">
                            <img class="img-fluid" src="img/Login_Illustration.png" alt="Login_Illustration" >
                        </div>
                        </div>
                    </div>
                </div>

</asp:Content>
