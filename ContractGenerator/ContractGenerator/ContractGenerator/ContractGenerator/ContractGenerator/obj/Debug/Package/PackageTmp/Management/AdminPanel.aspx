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
        <h4>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Management/ManageRoles.aspx">Manage Roles</asp:HyperLink>
        </h4>
        
        <b>Create a New Role: </b>
        <asp:TextBox ID="RoleName" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="CreateRoleButton" runat="server" Text="Create Role" OnClick="CreateRoleButton_Click" PostBackUrl="~/Management/AdminPanel.aspx" />
        <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" OnRowDeleting="RoleList_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None" Width="161px" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Role">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />

                    </ItemTemplate>

                </asp:TemplateField>

               <asp:CommandField ShowDeleteButton="True" HeaderText="Delete"/>

            </Columns>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>
        <br />
        <asp:Button ID="createTemplateButton" runat="server" PostBackUrl="~/Management/CreateTemplate.aspx" Text="Create Template" />
        <br />
    </div>
   </form>
</body>

</html>
</asp:Content>
