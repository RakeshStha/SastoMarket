<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="SastoMarket.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>SignUp</title>
    <link rel="stylesheet" href="css/footer.css" />
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
                <asp:TextBox ID="Fullname" runat="server"  class="form-control"  placeholder="Your name"></asp:TextBox>

            </div> 
            <div class="col form-group">
                <label>Address</label>
                <asp:TextBox ID="Address" class="form-control" runat="server" placeholder="Your Address"></asp:TextBox>
            </div> 
        </div> 

        <div class="form-row">
            <div class="col form-group" >
                <label>Phone </label> 
                <asp:TextBox ID="Phone" class="form-control" runat="server" placeholder="Your number"></asp:TextBox>
            </div> 
            <div class="col form-group">
                <label>Date of Birth</label>
                 <asp:TextBox ID="Dob" class="form-control" runat="server" placeholder="Your Date of birth"></asp:TextBox>
             
                
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
            <asp:TextBox ID="Username"  class="form-control" runat="server" placeholder="Username"></asp:TextBox>
       
       
        </div> 
        <div class="form-group col-md-6">
            <label>Password</label>
            <asp:TextBox type="password" class="form-control" ID="Password" placeholder="******" runat="server"></asp:TextBox>
     
        </div>
        </div>
        <div class="form-group">
            <div class="text-center">
                <asp:Button ID="Button2" runat="server" OnClick="SignUp_Click" Text="SignUp" />
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
