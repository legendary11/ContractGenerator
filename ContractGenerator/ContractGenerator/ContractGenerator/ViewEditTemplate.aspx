<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="ViewEditTemplate.aspx.cs" Inherits="ContractGenerator.ViewEditTemplate" %>
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
     <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TemplateTitle" DataValueField="TemplateID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [TemplateTitle], [TemplateID] FROM [ContractTemplate]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="SectionTitle" HeaderText="SectionTitle" SortExpression="SectionTitle" />
                <asp:BoundField DataField="SectionDetail" HeaderText="SectionDetail" SortExpression="SectionDetail" />
                <asp:CheckBoxField DataField="Initial" HeaderText="Initial" SortExpression="Initial" />
                <asp:CheckBoxField DataField="Signature" HeaderText="Signature" SortExpression="Signature" />
                <asp:CheckBoxField DataField="OptOut" HeaderText="OptOut" SortExpression="OptOut" />
                <asp:CheckBoxField DataField="EntryBox" HeaderText="EntryBox" SortExpression="EntryBox" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT ContractSection.SectionTitle, ContractSection.SectionDetail, ContractSection.Initial, ContractSection.Signature, ContractSection.OptOut, ContractSection.EntryBox FROM ContractSection INNER JOIN CSinCT ON ContractSection.SectionID = CSinCT.SectionID INNER JOIN ContractTemplate ON CSinCT.TemplateID = ContractTemplate.TemplateID WHERE (ContractTemplate.TemplateID = @templateID)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="templateID" SessionField="TemplateID" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
