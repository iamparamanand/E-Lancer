<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>E Lancer About</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" /> <!--- Bootstrap--->
    <link href="css/Custom-Cs.css" rel="stylesheet" /> <!--- To make contant in center ---->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <form id="form1" runat="server">
    <div>
         <!--- Navigation Bar Start--->

        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-header" href="Default.aspx"> <span> <img alt="Logo" src="Images/Logo.png" height="50" /></span></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Default.aspx">Home</a></li>
                        <li class="active"><a href="About.aspx">About</a></li>
                        <li><a href="Contact Us.aspx">Contact</a></li>
                        <li><a href="SignUp.aspx">Sign Up</a></li>
                        <li><a href="Login.aspx">Log In</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!--- Navigation Bar End--->
    </div>
    </form>
    <!--- Footer contant Start---->
		  <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2017 e-lancer.com &middot; <a href="Default.aspx">Home</a>&middot; <a href="About.aspx">About</a>&middot; <a href="Contact Us.aspx">Contact</a>&middot;</p>
            </div>
        </footer>

        <!--- Footer contant End---->

    
    <!--/form--->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
