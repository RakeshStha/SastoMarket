<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="SastoMarket.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .signup-container{
            margin: 20px;
        }

        .signup-form {
            padding: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup-container">

    <div class="row justify-content-center">
    <div class="col-md-11">
    <div class="card">
    <div class="card-header">
        
        <h1 class="card-title mt-2" style="color:blue;" >Sign up</h1>
        <small>
            It's Easy and quick just fill up the form.
        </small>
    </div>

    <div class="signup-form">
        <div class="form-row">
            <div class="col form-group" >
                <label>Full Name </label>   
                  <input type="text" class="form-control" name="fullname" ID="fullname" placeholder="Your name" runat="server"/>

            </div> 
            <div class="col form-group">
                <label>Address</label>
                  <input type="text" class="form-control" name="address" placeholder="Your Address" id="address" runat="server"/>
            </div> 
        </div> 

        <div class="form-row">
            <div class="col form-group" >
                <label>Phone </label>   
                  <input type="number" class="form-control" name="phone" ID="phone" placeholder="Your name" runat="server"/>
            </div> 
            <div class="col form-group">
                <label>Date of Birth</label>
                  <input type="date" class="form-control" name="dob" ID="dob" placeholder="Your Address" runat="server"/>
            </div> 
        </div> 

        <!-- 
        <div class="row">
        <div class="form-group col-md-6">
            <label>Email</label>
            <input type="email" name="email" class="form-control" placeholder="abc@gmail.com">
            <small class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div> 

        <div class="form-group col-md-6">
            <label>Gender</label><br>
                <label class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="gender" value="Male">
              <span class="form-check-label"> Male </span>
            </label>
            <label class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="gender" value="Female">
              <span class="form-check-label"> Female</span>
            </label>
            <label class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" value="Custom">
                <span class="form-check-label"> Custom</span>
              </label>
        </div> 
        </div>
        
        <!-- form-group end.//
    
        <div class="form-row">
            <div class="form-group col-md-6">
              <label>City</label>
              <input type="text" class="form-control" name="address" placeholder="Address">
            </div> 
         
    
            <div class="form-group col-md-6">
              <label>Country</label>
              <select id="inputState" name="country" class="form-control">
                <option name="country"> Choose...</option>
                  <option name="country" value="Uzbekistan">Uzbekistan</option>
                  <option name="country" value="Russia">Russia</option>
                  <option name="country" value="United States">United States</option>
                  <option name="country" value="India">India</option>
                  <option name="country" value="Afganistan">Afganistan</option>
                  <option name="country" value="Nepal" selected="Nepal">Nepal</option>
                  <option name="country" value="Australia" >Australia</option>
                  <option name="country" value="China">China</option>
              </select>
            </div> 
         
        </div>
             / -->
         <!-- form-row.// -->
         <div class="form-row">
        <div class="form-group col-md-6" >
            <label>Username</label>
            <input class="form-control" name="usernames" ID="usernames" runat="server" placeholder="Username" />
       
        </div> 
        <div class="form-group col-md-6">
            <label>Password</label>

             <input type="password" class="form-control" ID="password" placeholder="******"  runat="server" />
        </div>
        </div>
        <div class="form-group">
            <div class="text-center">
                <asp:Button ID="Button2" class="btn btn-primary"  runat="server" Text="SignUp" OnClick="Button2_Click()" />
            </div>
            

        </div>
        <!-- form-row end.
        <div class="form-group">
          
                Text="Sign Up" OnClick="SignUp_Btn"

            
        </div> 
        <!-- form-group// --> 
        <div class="border-top card-body text-center">Have an account? <a href="login.aspx">Log In</a></div> 
        <!-- form-group// --> 
      <!-- Instructions -->
      <div class="row">
        <div class="alert alert-success col-md-12" role="alert" id="notes">
          <h4>NOTES</h4>
          <ul>
            <li>By clicking the 'Sign Up' button, you confirm that you accept our Terms of use and Privacy Policy.</li>
            <li>You will recieve your account verification link on your mail after you registered. Click on that link for  your account activation.</li>
          </ul>
        </div>
      </div>
    </div><!--Signuo-->
    
    <!-- card-body end .// -->
    </div> <!-- card.// -->
    </div> <!-- col.//-->
    
    </div> <!-- row.//-->
    
   </div>
</asp:Content>
