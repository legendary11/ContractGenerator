<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ContractGenerator.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    
</head>
<body>
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
