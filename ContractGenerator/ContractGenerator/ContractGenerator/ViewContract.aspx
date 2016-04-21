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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="Contract_Title" HeaderText="Contract_Title" SortExpression="Contract_Title" />
                <asp:BoundField DataField="Domain_Name" HeaderText="Domain_Name" SortExpression="Domain_Name" />
                <asp:BoundField DataField="Create_By" HeaderText="Create_By" SortExpression="Create_By" />
                <asp:BoundField DataField="Created_Date" HeaderText="Created_Date" SortExpression="Created_Date" />
                <asp:BoundField DataField="Modified_Date" HeaderText="Modified_Date" SortExpression="Modified_Date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [Contract Title] AS Contract_Title, [Domain Name] AS Domain_Name, [Create By] AS Create_By, [Created Date] AS Created_Date, [Modified Date] AS Modified_Date FROM [Contract] WHERE (([UserID] = @UserID) AND ([Status] = @Status))">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Object" />
                <asp:Parameter DefaultValue="False" Name="Status" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    <p>
        Complete</p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [Contract Title] AS Contract_Title, [Domain Name] AS Domain_Name, [Create By] AS Create_By, [Created Date] AS Created_Date, [Modified Date] AS Modified_Date FROM [Contract] WHERE (([Status] = @Status) AND ([UserID] = @UserID))">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="Status" Type="Boolean" />
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Object" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
            <Columns>
                <asp:BoundField DataField="Contract_Title" HeaderText="Contract_Title" SortExpression="Contract_Title" />
                <asp:BoundField DataField="Domain_Name" HeaderText="Domain_Name" SortExpression="Domain_Name" />
                <asp:BoundField DataField="Create_By" HeaderText="Create_By" SortExpression="Create_By" />
                <asp:BoundField DataField="Created_Date" HeaderText="Created_Date" SortExpression="Created_Date" />
                <asp:BoundField DataField="Modified_Date" HeaderText="Modified_Date" SortExpression="Modified_Date" />
                <asp:BoundField DataField="Contract_Title" HeaderText="Contract_Title" SortExpression="Contract_Title" />
                
            </Columns>
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
