<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="SastoMarket.User_Profile.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Invoice</title>
    <style>
        .active_invoice{
            color:#f49304;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                 <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                <div class="container p-1">
                            <div class="row">
                        <div class="col-sm-12">
                        <div class="card">
        
                                 <div class="card-header">
                                            Invoice
                                <strong><%# Eval("order_date") %></strong> 
                                  <span class="float-right"><strong>Status:</strong> <%# Eval("status") %></span>
            
                                </div>
            
                            <div class="row">
               
    
            
                          <div class="col-sm-6">
                            <div class="card border-0">
                                <div class="card-body ">
                
                                            
                                            <div ><strong>Name:</strong> <%# Eval("user_names") %></div>
                                          
                                            <div><strong>Product Name:</strong>  <%# Eval("product_name") %></div>
                                            <div><strong>Product Type:</strong>  <%# Eval("product_type") %></div>
                
                                            <div><strong>Price:</strong>  <%# Eval("price") %></div>
                                            <div><strong>Quantity:</strong>  <%# Eval("quantity") %></div>
                                            <div><strong>Total Price:</strong>  <%# Eval("total_price") %></div><br />
                                           <div class="text-center"><asp:LinkButton ID="LinkButton1"  CommandName="Delete" OnClientClick="javascript:if(!confirm('Delete this information? This will delete permanently'))return false;" CommandArgument='<%# Eval("oid") %>' runat="server" style="background-color:darkred; padding:8px; " ForeColor="White" Font-Bold="True" BorderColor="Black"  >Delete</asp:LinkButton></div>
                                            </div>
                                            </div>
          
                                  </div>

      
                                          <div class="col-sm-6">
                                            <div class="card border-0">
                                                <div class="card-body" style="font-size:12px;">
                                                    <div class="card-header">
                                                        <strong>Payment Method:</strong>
                                                    </div>
                                                    <div class="table-responsive-sm">
                                                      <table class="table table-striped">
                                                      <thead>
                                                      <tr>
                                                      <th><a href="https://esewa.com.np/#/home"><img src="https://ictframe.com/wp-content/uploads/eSewa-logo.png" alt="esewa" style="width: 90%; height: 70px;"></a></th>
                                                      <th><a href="https://khalti.com/"><img src="https://upload.wikimedia.org/wikipedia/commons/e/ee/Khalti_Digital_Wallet_Logo.png.jpg" alt="khalti" style="width: 90%; height: 70px;"></a></th>
                                                      </tr>
                                                      </thead>
                                                      </table>
                                                    </div>

                                                      <div>
                                                        <b>esewa id:</b> <span>woodlandfurnishing@woodland.host(Name on account: Woodland Company)</span>
                                                    </div>
                                                    <div>
                                                        <b>Khalti id:</b> <span>9849497787 (Name on account: Woodland)</span>
                                                    </div>
                
                                                    <hr>
                                                    <div class="text-center"><strong>Total Due: NPR <%# Eval("total_price") %></strong></div>
                
               
                
                                                </div>
                                            </div>
                                          </div>
                                          </div>
                                          </div>
                                          </div>
                                          </div>
      
   
      
                                          </div>
                                          </div>

                              <br />  
                            </ItemTemplate>
                        </asp:Repeater> 
</asp:Content>
