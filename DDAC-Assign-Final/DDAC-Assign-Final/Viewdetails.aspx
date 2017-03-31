<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewdetails.aspx.cs" Inherits="DDAC_Assign_Final.Viewdetails" %>

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
	  background-image: url(Images/whiteimage.jpg);    
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
    width: 270px;
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
                        <li><a runat="server" href="#"></a></li>
                        <li><a runat="server" href="#"></a></li>
                    </ul>
                   
                            <ul class="nav navbar-nav navbar-right">
                               <li><a href = "Default.aspx"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                            </ul>    
                </div>
            </div>
        </div>
			 
        <br><br><br>

    <div class="container">
     <h2>Shipments</h2>
  <p>Shipment detail table:</p>                        
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>PakageID</th>
        <th>Email</th>
             <th>Shipment Weight</th>
             <th>Contact</th>
             <th>Package TYpe</th>
             <th>Shipment Number</th>
             <th>Price</th>
             <th>Current Place</th>
             <th>Destination Place</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>MA123456</td>
        <td>mark@gmail.com</td>
          <td>40kg</td>
          <td>01365411</td>
          <td>liquid</td>
          <td>MLS123</td>
          <td>RM 400</td>
          <td>KL Sentral</td>
          <td>Pinang</td>
      </tr>
      <tr>
        <td>MA789101</td>
        <td>MuhammadRaees_TP030196@gmail.com</td>
          <td>60kg</td>
          <td>0215121511</td>
          <td>furniture</td>
          <td>MLS456</td>
          <td>RM 600</td>
          <td>Perak</td>
          <td>Sarawak</td>
      </tr>
      <tr>
       <td>MA121314</td>
        <td>mr.anand@gmail.com</td>
          <td>150kg</td>
          <td>01254151</td>
          <td>2 cars</td>
          <td>MLS789</td>
          <td>RM 1000</td>
          <td>Pinang</td>
          <td>Kuala Lumpur</td>
      </tr>
    </tbody>
  </table>
    </div>
        <br><br><br>
        <div class="container">
  <h2>Schedules</h2>
  <p>Schedule details table:</p>                                          
  <table class="table table-striped table-bordered table-hover table-condensed">
    <thead>
      <tr>
        <th>Ship ID</th>
        <th>Delivery Time</th>
          <th>Shippping Cost</th>
           <th>Departure Point</th>
           <th>Arrival Point</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>MLS123</td>
        <td>12:00am</td>
          <td>RM 100</td>
           <td>KL sentral</td>
           <td>Pinang</td>
      </tr>
      <tr>
        <td>MLS456</td>
        <td>1:00pm</td>
           <td>RM 200</td>
           <td>Kuala Lumpur</td>
           <td>sarawak</td>
      </tr>
      <tr>
        <td>MLS789</td>
        <td>6:00am</td>
           <td>RM 400</td>
           <td>Perak</td>
           <td>Pinang</td>
      </tr>
    </tbody>
  </table>
</div>
    </form>
</body>
</html>
