<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeFile="Add_User.aspx.cs" Inherits="SastoMarket.Add_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        label{
            font-weight:600;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container p-5">
        <div class="form-row">
            <div class="col form-group" >
                <label>Full Name </label> 
                <asp:TextBox ID="Fullname" runat="server"  class="form-control"  placeholder="Your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Fullname" runat="server" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>

            </div> 
            <div class="col form-group">
                <label>Address</label>
                <asp:TextBox ID="Address" class="form-control" runat="server" placeholder="Your Address"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" controlToValidate="Address" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            </div> 
        </div> 

        <div class="form-row">
            <div class="col form-group" >
                <label>Phone </label> 
                <asp:TextBox ID="Phone" class="form-control" runat="server" placeholder="Your number"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" controlToValidate="Phone" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            </div> 
        
            <div class="col form-group">
                <label>Date of Birth</label>
                
                <asp:TextBox type="date" class="form-control" ID="Dob"  runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" controlToValidate="Dob" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            </div> 
            </div>
     
                
 

        
        <div class="row">
        <div class="form-group col-md-6">
            <label>Email</label>
            <asp:TextBox ID="Email" class="form-control" placeholder="abc@gmail.com" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" controlToValidate="Email" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            
        </div> 
           

           
        <div class="form-group col-md-6">
            <div class="row">
                <div class="form-group col-md-3">
              <label>Country</label>
                 <asp:DropDownList ID="Country" class="form-control" runat="server">
                     <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                     <asp:ListItem Value="India">India</asp:ListItem>
                     <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                    </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" controlToValidate="Country" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group col-md-3">
                  <label>Role</label>
                 <asp:DropDownList ID="Role" class="form-control" runat="server">
                     <asp:ListItem Value="user">User</asp:ListItem>
                     <asp:ListItem Value="admin">Admin</asp:ListItem>
                   
                    </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" controlToValidate="Country" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            
           
            
            </div> 
             </div> 

           
      
   
        <!-- form-group end.//
    
        <div class="form-row">
            <div class="form-group col-md-6">
              <label>City</label>
              <input type="text" class="form-control" name="address" placeholder="Address">
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
             / -->
         <!-- form-row.// -->
        <div class="form-row">
        <div class="form-group col-md-6" >
            <label>City</label>
            <asp:TextBox ID="City"  class="form-control" runat="server" placeholder="Your City"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" controlToValidate="City" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            </div> 
        <div class="form-group col-md-6">
            <label>Username</label>
            <asp:TextBox ID="Username"  class="form-control" runat="server" placeholder="Username"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" controlToValidate="Username" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            </div> 
        </div>
       
         <div class="form-row">
        <div class="form-group col-md-6" >
           
        <label>Password</label>
            <asp:TextBox type="password" class="form-control" ID="Password" placeholder="******" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" controlToValidate="Password" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            
        </div> 
        <div class="form-group col-md-6">
            <label>Confirm Password</label>
            <asp:TextBox type="password" class="form-control" ID="Password2" placeholder="******" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" controlToValidate="Password2" ErrorMessage="This field is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="Password2" ErrorMessage="Password does not match !" ForeColor="Red" ValueToCompare="Password2" ControlToCompare="Password"></asp:CompareValidator>
        </div>
        </div>
        <div class="form-group">
            <div class="text-center">
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" OnClick="Add_Click" Text="Add" />
            </div>
        </div>

      
    </div><!--Signuo-->
      
    


</asp:Content>
