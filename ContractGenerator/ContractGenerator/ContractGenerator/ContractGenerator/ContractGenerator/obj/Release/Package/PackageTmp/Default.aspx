<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="Default.aspx.cs" Inherits="ContractGenerator.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Welcome</title>
    <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>

</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
    
        <h1>Welcome Please Login</h1>
     
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Login.aspx" Text="Login" />
    
    </div>
    </form>
</body>
</html>
</asp:Content>
