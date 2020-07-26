<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Design.aspx.cs" Inherits="Design" %>
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
    <div>
          <div>
                 <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">SEARCH PROJECT</h1></div>
              <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
            <Columns>

                <asp:TemplateField Visible="false">
                    <HeaderTemplate>Uid</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbluid" runat="server" Text='<%#Eval("jpid") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField>
                    <HeaderTemplate>Name</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>Email</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               <%-- <asp:TemplateField>
                    <HeaderTemplate>Name</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblwork" runat="server" Text='<%#Eval("Type_of_Work") %>'>'></asp:Label>
                    </ItemTemplate>--%>
                <%--</asp:TemplateField>--%>
                <asp:TemplateField>
                    <HeaderTemplate>Type of Work</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblproject" runat="server" Text='<%#Eval("Type_of_Work") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>About Project</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblAbout" runat="server" Text='<%#Eval("About_Project") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>Skills required</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblskill" runat="server" Text='<%#Eval("Skills_Require") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>Description</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbldescrip" runat="server" Text='<%#Eval("Describe") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>Fixed Rate</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblfrate" runat="server" Text='<%#Eval("fixed_price") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField>
                    <HeaderTemplate>Hourly Rate</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblhrate" runat="server" Text='<%#Eval("hourly_price") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate></HeaderTemplate>
                    <ItemTemplate>
                        <asp:Button ID="btnapply" runat="server" Text="Apply" OnClick="btnapply_Click" UseSubmitBehavior="false"/>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
             <HeaderStyle BackColor="#663300" ForeColor="#ffffff"/>  
            <RowStyle BackColor="#e7ceb6"/>  
        </asp:GridView>

    </div>
    </div>
    </form>
</body>
</html>


