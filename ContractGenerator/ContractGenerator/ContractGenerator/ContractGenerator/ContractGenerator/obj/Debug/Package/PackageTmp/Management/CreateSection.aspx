<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateSection.aspx.cs" Inherits="ContractGenerator.Management.CreateSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>Create Template</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Create contract Template</h1><br />
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" OnFinishButtonClick="Wizard1_FinishButtonClick" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" FinishDestinationPageUrl="~/Management/AdminPanel.aspx">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep ID="SectNameStep" runat="server" Title="Section Name">
                    <asp:Label ID="sectionNameLabel" runat="server" Text="Label">Section Name:</asp:Label>
                    <asp:TextBox ID="sectionNameBox" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep ID="AddDetailStep1" runat="server" Title="Add description">
                    <asp:Label ID="detailLabel" runat="server" Text="Label">Add a description:</asp:Label>
                    <asp:TextBox ID="detailBox" runat="server"></asp:TextBox>
                </asp:WizardStep>

                <asp:WizardStep ID="AddDetailStep2" runat="server" Title="Add other details">
                    <div>Parent ID <asp:TextBox ID="parentID" runat="server"></asp:TextBox></div>
                    <div>Initial (0 or 1) <asp:TextBox ID="Initial" runat="server"></asp:TextBox></div> <!-- maybe this and the following could be a drop down box with true or false instead -->
                    <div>Signiture (0 or 1) <asp:TextBox ID="Signature" runat="server"></asp:TextBox></div>
                    <div>OptOut (0 or 1) <asp:TextBox ID="OptOut" runat="server"></asp:TextBox></div>
                    <div>Entry Box (0 or 1) <asp:TextBox ID ="EntryBox" runat="server"></asp:TextBox></div>

                </asp:WizardStep>
                
                <asp:WizardStep runat="server" StepType="Finish" Title="Finish">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        <br />
        <br />
        </form>
</body>
</html>
