<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="user_profile.aspx.cs" Inherits="SastoMarket.User_Profile.user_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .active_profile{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
   <div class="container m-5 ">
                        <div class="row heads ">
                                    
                                
                                <div class="col-md-12  text-center" >
                                     <h2 class="text-center" >Profile Information</h2>
                                     <hr>
                                    <div class="row">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                        
                                                    <div class="col-sm-6 ">
                                                    <b>Name</b><br>
                                                    <b>Email</b><br>
                                                    <b>Username</b><br>
                                                    <b>Phone</b><br>
                                                    <b>Address</b><br>
                                                    <b>Country</b><br>
                                                  
                                                    </div>
                                                    <div class="col-sm-6">
                                                         <%#Eval("fullname") %><br>
                                                        <%#Eval("email") %>
                                                         <%#Eval("username") %>
                                                        <br>
                                                    <%#Eval("phone") %><br>
                                                     <%#Eval("address") %><br>
                                                         <%#Eval("country") %><br>
                                                   
                                                     
                                                        <br />
                                                        <br />
                                                    </div>
                                         
                                     
                                            </ItemTemplate>
                                    </asp:Repeater>
                                       </div>
                               
                                       <!-- <div class="text-center">
                                            <button type="button">Edit</button>
                                        </div>-->

                                </div>
                        </div>
                   </div>
    
           

</asp:Content>
