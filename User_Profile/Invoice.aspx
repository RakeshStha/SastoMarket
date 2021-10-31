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
      <div class="container">
        <div class="row">
    <div class="col-sm-12">
    <div class="card">
        
             <div class="card-header">
         Invoice
            <strong></strong> 
              <span class="float-right"><strong>Status:</strong> Pending</span>
            
            </div>
            
        <div class="row">
               
    
            
      <div class="col-sm-6">
        <div class="card border-0">
            <div class="card-body ">
                <div><strong>Name:</strong> Rakesh&nbsp;Shrestha</div>
                <div><strong>Email:</strong> </div>
                <div><strong>Address:</strong> Godawari</div>
                <div><strong>Time for booking:</strong> </div>
                <div><strong>Day:</strong> Sunday</div>
                <div><strong>Price:</strong> Rs. 1000 /-</div>
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
                    <b>esewa id:</b> <span>abc@futsal.host(Name on account: Rakesh Shrestha)</span>
                </div>
                <div>
                    <b>Khalti id:</b> <span>9849497787 (Name on account: Rakesh Shrestha)</span>
                </div>
                <div><b>Referance Number:</b> <span>2568</span></div>
                <hr>
                <div class="text-center"><strong>Total Due: NPR 1,000</strong></div>
                
               
                
            </div>
        </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      
   
      
      </div>
      </div>
</asp:Content>
