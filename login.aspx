<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SastoMarket.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

    <title>Login</title>
    <link rel="stylesheet" href="css/login.css" />
    <link rel="stylesheet" href="css/footer.css"/>
    <style>
        .active_login_btn{
            color:#f49304;
        }
    </style>
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

                        <div class="form-login">
                            <div class="mb-3">
                                <div style="color:red;">
                                     <asp:Literal ID="ltrMessage"   runat="server"></asp:Literal>
                                </div>
                              <label for="Username" class="form-label-login">Username</label>
                              <asp:TextBox class="form-control" ID="Username" placeholder="Username" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" controlToValidate="Username" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
                              <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                            </div>
                            <div class="mb-3">
                              <label for="Password" class="form-label-login">Password</label>
                              <asp:TextBox type="password" class="form-control" ID="Password" placeholder="******"  runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" controlToValidate="Password" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <!--
                            <div class="mb-3 form-check">
                              <input type="checkbox" class="form-check-input" id="exampleCheck1">
                              <label class="form-check-label" for="exampleCheck1">Keep me logged in</label>
                            </div>-->
                            <asp:Button ID="Button1" class="btn btn-primary" style="width: 100%; text-align: center; font-weight: 700;" runat="server" OnClick="Login_Btn" Text="Login" />

                            <!--<asp:Button class="btn btn-primary" style="width: 100%; text-align: center; font-weight: 700;" Text="Login" runat="server" OnClick="Login_Btn"/>
                          -->
                                </div>

                          <p class="login-below-text">Don't have an account? <span class="login-to-singup"><a href="signup.aspx">Sign Up</a></span></p>
            
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
