<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPages/master.Master"  CodeBehind="ManageRoles.aspx.cs" Inherits="ContractGenerator.Management.ManageRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Manage Roles</title>
    <link href="../bootstrap.css" rel="stylesheet"/>
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../js/bootstrap.js"></script>
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
            EmptyDataText="No users belong to this role." OnRowDeleting="RolesUserList_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None"> 
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns> 
               <asp:TemplateField HeaderText="Users"> 
                    <ItemTemplate> 
                         <asp:Label runat="server" id="UserNameLabel" 
                              Text='<%# Container.DataItem %>'></asp:Label> 

                    </ItemTemplate> 
               </asp:TemplateField> 
               <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Remove Role" ShowHeader="True" Text="Remove" />
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

        </p>
    </div>
    </form>
</body>
</html>
</asp:Content>