<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="ViewTemplate.aspx.cs" Inherits="ContractGenerator.ViewEditTemplate" %>
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
     <% Response.WriteFile("~/header.aspx");%><% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
        <h1>View Current Contract Templates</h1>
        <asp:DropDownList ID="TemplateList" runat="server" AutoPostBack="True"  DataTextField="TemplateTitle" DataValueField="TemplateID" OnSelectedIndexChanged="TemplateList_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [TemplateTitle], [TemplateID] FROM [ContractTemplate]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="TemplateGridView" runat="server"   AutoGenerateColumns="True" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="SectionID">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        <asp:SqlDataSource ID="datasource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen%>" 
            SelectCommand="SELECT B.* from ContractTemplateSections A Join ContractSection B on A.SectionID = B.SectionID Join ContractTemplate C on A.TemplateID = C.TemplateID where A.TemplateID = @TemplateID">
            <SelectParameters>
                <asp:SessionParameter Name="TemplateID" SessionField="TemplateID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
</asp:Content>
