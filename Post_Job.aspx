<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Post_Job.aspx.cs" Inherits="Post_Job" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="../../favicon.ico" />

    <title>SEARCH JOB</title>

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
                   
                </div>
            </div>
        </nav>
            <!--- navigation bar end--->
    <!--- Center Part--->
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <h1 class="page-header">Post Project</h1>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <div class="col-xs-4">
                 <asp:Label ID="Workreq" runat="server" Text="Work Required" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="Workreq_list" runat="server" CssClass="form-control">
                        <asp:ListItem>Website IT & Software</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Design</asp:ListItem>
                        <asp:ListItem>Graphics</asp:ListItem>
                    </asp:DropDownList>
                <br />
                <asp:Label ID="About" runat="server" Text="About Project" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbAbout" runat="server" CssClass="form-control"  TextMode="MultiLine" Placeholder="About Project"></asp:TextBox>
                <br />
                <asp:Label ID="Skillreq" runat="server" Text="Skill Required" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="DropDownList_skill" runat="server" CssClass="form-control">
                        <asp:ListItem>Website IT & Software</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Design</asp:ListItem>
                        <asp:ListItem>Graphics</asp:ListItem>
                    </asp:DropDownList>
                <br />
                <asp:Label ID="Describe" runat="server" Text="Describe Project" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbDescribe" runat="server" CssClass="form-control" TextMode="MultiLine" Placeholder="Describe your Project"></asp:TextBox>
                <br />
                <br />
                    <asp:Label ID="Budget" runat="server" Text="Budget :" Font-Bold="true"></asp:Label>
                    <fieldset style="width: 300px">
                        <asp:RadioButton ID="Set_Fixed_Price" runat="server" GroupName="Price" AutoPostBack="True" OnCheckedChanged="Set_Fixed_Price_CheckedChanged" Text="SET FIXED PRICE"/>
                        <asp:DropDownList ID="Drop_Fixed_Price" runat="server" Enabled="False" Visible="False" >
                            <asp:ListItem>Select Amount</asp:ListItem>
                            <asp:ListItem>12500 - 37500</asp:ListItem>
                            <asp:ListItem>37500 - 75000</asp:ListItem>
                            <asp:ListItem>75000 - 150000</asp:ListItem>
                            <asp:ListItem>150000 - 250000</asp:ListItem>
                            <asp:ListItem>2500000 - 500000</asp:ListItem>
                            <asp:ListItem>More Than 5 Lakhs</asp:ListItem>
                        </asp:DropDownList>
                    <br />
                        <asp:RadioButton ID="Set_Hourly_Price" runat="server" GroupName="Price" AutoPostBack="True" OnCheckedChanged="Set_Hourly_Price_CheckedChanged" Text="SET HOURLY PRICE" />
                        <asp:DropDownList ID="Drop_Hourly_Price" runat="server" Enabled="False" Visible="False" >
                            <asp:ListItem>Select Amount</asp:ListItem>
                            <asp:ListItem>400 - 750</asp:ListItem>
                            <asp:ListItem>750 - 1250</asp:ListItem>
                            <asp:ListItem>1250 - 2500</asp:ListItem>
                            <asp:ListItem>More Than 2500</asp:ListItem>
                        </asp:DropDownList>
                    </fieldset>
                <br />
                <asp:Button ID="Post" runat="server" Text="Post Job" CssClass="btn btn-info center-block" OnClick="Post_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
