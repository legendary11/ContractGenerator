<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPanel.aspx.cs" Inherits="ContractGenerator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Action Panel</title>
    <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
        <p>
            Welcome to your client page</p>
        <p>
            Login Status
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </p>
        <p>
            <asp:HyperLink ID="ContractsLink" runat="server" NavigateUrl="~/ViewEdit.aspx">Contracts</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="ViewProfileLink" runat="server" NavigateUrl="~/MyProfile.aspx">View Profile</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="CreateProfileLink" runat="server" NavigateUrl="~/SignUp.aspx">Create Profile</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="AdminLink" runat="server" NavigateUrl="~/Management/AdminPanel.aspx">Adminstrator</asp:HyperLink>
        </p>
    </form>
</body>
</html>
