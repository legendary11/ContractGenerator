<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="ViewEdit.aspx.cs" Inherits="ContractGenerator.ViewEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
</asp:Content>