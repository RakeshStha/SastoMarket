<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeBehind="user_profile.aspx.cs" Inherits="SastoMarket.User_Profile.user_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .active_profile{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1> User Accounts</h1>
    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                         <h2 class="text-center" >Profile Information</h2>
                                <hr>
                                        <div class="row">
                                                    <div class="col-sm-6 ">
                                                    <b>Name</b><br>
                                                    <b>Email</b><br>
                                                    <b>Phone</b><br>
                                                    <b>Address</b><br>
                                                  
                                                    </div>
                                                    <div class="col-sm-6">
                                                         <%#Eval("name") %><br>
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
</asp:Content>
