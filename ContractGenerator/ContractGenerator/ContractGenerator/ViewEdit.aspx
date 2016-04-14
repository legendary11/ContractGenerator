<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEdit.aspx.cs" Inherits="ContractGenerator.ViewEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View/Edit Contracts</title>
    <link href="bootstrap.css" rel="stylesheet"/>
 <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
        <p>
            View your current contracts</p>
        <p>
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Contract.aspx" Text="Sample Contract" />
        </p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainPanel.aspx">Back to Main Panel</asp:HyperLink></p>
    </form>
</body>
</html>
