<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="CreateTemplate.aspx.cs" Inherits="ContractGenerator.CreateTemp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>Create Template</title>
      <link href="../bootstrap.css" rel="stylesheet"/>
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../js/bootstrap.js"></script> 
</head>
<body>
      <% Response.WriteFile("~/header.aspx");%>    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
    
        <h1>Create contract Template</h1><br />
        <div>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" FinishDestinationPageUrl="~/Management/ViewTemplate.aspx" FinishPreviousButtonType="Link">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep ID="TempNameStep" runat="server" Title="Template Name">
                    <asp:Label ID="templateNameLabel" runat="server" Text="Label">Template Name:</asp:Label>
                    <asp:TextBox ID="templateNameBox" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep ID="ChooseSectionStep" runat="server" Title="Choose Sections">
                    <asp:CheckBoxList ID="SectionList" runat="server" DataSourceID="ContractGen" DataTextField="SectionTitle" DataValueField="SectionTitle" AutoPostBack="True" OnSelectedIndexChanged="SectionList_SelectedIndexChanged"></asp:CheckBoxList>
                    <asp:SqlDataSource ID="ContractGen" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [SectionTitle] FROM [ContractSection]"></asp:SqlDataSource>
                </asp:WizardStep>

                <asp:WizardStep ID="ChooseDetailStep" runat="server" Title="Add Contract Detail">
                    <asp:CheckBoxList ID="DetailList" runat="server" DataSourceID="SqlDataSource1" DataTextField="SectionDetail" DataValueField="SectionDetail"></asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT [SectionDetail] FROM [ContractSection]"></asp:SqlDataSource>
                </asp:WizardStep>
                <asp:WizardStep ID="CreatedByStep" runat="server" Title="Created By">
                       <asp:Label ID="createdByLabel" runat="server" Text="Label">Created By:</asp:Label>
                    <asp:TextBox ID="createdByBox" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep ID="DateCreatedStep" runat="server" Title="Date Created">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </asp:WizardStep>
                <asp:WizardStep ID="DwnldPDFStep" runat="server" Title="Download PDF">
                        <asp:Button ID="DwnldPDFButton" runat="server" Text="Button" OnClick="DwnldPDFButton_Click" style="height: 26px" />
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" Title="Finish">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
            </div>
        <br />
        <br />
        

    </div>
    </form>
</body>
</html>
</asp:Content>
