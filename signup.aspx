<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Free to Ask</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Education Admission Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
    </script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <link rel="stylesheet" href="css/font-awesome.css" />
    <!-- Font-Awesome-Icons-CSS -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Acme" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
          rel="stylesheet" />
    <!-- //web font -->
    <style>
        .register-form input[type="password"], .register-form input[type="date"]{
         font-size: 15px;
    color: #fff;
    border: 0;
    width: 96%;
    letter-spacing: 1px;
    background: transparent;
    outline: none;
    font-family: 'Open Sans', sans-serif;
    
        }
        .label {
            color:red;
            font-weight:bold;
            margin-top:-20px;
            margin-bottom:20px;
        }
        </style>
</head>s
<body>
      <!-- main -->
    <div class="main-agileits">
        <h1>
            Welcme to Free to Ask
            <img src="images/logo.png" alt="" />
        </h1>
        <div class="register-form">
    <form id="form1" runat="server">
  <div class="fields-grid">
					<div class="styled-input">
						<span class="fa fa-user" aria-hidden="true"></span>
						<asp:Textbox runat="server" ID="first_name" placeholder="First Name" required=""></asp:Textbox></div>
					   
					<div class="styled-input">
						<span class="fa fa-user" aria-hidden="true">
                        </span>
						<asp:Textbox runat="server" ID="last_name" placeholder="Last Name" required=""></asp:Textbox>
                        </div>
                      

					<div class="styled-input agile-styled-input-top">
						<span class="fa fa-venus" aria-hidden="true"></span>
						<asp:DropDownList ID="gen" runat="server" class="category2" required="">
                            <asp:ListItem Value="">Select Gender</asp:ListItem>
                            <asp:ListItem Value="male">Male</asp:ListItem>
                            <asp:ListItem Value="female">Female</asp:ListItem>
                            <asp:ListItem Value="other">Other</asp:ListItem>

         </asp:DropDownList>
					</div>

                        <div class="styled-input">
						<span class="fa fa-calendar" aria-hidden="true"></span>
						<asp:Textbox runat="server" id="dob" placeholder="Birth Date" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"
						    required="" TextMode="Date"></asp:Textbox>
					</div>

					<div class="styled-input">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
						 <asp:Textbox runat="server" placeholder="Your E-mail" required="" ID="email" TextMode="Email"></asp:Textbox>
					</div>
                 <asp:Label ID="Lemail" runat="server" Text="" CssClass="label"></asp:Label>
					<div class="styled-input">
						<span class="fa fa-phone" aria-hidden="true"></span>
						 <asp:Textbox runat="server" ID="phone" placeholder="Phone Number" required=""></asp:Textbox>
					</div>
                    <asp:Label ID="Lphone" runat="server" Text="" CssClass="label"></asp:Label>
					<div class="styled-input">
						<span class="fa fa-lock" aria-hidden="true"></span>
						 <asp:Textbox runat="server" placeholder="Password" required="" ID="password" TextMode="Password"></asp:Textbox>
					</div>

					<div class="styled-input">
						<span class="fa fa-lock" aria-hidden="true"></span>
						 <asp:Textbox runat="server" placeholder="Confirm Password" required="" ID="pass" TextMode="Password"></asp:Textbox>
					</div>
                    <asp:Label ID="Lpass" runat="server" Text="" CssClass="label"></asp:Label>

					<div class="clear"> </div>
				</div>
				<asp:Button runat="server" Text="Submit" ID="submit" OnClick="submit_Click"></asp:Button>&emsp;<a style="color:gold"  href="login.aspx" >already a member? login</a> 
    </form>
             </div>
    </div>
    <!-- //main -->
    <!-- copyright -->
    <div class="w3copyright-agile">
        <h2>
            © 2018 Free to Ask. All rights reserved | Design by
            <a href="http://w3layouts.com/" target="_blank">W3layouts</a>
        </h2>
    </div>
    <!-- //copyright -->
   <!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>

	<!-- Calendar -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").dob();
		});
	</script>
	<!-- //Calendar -->
</body>
</html>
