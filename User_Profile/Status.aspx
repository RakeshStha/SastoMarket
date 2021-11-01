<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="SastoMarket.User_Profile.Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .active_status{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container p-5">
    <h1 class="text-center">Order Status</h1>
            <asp:Repeater ID="Repeater1" runat="server" >
                   <ItemTemplate>
                       <div class="card m-5">
                           
                           <div class="card-header">
                                            Invoice
                                <strong><%# Eval("order_date") %></strong> 
                                  <span class="float-right"><strong>Status:</strong> <%# Eval("status") %></span>
            
                                </div>

                           <div class="row">
                              <div class="col-sm-6">
                            <div class="card border-0">
                                <div class="card-body ">
                                    <div ><strong>Order ID:</strong> <%# Eval("oid") %></div>

                                            <div ><strong>Name:</strong> <%# Eval("user_names") %></div>
                                          
                                            <div><strong>Product Name:</strong>  <%# Eval("product_name") %></div>
                                            <div><strong>Product Type:</strong>  <%# Eval("product_type") %></div>
                
                                            <div><strong>Price:</strong>  <%# Eval("price") %></div>
                                            <div><strong>Quantity:</strong>  <%# Eval("quantity") %></div>
                                    <hr />
                                            <div><strong>Total Price:</strong>  <%# Eval("total_price") %></div><br />
                                        
                                            </div>
                                            </div>
          
                                  </div>
                           </div>
                       </div>
                   </ItemTemplate>
            </asp:Repeater>
        </div>
</asp:Content>
