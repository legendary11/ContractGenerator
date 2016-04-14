<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateContractSections.aspx.cs" Inherits="ContractGenerator.CreateContractTemplate" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
        Section ID (int) <asp:TextBox ID ="SectionID" runat="server"></asp:TextBox>
        </div>
        <div>
        Parent ID (-1 if parent) <asp:TextBox ID ="ParentID" runat="server"></asp:TextBox> 
            </div>
        <div>Section Title <asp:TextBox ID="SectionTitle" runat="server"></asp:TextBox></div>
        <div>Section Detail <asp:TextBox ID="SectionDetail" runat="server"></asp:TextBox></div> <!-- This could use a larger text box -->
        <div>Initial (0 or 1) <asp:TextBox ID="Initial" runat="server"></asp:TextBox></div> <!-- maybe this and the following could be a drop down box with true or false instead -->
        <div>Signiture (0 or 1) <asp:TextBox ID="Signature" runat="server"></asp:TextBox></div>
        <div>OptOut (0 or 1) <asp:TextBox ID="OptOut" runat="server"></asp:TextBox></div>
        <div>Entry Box (0 or 1) <asp:TextBox ID ="EntryBox" runat="server"></asp:TextBox></div>

        <div><asp:button ID="Insert" runat="server" Text="Save" OnClick="InsertClick"/></div>

    </div>
    </form>
</body>
</html>
