<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="ViewContract.aspx.cs" Inherits="ContractGenerator.ViewContract" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Action Panel</title>
   <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script> 
</head>

<body>
     <% Response.WriteFile("~/header.aspx");%>    <% Response.WriteFile("~/footer.html");%> 
    <form id="form1" runat="server">
    <div>
    
        In Process</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="685px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ContractTitle" HeaderText="Contract Title" SortExpression="ContractTitle" />
                <asp:BoundField DataField="DomainName" HeaderText="Domain Name" SortExpression="DomainName" />
                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate" />
                <asp:BoundField DataField="ModifiedDate" HeaderText="Last Modified Date" SortExpression="ModifiedDate" />
                <asp:BoundField DataField="CreateBy" HeaderText="Created By" SortExpression="CreateBy" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="View" HeaderText="View" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [ContractTitle], [DomainName], [CreatedDate], [ModifiedDate], [CreateBy] FROM [Contract] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="false" Name="Status" SessionField="Status" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    <p>
        Signed & Completed</p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [ContractTitle], [DomainName], [CreatedDate], [ModifiedDate], [CreateBy] FROM [Contract] WHERE ([Status] = @Status)">
        <SelectParameters>
            <asp:SessionParameter Name="Status" SessionField="Status" Type="Boolean" DefaultValue="True" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="685px" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ContractTitle" HeaderText="Contract Title" SortExpression="ContractTitle" />
                <asp:BoundField DataField="DomainName" HeaderText="Domain Name" SortExpression="DomainName" />
                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate" />
                <asp:BoundField DataField="ModifiedDate" HeaderText="Modified Date" SortExpression="ModifiedDate" />
                <asp:BoundField DataField="CreateBy" HeaderText="Created By" SortExpression="CreateBy" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="View" Text="View" />
                
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
        <br />
        <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PDF" />
    </form>
</body>
</html>
    <br />
    </asp:Content>
