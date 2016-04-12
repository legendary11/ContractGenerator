<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ContractGenerator.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        <p>Login status <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </p>
        
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Login.aspx" Text="Login" />
    
    </div>
    </form>
</body>
</html>
