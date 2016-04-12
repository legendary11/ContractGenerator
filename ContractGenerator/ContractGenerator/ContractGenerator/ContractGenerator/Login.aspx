<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ContractGenerator.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainPanel.aspx" Target="_parent">Home</asp:HyperLink>
        <h1>Login to your profile</h1>
        <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for a new account" CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/MainPanel.aspx" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
        <br />
    </div>
    </form>
</body>
</html>
