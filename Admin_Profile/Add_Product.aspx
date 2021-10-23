<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Profile/Admin_Profile.Master" AutoEventWireup="true" CodeFile="Add_Product.aspx.cs" Inherits="SastoMarket.Admin_Profile.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="container">
         <div class="card" style="margin: 10px; padding:25px;">
                                    
                                <div class="card-title text-center">
                                <h1>Add products</h1>
                                    <p runat="server"  id="correct" style="color:green"> 
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </p>
                                </div>
                                        <div class="form-group">
                                            <label class="b">Name of product:
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                             <input type="text" runat="server" class="form-control" placeholder="Name of product" id="name"  >

                                        </div>
                                        <div class="form-group">
                                            <label  class="b">Price :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="price" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                            <input type="number" runat="server" class="form-control" id="price" rows="1" name="price" />
                                        </div>


                                         <div class="form-group">
                                            <label class="b">Category:
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="type" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                             <select id="type" runat="server" class="form-control"  >
                                            <option selected>Choose...</option>
                                            <option value="Men">Men</option>
                                            <option  value="Kid">Kid</option>
                                            <option  value="Women">Women</option>
                                            <option  value="Beauty">Beauty</option>
                                            <option  value="Others">Other</option>
                                            </select>
                                
                                        </div>

                                        <div class="form-group">
                                            <label  class="b">Description :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="description" ErrorMessage="*" ForeColor="Red" Width="16px" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                                            </label>
                                            <textarea runat="server" class="form-control" id="description" rows="4" name="description"></textarea>
                                        </div>
                                        
                                        <div class="form-group">
                                           
                                            <label class="b">Please upload photo of product :
                                                
                                            </label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                            

                            

                           <!-- <div class="form-group">
                                <label class="b">Entry Date:</label>
                            <input type="date" max="3000-12-31" 
                                    min="1000-01-01" class="form-control" name="entry_date">
                            </div>-->
                            
                                
                            
                            
                           
                            
                            <div class="text-center">
                            <asp:Button runat="server" Text="submit"  class="btn btn-primary mb-2" />
                            
                            </div>
                            
                      
                            </div>
    </div>

</asp:Content>
