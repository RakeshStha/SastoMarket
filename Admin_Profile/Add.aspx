<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="SastoMarket.Admin_Profile.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add</title>
    <style>
        .add{
            border-radius:10px;
        }
        .add:hover{
            background-color: aqua;
        }
        .add-1{
            background-color:#eba448;
        }
        .add-2{
            background-color:#cf71ec;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-5">
       
            <div class="row">
                
                       <div class="col p-4 m-3 add-1 add" ">
                           <a href="Add_Product.aspx" style="text-decoration:none;">
                        <div class="d-flex justify-content-center align-content-center">
                            <div style="margin-right: 10px">
                                 <i class="fa fa-shopping-basket" aria-hidden="true" style="color:black"></i>
                            </div>
                            <div>
                                <h3>Add Products</h3>
                            </div>
                        </div>
                         </a>
                    </div>
               
                
               
                    <div class="col p-4 add-2 m-3 add">
                         <a href="Add_User.aspx" style="text-decoration:none;">
                        <div class="d-flex justify-content-center align-content-center">
                            <div style="margin-right: 10px;">
                                <i class="fa fa-user-plus" aria-hidden="true" style="color:black"></i>
                            </div>
                            <div>
                                <h3>Add Users</h3>
                            </div>
                         </div>
                              </a>
                    </div>
                
            </div>
        </div>
  

</asp:Content>
