<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SastoMarket.Admin_Profile.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
           
            <h2 class="text-center " style="color:#e78200; font-weight: 600;">Welcome Admin - <asp:Label ID="admin" runat="server" Text=""></asp:Label> !</h2>
            <hr>
          
            <!--View-->
        
                  <div class="container">

                      <div class="card m-3">
                        <div class="card-body">
                          <h5 class="card-title text-center">Available User's : <asp:Label ID="ttlusr" runat="server" Text=""></asp:Label></div>
                        </div>
                 
                      <hr>
                      <h4 class="text-center">Products</h4>
                            <div class="row">
                              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                  <div class="card">
                                      <div class="card-body">
                                        <h5 class="card-title text-center">Available Products</h5>
                                      </div>
                                    </div> 
                              </div>
                              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                  <div class="card">
                                      <div class="card-body">
                                        <h5 class="card-title text-center">Available Orders</h5>
                                      </div>
                                    </div> 
                              </div>
                              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="card">
                                    
                                      <div class="card-body">
                                      <h5 class="card-title text-center">Available Messages</h5>
                                        
                                      </div>
                                    </div> 
                              
                              </div>	 
                              
                                
                              
                            
                          </div>		
                          </div>
                </div>

            <!--End view-->
</asp:Content>
