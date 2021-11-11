<%@ Page Title="" Language="C#" MasterPageFile="~/User_Profile/User_Profile.Master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="SastoMarket.User_Profile.FeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Feed Back</title>
    <style>
        .active_feedback{
            color:#f49304;
        }
        .bold{
            font-weight: 600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="container d-flex align-items-center justify-content-center">
     
<div class="row " style="margin: 50px">
    <div class="align-items-center card p-5" style="box-shadow: -1px 8px 21px -5px grey;">
        <h1>Feedback</h1>

         <div class="alert alert-warning alert-dismissible fade show" role="alert" ID="Label1" runat="server"  Visible="false">
          <strong>Oops!</strong> Something went wrong. Please try again. Thank you!
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="alert alert-success alert-dismissible fade show" role="alert" ID="Label2" runat="server"  Visible="false">
          <strong>Hooray!</strong> Feedback send successful. Thank you!
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        
    
        <p class="bold">
            Please provide your feedback below:
        </p>
        <div class="p-3">
            <div class="row">
                <div class="col-sm-12 form-group">
                    
                <label class="bold">How do you rate your overall experience on website?</label>
                <p>
                    <label class="radio-inline">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="onwebsite"/>
                    Bad
                    </label>

                    <label class="radio-inline">
                   <asp:RadioButton ID="RadioButton2" runat="server" GroupName="onwebsite" />
                    Average
                    </label>

                    <label class="radio-inline">
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="onwebsite" />
                    Good
                    </label>
                </p>
                </div>
            </div> 
            <div class="row">
                <div class="col-sm-12 form-group">
                    
                <label class="bold">How do you rate your overall experience on our product?</label>
                <p>
                    <label class="radio-inline">
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="onproduct"/>
                    Bad
                    </label>

                    <label class="radio-inline">
                   <asp:RadioButton ID="RadioButton5" runat="server" GroupName="onproduct"/>
                    Average
                    </label>

                    <label class="radio-inline">
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="onproduct"/>
                    Good
                    </label>
                </p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 form-group">
                    <label for="comments" class="bold">
                        Comments:</label>
                    <asp:TextBox ID="TextBox1" runat="server"  class="form-control"  required></asp:TextBox>
                
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 form-group">
                    <label for="name">
                        Your Name:</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Your Name" required></asp:TextBox>
                   
                </div>
                <div class="col-sm-6 form-group">
                    <label for="email">
                        Email:</label>
                    <asp:TextBox type="email" ID="TextBox3" runat="server" class="form-control" placeholder="Your Email" required></asp:TextBox>
                </div>
            </div>
            
                        <div class="row">
                <div class="col-sm-12 form-group">
                    <asp:Button ID="Button1" class="btn btn-lg btn-warning btn-block" runat="server" Text="Post" OnClick="Button1_Click" />
                    
                </div>
            </div>

        </div>
  
        
    </div>
</div>
      </div>
      
</asp:Content>
