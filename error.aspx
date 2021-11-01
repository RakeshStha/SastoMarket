<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="SastoMarket.error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>404 ERROR</title>
    <style>
        .error-head{
            padding-top: 5px;
            text-align: center;
            background-image: url(https://cdn.dribbble.com/users/285475/screenshots/2083086/dribbble_1.gif);
            height: 400px;
            background-position: center;
        }

        .error-head  h1{
            font-size: 40px;
            color: #4e1215;
        }

        .contant_box_404  h2{
            font-size: 28px;
            color: #4e1215;
        }


        .contant_box_404{ 
            margin-top:-100px;
            text-align: center;
            color: black;
        }
        .link_404{			 
	        color: #fff!important;
            padding: 10px 20px;
            background: #39ac31;
            margin: 20px 0;
            display: inline-block;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="error-head">
                <h1>OOPs! 404 Error</h1>  
            </div>
            <div class="contant_box_404">
                <h2>Look like you're lost</h2>
                <p>the page you are looking for not avaible!</p>
                <a href="home.aspx" class="link_404">Go to Home</a>
            </div>
    </form>
</body>
</html>
