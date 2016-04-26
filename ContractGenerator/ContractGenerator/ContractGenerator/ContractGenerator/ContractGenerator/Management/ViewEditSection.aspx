<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="ViewEditSection.aspx.cs" Inherits="ContractGenerator.ViewCreateSection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Action Panel</title>
   <link href="../bootstrap.css" rel="stylesheet"/>
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../js/bootstrap.js"></script> 
</head>
<body>
     <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SectionTitle" DataValueField="SectionID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [SectionTitle], [SectionID] FROM [ContractSection] WHERE ([ParentID] = @ParentID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="ParentID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SectionID" DataSourceID="SqlDataSource2" AllowSorting="True" Width="748px" class="col-lg-6" TextMode="multiline" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Edit/Delete" />
                <asp:BoundField DataField="SectionTitle" HeaderText="SectionTitle" SortExpression="SectionTitle" />
                <asp:BoundField DataField="SectionDetail" HeaderText="SectionDetail" SortExpression="SectionDetail">
                <ItemStyle Wrap="True" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="Initial" HeaderText="Initial" SortExpression="Initial" />
                <asp:CheckBoxField DataField="Signature" HeaderText="Signature" SortExpression="Signature" />
                <asp:CheckBoxField DataField="OptOut" HeaderText="OptOut" SortExpression="OptOut" />
                <asp:CheckBoxField DataField="EntryBox" HeaderText="EntryBox" SortExpression="EntryBox" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" DeleteCommand="DELETE FROM [ContractSection] WHERE [SectionID] = @SectionID" InsertCommand="INSERT INTO [ContractSection] ([ParentID], [SectionTitle], [SectionDetail], [Initial], [Signature], [OptOut], [EntryBox]) VALUES (@ParentID, @SectionTitle, @SectionDetail, @Initial, @Signature, @OptOut, @EntryBox)" SelectCommand="SELECT * FROM [ContractSection] WHERE ([ParentID] = @ParentID)" UpdateCommand="UPDATE [ContractSection] SET [ParentID] = @ParentID, [SectionTitle] = @SectionTitle, [SectionDetail] = @SectionDetail, [Initial] = @Initial, [Signature] = @Signature, [OptOut] = @OptOut, [EntryBox] = @EntryBox WHERE [SectionID] = @SectionID">
            <DeleteParameters>
                <asp:Parameter Name="SectionID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ParentID" Type="Int32" />
                <asp:Parameter Name="SectionTitle" Type="String" />
                <asp:Parameter Name="SectionDetail" Type="String" />
                <asp:Parameter Name="Initial" Type="Boolean" />
                <asp:Parameter Name="Signature" Type="Boolean" />
                <asp:Parameter Name="OptOut" Type="Boolean" />
                <asp:Parameter Name="EntryBox" Type="Boolean" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="ParentID" SessionField="SectionID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ParentID" Type="Int32" />
                <asp:Parameter Name="SectionTitle" Type="String" />
                <asp:Parameter Name="SectionDetail" Type="String" />
                <asp:Parameter Name="Initial" Type="Boolean" />
                <asp:Parameter Name="Signature" Type="Boolean" />
                <asp:Parameter Name="OptOut" Type="Boolean" />
                <asp:Parameter Name="EntryBox" Type="Boolean" />
                <asp:Parameter Name="SectionID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
    </asp:Content>
