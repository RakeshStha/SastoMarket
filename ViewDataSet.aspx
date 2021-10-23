<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="ViewDataSet.aspx.cs" Inherits="SastoMarket.ViewDataSet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="css/footer.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container m-5 p-5">
        <asp:Repeater ID="Repeater1" class="navbar" runat="server">
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
                                                         <%#Eval("uid") %><br>
                                                        <%#Eval("username") %>
                                                        <br>
                                                    <%#Eval("password") %><br>
                                                     <%#Eval("address") %><br>
                                                   
                                                     
                                                        <br />
                                                        <br />
                                                    </div>

                                        </div>
                                            </ItemTemplate>
        </asp:Repeater>

        </div>
</asp:Content>
