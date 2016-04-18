<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTemp.aspx.cs" Inherits="ContractGenerator.CreateTemp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Create contract Template</h1><br />
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <WizardSteps>
                <asp:WizardStep ID="ChooseSectionStep" runat="server" Title="Choose Sections">
                    <asp:CheckBoxList ID="SectionList" runat="server" DataSourceID="ContractGen" DataTextField="SectionTitle" DataValueField="SectionTitle"></asp:CheckBoxList>
                    <asp:SqlDataSource ID="ContractGen" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [SectionTitle] FROM [ContractSection]"></asp:SqlDataSource>
                </asp:WizardStep>

                <asp:WizardStep ID="ChooseDetailStep" runat="server" Title="Add Contract Detail" StepType="Step">
                    <asp:CheckBoxList ID="DetailList" runat="server" DataSourceID="SqlDataSource1" DataTextField="SectionDetail" DataValueField="SectionDetail"></asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [SectionDetail] FROM [ContractSection]"></asp:SqlDataSource>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" Title="Finish">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
    </form>
</body>
</html>
