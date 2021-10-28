<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeFile="Beauty.aspx.cs" Inherits="SastoMarket.Beauty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>BEAUTY</title>

     <link rel="stylesheet" href="css/card.css">
    <link rel="stylesheet" href="css/footer.css" />

    <style>
        .active_beauty{
            color:#f49304;
        }
        .collection-container{
    padding: 20px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--Beuty body-->

        <div class="collection-container"> 
            <div class="row">
                  <asp:Repeater ID="Repeater1" runat="server">
                       <ItemTemplate>
                              <div class="col-sm-4">
                                  <div class="mb-3">
                                    <div class="card">
                                        <div class="card-block text-center">
                          
                                          <img class="img-fluid" src="img/<%#Eval("Product_Image") %>">
                                           
                                          <h4 class="card-title mt-2"><%# Eval("Product_Name")%></h4>
                                          <p class="card-text"><strong class="animated-text">Rs <%# Eval("Price")%></strong></p>   
                                            <p><%# Eval("Product_Description")%></p>
                                          <button type="submit" class="btn btn-success m-3">Buy Now</button>
                                        </div>        
                                      </div>
                                  </div>
                                </div>                       
                       </ItemTemplate>
                  </asp:Repeater>

            </div>
          </div>



<!--End of Beauty body-->
</asp:Content>
