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
        .ads img{
            width:100%;
            height:450px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--Beuty body-->
     <div class="container-fluid ads">
                <img class="img-fluid" src="img/beauty_ads.jpg" />
            </div>

    
        <div class="collection-container"> 
             <h1 class="text-center">Beauty</h1>
            <div class="row">
               
                  <asp:Repeater ID="Product_Beauty" runat="server">
                       <ItemTemplate>
                              <div class="col-sm-4">
                                  <div class="mb-3">
                                       <a style="text-decoration: none;" href='Product_Show.aspx?product_id=<%# Eval("Pid") %>' >
                                            <div class="card">
                                                <div class="card-block text-center">
                                                  <img class="img-fluid" src="Product_Images/<%#Eval("Product_Image") %>" style="height:200px; width:50%">   
                                                  <h4 class="card-title mt-2"><%# Eval("Product_Name")%></h4>
                                                  <p class="card-text"><strong class="animated-text">Rs <%# Eval("Price")%></strong></p>   
                                                  
                                                  <button type="submit" class="btn btn-success m-3">Buy Now</button>
                                                </div>        
                                              </div>
                                      </a>
                                  </div>
                                </div>                       
                       </ItemTemplate>
                  </asp:Repeater>
                    </div>

            </div>







<!--End of Beauty body-->
</asp:Content>
