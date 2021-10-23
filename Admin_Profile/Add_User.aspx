<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeFile="Add_User.aspx.cs" Inherits="SastoMarket.Add_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        label{
            font-weight:600;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="card" style="margin: 10px; padding:25px;">
                                    
                 <div class="card-title ">
                                <h1 class="text-center">Add User</h1>
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
                <div class="form-row">
                <div class="form-group col-md-6" >
                    <label>User Role</label>
                </div> 
                <div class="form-group col-md-6">
                    <div class="form-group col-md-6">
                      <select id="" name="role" class="form-control">
                        <option name="role"> Choose...</option>
                          <option name="role" value="admin">Admin</option>
                          <option name="role" value="user">User</option>
        
                      </select>
                    </div> 
                </div>
                </div>
        <div class="form-group">
            <div class="text-center">
                <asp:Button ID="Button2" class="btn btn-primary"  runat="server" Text="SignUp"  />
            </div>
            

        </div>

</asp:Content>
