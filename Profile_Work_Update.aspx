<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile_Work_Update.aspx.cs" Inherits="Profile_Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="../../favicon.ico" />

    <title>Work Profile</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

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
                            <li><a href="Profile_Work.aspx">Profile<span class="sr-only">(current)</span></a></li>
                            <li><a href="#">Search Job</a></li>
                            <li><a href="#">Feedback</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--- Center Part--->
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                
                <h1 class="page-header">Profile Update</h1>
                <asp:Image ID="Image1" runat="server" Height="165px" Width="187px" />
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />

                 <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn btn-info center" OnClick="Button1_Click" />
            </div>

                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <div class="col-xs-4">
                    <asp:Label ID="Name" runat="server"  Text="Full Name" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbName" runat="server"  CssClass="form-control" Placeholder="First Name"></asp:TextBox>
               <br />   
                    <asp:Label ID="Mob" runat="server" Text="skill" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="Workreq_list" runat="server" CssClass="form-control">
                        <asp:ListItem>report writer</asp:ListItem>
                        <asp:ListItem>developer</asp:ListItem>
                        <asp:ListItem>Designer</asp:ListItem>
                        <asp:ListItem>web devloper</asp:ListItem>
                    </asp:DropDownList>
                    

               <br />
                    <asp:Label ID="Label1" runat="server"  Text="Project Summary" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control" Placeholder="Project Summary"></asp:TextBox>
               <br />   
               <br />
                    <asp:Label ID="city" runat="server" Text="city" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbcity" runat="server" CssClass="form-control" Placeholder="city"></asp:TextBox>
               <br />
                <br />
                <br />
                    <br />
                <br />
               <br />
                    <asp:Label ID="Country" runat="server" Text="Country" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbCountry" runat="server"  CssClass="form-control" Placeholder="Country"></asp:TextBox>
               <br />
                     <asp:Label ID="Label2" runat="server"  Text="Rate" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-control" Placeholder="Rate"></asp:TextBox>
                 
                <br />
                      <asp:Label ID="Label3" runat="server"  Text="Company" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"  CssClass="form-control" Placeholder="Company"></asp:TextBox>
               <br />
                     <asp:Label ID="Label4" runat="server" Text="Start Year" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                         <asp:ListItem></asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem>1998</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
                    </asp:DropDownList>  
                    <asp:Label ID="Label5" runat="server" Text="End Year" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem></asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem>1998</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
        </asp:DropDownList>
                     <asp:Label ID="Label6" runat="server" Text="Degree" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"  CssClass="form-control" Placeholder="Degree"></asp:TextBox>
                     <asp:Label ID="Label7" runat="server" Text="Start Year" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server"  CssClass="form-control" Placeholder="Start Year"></asp:TextBox>
                     <asp:Label ID="Label8" runat="server" Text="End Year" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server"  CssClass="form-control" Placeholder="End Year"></asp:TextBox>
                     
                    

                    <div class="form-group center">
                        <asp:Button ID="Update" runat="server" Text="Update" CssClass="btn btn-info center" OnClick="Update_Click" />
                    </div>
                </div>
            <!--- Center Part End--->

        </div>


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
        
    </form>

    </body>
</html>
