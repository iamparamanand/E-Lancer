<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Log_in" %>

<!DOCTYPE html>
<script runat="server">
</script>


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>E Lancer Log IN</title>

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
                        <li><a href="About.aspx">About</a></li>
                        <li><a href="Contact Us.aspx">Contact</a></li>
                        <li><a href="SignUp.aspx">Sign Up</a></li>
                        <li class="active"><a href="Login.aspx">Log In</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--- Nav Bar end --->

        <!--sign in start-->
        <div class="center-page">
            <h2>LOGIN</h2>
            <hr />
             <label >Username</label>
            <div>
                <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UsernameRequiredFieldValidator" runat="server" ErrorMessage="Enter Username" ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

             <label >Password</label>
            <div>
                <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Enter Password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div >
                <label style="text-align: center">I want to</label>
                <div>
                    <fieldset style="width: 300px">
                        <asp:RadioButton ID="RadioButton_work" runat="server" Text="Work" GroupName="reg" OnCheckedChanged="RadioButton_work_CheckedChanged" />
                        <asp:RadioButton ID="RadioButton_hire" runat="server" Text="Hire" GroupName="reg" OnCheckedChanged="RadioButton_hire_CheckedChanged" />
                    </fieldset>
                </div>
            </div>
            <div>
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
            </div>
            <div>
                <asp:Button ID="Login" runat="server" Text="Log In" OnClick="LogIn_Click" CssClass="btn btn-success center-block"/>
            </div>
            <div class="space-vert">
                <asp:Label ID="Already" runat="server" Text="Not a member. Please  "></asp:Label><asp:LinkButton ID="linkSignup" runat="server" PostBackUrl="~/SignUp.aspx" ForeColor="SkyBlue">Sign Up</asp:LinkButton>
            </div>

        </div>
        <!--sign in end-->
    </div>
    </form>
</body>
</html>
