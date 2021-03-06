﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddShipment.aspx.cs" Inherits="DDAC_Assign_Final.AddShipment" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>

         body { 
	  background-image: url(Images/maersklineships.jpg);  
}

.card-container.card {
    max-width: 450px;
    padding: 40px 40px;
}

.btn {
    font-weight: 700;
    height: 36px;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    cursor: default;
}

/*
 * Card component
 */
.card {
    background-color: #F7F7F7;
    /* just in case there no content*/
    padding: 20px 25px 30px;
    margin: 0 auto 25px;
    margin-top: 50px;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
    width: 160px;
    height: 140px;
    margin: 0 auto 10px;
    display: block;
   
}

/*
 * Form styles
 */
.profile-name-card {
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    margin: 10px 0 0;
    min-height: 1em;
}

.reauth-email {
    display: block;
    color: #404040;
    line-height: 2;
    margin-bottom: 10px;
    font-size: 14px;
    text-align: center;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin #inputEmail,
.form-signin #inputPassword,
.form-signin #name
.form-signin #address
.form-signin #city
.form-signin #area 
.form-signin #contact{
    direction: ltr;
    height: 44px;
    font-size: 16px;
}


.btn.btn-signin {
    /*background-color: #4d90fe; */
    background-color: rgb(104, 145, 162);
    /* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
    padding: 0px;
    font-weight: 700;
    font-size: 14px;
    height: 36px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    -o-transition: all 0.218s;
    -moz-transition: all 0.218s;
    -webkit-transition: all 0.218s;
    transition: all 0.218s;
}

.btn.btn-signin:hover,
.btn.btn-signin:active,
.btn.btn-signin:focus {
    background-color: rgb(12, 97, 33);
}
        div.Image1 {
            margin-left:20px;
            height:10px;
            width:10px;
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
                        <li><a runat="server" href="Staffmembers.aspx">Home</a></li>
            
                    </ul>
                   
                            <ul class="nav navbar-nav navbar-right">
                               <li><a href = "Default.aspx"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                            </ul>    
                </div>
            </div>
        </div>
			 
        <br><br><br>
        
         <center><font><h1><b>Welcome Shipment Page Staff</b></h1></font></center>
      
            <div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="Images/searchicon.png" />
            <font><h4><b>Add New Shipment</b></h4></font>
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
               
                <asp:Label ID="Label1" runat="server" Text="*Package ID"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox><br>

                <asp:Label ID="Label2" runat="server" Text="*Email Address"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox><br>

                <asp:Label ID="Label3" runat="server" Text="*Shipment Weight"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox><br>

                <asp:Label ID="Label4" runat="server" Text="Contact No"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox><br>

                <asp:Label ID="Label5" runat="server" Text="*Package ID"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox><br>

                <asp:Label ID="Label6" runat="server" Text="*Ship Number"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox><br>

                <asp:Label ID="Label7" runat="server" Text="*Price"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox><br>

                <asp:Label ID="Label8" runat="server" Text="Current Place"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox><br>

                <asp:Label ID="Label9" runat="server" Text="Destination"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox><br>
          
                <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-lg btn-primary btn-block btn-signin" type="submit" OnClick="Button1_Click"/>
                
            </form><!-- /form -->
			<br><br>
        </div><!-- /card-container -->
		<br>
    </div><!-- /container -->    
         <div>              
			<br><br>
        </div><!-- /card-container -->
		<br>
      <footer>
            <div class="row">
                <div class="col-lg-12">
                   <font color="white"> <p>Copyright &copy; Your Website 2016</p></font>
                </div>
         
        </footer>
    </div><!-- /container -->
        <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
