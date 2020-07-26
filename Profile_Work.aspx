<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile_Work.aspx.cs" Inherits="Profile_Work" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="Images/logo.png" />

    <title>Work Profile</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--- top navigation bar start--->
        <nav>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-header" href="Default.aspx"><span>
                            <img alt="Logo" src="Images/Logo.png" height="50" /></span></a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <asp:Label ID="profile_name" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" />
                            <asp:Image ID="imgshow" runat="server" Height="40px" ImageUrl="~/Images/Profile/profile.png" Width="31px" class="img-circle" /></a>
                            <ul class="dropdown-menu">
                                <li><a href="Profile_Work_Update.aspx">Update Profile</a></li>
                                <li><a href="Login.aspx">Sign out</a></li>
                            </ul>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
            <!--- navigation bar end--->

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="Profile_Work.aspx">Profile <span class="sr-only">(current)</span></a></li>
                        <li><a href="">Search Job</a></li>
                        <li><a href="">Feedback</a></li>
                        <li><a href="">Help</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Profile<asp:Image ID="Image1" runat="server" Height="147px" Width="164px" />
            </h1>
            <label >Username</label>
            <br />
                <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >Skill</label>
            <br />
                <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >Project Summary</label>
            <br />    
            <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >City</label>
            <br />    
            <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >Country</label>
            <br />    
            <asp:Label ID="Label5" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >Rate</label>
            <br />    
            <asp:Label ID="Label6" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >Company</label>
            <br />    
            <asp:Label ID="Label7" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >Start Year</label>
            <br />    
            <asp:Label ID="Label8" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >End Year</label>
            <br />    
            <asp:Label ID="Label9" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >Degree</label>
            <br />    
            <asp:Label ID="Label10" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >start Year</label>
            <br />    
            <asp:Label ID="Label11" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
            <label >End Year</label>
            <br />    
            <asp:Label ID="Label12" runat="server" CssClass="control-label" Text="label"></asp:Label>
            <br />
            <br />
             <asp:Button ID="Button1" runat="server" Text="Search Job" CssClass="btn btn-info center" OnClick="Button1_Click" />
        </div>


    
    </div>
    </form>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
