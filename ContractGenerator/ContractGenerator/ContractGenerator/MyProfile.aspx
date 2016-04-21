<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="MyProfile.aspx.cs" Inherits="ContractGenerator.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>My Profile</title>
    <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
        <h1>My Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
        </h1>
            <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainPanel.aspx">Back to Main Panel</asp:HyperLink></p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <EditItemTemplate>
                    User Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("[User Name]") %>'></asp:Label>
                    <br />
                    First Name:<asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("[Frist Name]") %>'></asp:TextBox>
                    <br />
                    Last Name:<asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("[Last Name]") %>'></asp:TextBox>
                    <br />
                    Company Name:<asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("[Company Name]") %>'></asp:TextBox>
                    <br />
                    Address:<asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
                    <br />
                    Phone:<asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("Phone") %>'></asp:TextBox>
                    <br />
                    Fax:<asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("Fax") %>'></asp:TextBox>
                    <br />
                    Email:<asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    User Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("[User Name]") %>' />
                    <br />
                    Frist Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Frist_NameLabel" runat="server" Text='<%# Eval("[Frist Name]") %>' />
                    <br />
                    Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("[Last Name]") %>' />
                    <br />
                    Company Name:&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Company_NameLabel" runat="server" Text='<%# Eval("[Company Name]") %>' />
                    <br />
                    Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                    <br />
                    Fax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                    <br />
                    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    Create Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Create_DateLabel" runat="server" Text='<%# Eval("[Create Date]") %>' />
                    <br />
                    Login Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Login_DateLabel" runat="server" Text='<%# Eval("[Login Date]") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT Users.UserName AS 'User Name', UserInfo.FirstName AS 'Frist Name', UserInfo.LastName AS 'Last Name', UserInfo.CompanyName AS 'Company Name', UserInfo.Address, UserInfo.Phone, UserInfo.Fax, Memberships.Email, Memberships.CreateDate AS 'Create Date', Memberships.LastLoginDate AS 'Login Date' FROM UserInfo INNER JOIN Users ON UserInfo.UserID = Users.UserId INNER JOIN Memberships ON Users.UserId = Memberships.UserId WHERE (Users.UserId = @userID)">
                <SelectParameters>
                    <asp:SessionParameter Name="userID" SessionField="UserID" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
            <p>Change your password here</p>
        <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
    </div>
    </form>
</body>
</html>
</asp:Content>