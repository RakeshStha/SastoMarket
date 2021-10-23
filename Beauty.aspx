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
                <div class="col">
                    <div class="card">
                        <div class="card-block text-center">
                          
                          <img class="img-fluid" src="img/gadgets/electronic_computer.png">
                          <h4 class="card-title mt-2">Computer</h4>
                          <p class="card-text"><strong class="animated-text">Rs 50,000</strong></p>       
                          <button type="submit" class="btn btn-success m-3">Buy Now</button>
                        </div>        
                      </div>
                </div>
              <div class="col">
                <div class="card">
                    <div class="card-block text-center">
                    <img class="img-fluid" src="img/gadgets/electronic_samsung_mobile.png">
                    <h4 class="card-title mt-2">Samsung galaxy</h4>
                    <p class="card-text"><strong class="animated-text">Rs 25,000</strong></p>     
                    <button type="submit" class="btn btn-success m-3">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-block text-center">
                    
                    <img class="img-fluid" src="img/gadgets/electronic_samsung_mobile.png">
                    <h4 class="card-title mt-2">Samsung galaxy</h4>
                    <p class="card-text"><strong class="animated-text">Rs 25,000</strong></p>   
                    <button type="submit" class="btn btn-success m-3">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-block text-center">
                    
                    <img class="img-fluid" src="img/gadgets/electronic_samsung_mobile.png">
                    <h4 class="card-title mt-2">Samsung galaxy</h4>
                    <p class="card-text"><strong class="animated-text">Rs 25,000</strong></p>
                    <button type="submit" class="btn btn-success m-3">Buy Now</button>  
                    </div>
                </div>
            </div>
    
            <div class="col">
              <div class="card">
                <div class="card-block text-center">
                  
                  <img class="img-fluid" src="img/gadgets/electronic_computer.png">
                  <h4 class="card-title mt-2">Computer</h4>
                  <p class="card-text"><strong class="animated-text">Rs 50,000</strong></p>       
                  <button type="submit" class="btn btn-success m-3">Buy Now</button>
                </div>        
              </div>
            </div>

            </div>
          </div>



<!--End of Beauty body-->
</asp:Content>
