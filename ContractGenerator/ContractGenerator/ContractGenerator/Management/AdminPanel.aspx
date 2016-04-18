<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="ContractGenerator.Management.AdminPanel1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Admin Panel</title>
     <link href="../bootstrap.css" rel="stylesheet"/>
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../js/bootstrap.js"></script>
</head>
<body>
     <% Response.WriteFile("~/header.aspx");%>    <% Response.WriteFile("~/footer.html");%>
   <form id="form1" runat="server">
    <div>
        <h1>Admin Page</h1>
        <h2>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Management/ManageRoles.aspx">Manage Roles</asp:HyperLink>
        </h2>
        <p>
            <asp:Button ID="createUserButton" runat="server" Text="Create New User" PostBackUrl="~/Management/SignUp.aspx" />
        </p>
        <b>Create a New Role: </b>
        <asp:TextBox ID="RoleName" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="CreateRoleButton" runat="server" Text="Create Role" OnClick="CreateRoleButton_Click" PostBackUrl="~/Management/AdminPanel.aspx" />
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainPanel.aspx">Back to Main Panel</asp:HyperLink></p>
        <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" OnRowDeleting="RoleList_RowDeleting" >
            <Columns>
               <asp:CommandField DeleteText="Delete Role" ShowDeleteButton="True"/>
                <asp:TemplateField HeaderText="Role">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>

        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="createTemplateButton" runat="server" PostBackUrl="~/Management/CreateTemplate.aspx" Text="Create Template" />
        <br />
    </div>
   </form>
</body>

</html>
</asp:Content>
