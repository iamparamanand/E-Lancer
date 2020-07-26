<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile_Hire.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="40pt" BackColor="#89FAB0" ForeColor="#6600FF"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post Job" BackColor="#99CCFF" BorderStyle="None" Font-Names="Cooper Black" Font-Size="XX-Large" Height="39px" Width="291px" />
    </div>
        <div>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="None" Height="244px" Width="568px">
                <Columns>

                 <asp:templatefield visible="false">
                    <headertemplate>Worker UID</headertemplate>
                    <itemtemplate>
                        <asp:label id="lbluid" runat="server" text='<%#Eval("uid") %>'>'></asp:label>
                    </itemtemplate>
                </asp:templatefield>

                <asp:TemplateField>
                    <HeaderTemplate>Email</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>Name</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               <asp:TemplateField>
                    <HeaderTemplate>Type of Work</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblwork" runat="server" Text='<%#Eval("tow") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>   
                    
                    <asp:TemplateField Visible="false">
                    <HeaderTemplate>JPID</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbljpid" runat="server" Text='<%#Eval("jpid") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>            

                <asp:TemplateField>
                    <HeaderTemplate></HeaderTemplate>
                    <ItemTemplate>
                        <asp:Button ID="btnseeprofile" runat="server" Text="See Profile" OnClick="btnseeprofile_Click" UseSubmitBehavior="false"/>
                    </ItemTemplate>
                </asp:TemplateField>

                    <asp:TemplateField>
                    <HeaderTemplate></HeaderTemplate>
                    <ItemTemplate>
                        <asp:Button ID="btnapprove" runat="server" Text="Approve" OnClick="btnapprove_Click" UseSubmitBehavior="false"/>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BorderStyle="None" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
