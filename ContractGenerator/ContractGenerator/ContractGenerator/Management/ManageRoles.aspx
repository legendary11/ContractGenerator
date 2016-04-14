<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="ContractGenerator.Management.ManageRoles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Roles</title>
    <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <style>
        .Important 
{ 
     font-size: large; 
     color: Red; 
}
    </style>
</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
     <p align="center"><asp:Label ID="ActionStatus" runat="server" CssClass="Important"></asp:Label> </p>

    <h3>Manage Roles By User</h3> 

<p> 
     <b>Select a User:</b> 
     <asp:DropDownList ID="UserList" runat="server" AutoPostBack="True" 
          DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="UserList_SelectedIndexChanged1"> 

     </asp:DropDownList> 
</p> 
<p> 
     <asp:Repeater ID="UsersRoleList" runat="server"> 
          <ItemTemplate> 
               <asp:CheckBox runat="server" ID="RoleCheckBox" AutoPostBack="true" 
                   Text='<%# Container.DataItem %>' OnCheckedChanged="RoleCheckBox_CheckChanged" />
               <br /> 
          </ItemTemplate> 
     </asp:Repeater> 
    </p>
        <h3>Manage Users By Role</h3> 
        <b>Select a Role:</b> 
        <asp:DropDownList ID="RoleList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RoleList_SelectedIndexChanged1"></asp:DropDownList>
        <p>
            <asp:GridView ID="RolesUserList" runat="server" AutoGenerateColumns="False" 
            EmptyDataText="No users belong to this role." OnRowDeleting="RolesUserList_RowDeleting"> 
          <Columns> 
               <asp:TemplateField HeaderText="Users"> 
                    <ItemTemplate> 
                         <asp:Label runat="server" id="UserNameLabel" 
                              Text='<%# Container.DataItem %>'></asp:Label> 

                    </ItemTemplate> 
               </asp:TemplateField> 
               <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Remove Role" ShowHeader="True" Text="Remove" />
          </Columns> 
     </asp:GridView>

        </p>
        <p>
            <b>UserName:</b> 
            <asp:TextBox ID="UserNameToAddToRole" runat="server"></asp:TextBox> 
            <br /> 
            <asp:Button ID="AddUserToRoleButton" runat="server" Text="Add User to Role" /> 

        </p>

        <p><asp:HyperLink ID="MainPanelLink" runat="server" NavigateUrl="~/MainPanel.aspx">Back to Main Panel</asp:HyperLink></p>
    </div>
    </form>
</body>
</html>
