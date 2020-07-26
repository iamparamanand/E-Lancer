<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Job.aspx.cs" Inherits="Search_Job" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <!--- Center Part--->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Search Job</h1>
            <div class="col-xs-4">
                    <asp:Label ID="CName" runat="server"  Text="Job Provider Name / Company" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbCName" runat="server"  CssClass="form-control" Placeholder="Company Name"></asp:TextBox>
                <br />
                    <asp:Label ID="Workreq" runat="server" Text="Work Required" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="Workreq_list" runat="server" CssClass="form-control">
                        <asp:ListItem>Website IT & Software</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Design</asp:ListItem>
                        <asp:ListItem>Graphics</asp:ListItem>
                    </asp:DropDownList>
                <br />
                 <asp:Label ID="About" runat="server" Text="About Project" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbAbout" runat="server" CssClass="form-control" Placeholder="About Project"></asp:TextBox>
                <br />
                    <asp:Label ID="Skillreq" runat="server" Text="Skill Required" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbSkill" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                <br />
                    <asp:Label ID="Describe" runat="server" Text="Describe Project" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="tbDescribe" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
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
                   
                <br />
                    <div class="form-group center">
                        <asp:Button ID="Search" runat="server" Text="Search Job" CssClass="btn btn-info center" />
                    </div>
             </div>

            <!--- Center Part End--->
    </form>
</body>
</html>
