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
    <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
        <p>
            Welcome to your client page</p>
        <p>
            Login Status
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </p>
        <p>
            <asp:Button ID="viewContractsButton" runat="server" Text="View/Edit Contracts" Width="158px" PostBackUrl="~/ViewEdit.aspx" />
        </p>
        <p>
            <asp:Button ID="viewProfieButton" runat="server" PostBackUrl="~/MyProfile.aspx" Text="View Profile" Width="159px" />
        </p>
        <p>
            <asp:Button ID="createEditButton" runat="server" PostBackUrl="~/SignUp.aspx" Text="Create/Edit Profile" />
        </p>
        <p>
            <asp:Button ID="adminButton" runat="server" Text="Administrator" Width="157px" PostBackUrl="~/Management/AdminPanel.aspx" />
        </p>
        <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
    
    </div>
    </form>
</body>
</html>
