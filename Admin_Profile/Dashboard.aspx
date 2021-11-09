<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SastoMarket.Admin_Profile.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container-fluid">
              
             
            
              <!--View-->
           
                    <div class="container">
                         <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                   <h2 class="text-center"><b>Welcome  <%#Eval("username") %> ! </b></h2>
                                 <hr>
                                <br />
                                <h4 class="text-center">Your Profile Information</h4>
                                <br />
                                <hr>
                                        <div class="row text-center">
                                                    <div class="col-sm-6 ">
                                                    <b>Name</b><br>
                                                    <b>Email</b><br>
                                                    <b>Phone</b><br>
                                                    <b>Address</b><br>
                                                  
                                                    </div>
                                                    <div class="col-sm-6">
                                                         <%#Eval("username") %><br>
                                                        <%#Eval("email") %>
                                                        <br>
                                                    <%#Eval("phone") %><br>
                                                     <%#Eval("address") %><br>
                                                   
                                                     
                                                        <br />
                                                        <br />
                                                    </div>

                                        </div>
                                
                                
                                            </ItemTemplate>
                        </asp:Repeater>


                       <h2 class="text-center"><b>Dashboard View</b></h2>
                        <hr />
                        <br />
                        <div class="row">
                            
                                    <div class="col-3">
                                        <div class="card text-center p-3">
                                             <h6 class="color: green"> Total available User: <asp:Label ID="ttlusr" runat="server" Text=""></asp:Label></h6>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="card text-center p-3">
                                             <h6 class="color: green"> Total available Product: <asp:Label ID="ttlpdt" runat="server" Text=""></asp:Label> </h6>
                                        </div>
                                    </div><br /><br /><br />
                                    <div class="col-3">
                                        <div class="card text-center p-3">
                                             <h6 class="color: green"> Total contact messages: <asp:Label ID="contactmsg" runat="server" Text=""></asp:Label> </h6>
                                        </div>
                                    </div>
                             <div class="col-3">
                                        <div class="card text-center p-3">
                                             <h6 class="color: green"> Total orders: <asp:Label ID="orderss" runat="server" Text=""></asp:Label> </h6>
                                        </div>
                                    </div>
                                    
                                </div>
                        <br />

                       
                        
                        <hr>
                        
                
                        </div>

              <!--End view-->
            
              
    </div>
</asp:Content>
