<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DDAC_Assign_Final.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>DDAC Assignemnent</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    @Styles.Render("~/Content/css")
    @Scripts.Render("~/bundles/modernizr")
  
    <style>
        
html { width: 100%; height:100%; overflow:hidden; }

body { 
	 background-image: url(Images/tablesinoffice.jpg);
}
.login { 
	position: absolute;
	top: 70%;
	left: 50%;
	margin: -150px 0 0 -150px;
	width:300px;
	height:300px;
}
.login h1 { color: #fff; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

input { 
	width: 100%; 
	margin-bottom: 10px; 
	background: rgba(0,0,0,0.3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
   -webkit-transition: box-shadow .5s ease;
   -moz-transition: box-shadow .5s ease;
   -o-transition: box-shadow .5s ease;
   -ms-transition: box-shadow .5s ease;
    transition: box-shadow .5s ease;
}
 div.Image1{
    padding-left:30px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">C M S</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="Default.aspx">Home</a></li>
                        <li><a runat="server" href="About.aspx">About</a></li>
                        <li><a runat="server" href="Contact.aspx">Contact</a></li>
                    </ul>
                   
                            <ul class="nav navbar-nav navbar-right">
                               
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                            </ul>          
                </div>
            </div>
        </div>
        <br><br><br>
         <center><font color="white"> <b> <h1> WELCOME to NORTH EUROPE </h1></b></font></center>
        <div class="Image1">
      <asp:Image ID="Image1" runat="server"  ImageUrl="~/Images/cmslogo.jpg" BorderStyle="Groove"/>.
            </div>
          
         <div class="container">
            
         
          <div class="login">
             
              <br><br>
	          <center><font color="white"><h2><b>Log in </b></h2>

              <asp:TextBox ID="id" placeholder="Email" runat="server" required></asp:TextBox>
              <asp:TextBox ID="pass" placeholder="Password" type="password" runat="server" required></asp:TextBox>

              <asp:Button ID="loginbutton" runat="server" Text="Log in" class="btn btn-primary" OnClick="loginbutton_Click"/>
              
</div>   
             </div>  
    </form>          
</body>
</html>
