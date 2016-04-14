<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contract.aspx.cs" Inherits="HTMLtoPDF.ConvertHTMLtoPDF" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contract</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 140px;
        }
        .auto-style16 {
            width: 74px;
            height: 23px;
        }
        .auto-style19 {
            width: 74px;
            height: 24px;
        }
        .auto-style28 {
            height: 24px;
        }
        .auto-style31 {
            width: 143px;
            height: 24px;
        }
        .auto-style33 {
            height: 23px;
        }
        .auto-style35 {
            width: 157px;
            height: 23px;
        }
        .auto-style36 {
            height: 23px;
        }
        .auto-style39 {
            height: 23px;
            width: 336px;
        }
        .auto-style40 {
        }
        .auto-style42 {
            width: 143px;
        }
        .auto-style44 {
            width: 74px;
            height: 22px;
        }
        .auto-style45 {
            height: 22px;
        }
        .auto-style46 {
            width: 143px;
            height: 22px;
        }
        .auto-style47 {
            height: 22px;
        }
        .auto-style48 {
            list-style-type: lower-alpha;
        }
        .auto-style50 {
            width: 312px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #0071C4; font-size: large">
    
        Website Development and Hosting Agreement</div>
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style44">Company:</td>
                <td class="auto-style45" colspan="2">
                    <asp:TextBox ID="CompanyBox" runat="server" Width="475px">Company Name</asp:TextBox>
                </td>
                <td class="auto-style46" style="text-align: right">Valid Through:</td>
                <td class="auto-style47" colspan="2">
                    <asp:TextBox ID="ValidThroughBox" runat="server" Width="320px">JAN 2017</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Name:</td>
                <td class="auto-style33" colspan="5">
                    <asp:TextBox ID="NameBox" runat="server" Width="474px">Primary Contact Name</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Address</td>
                <td class="auto-style36" colspan="5">
                    <asp:TextBox ID="AddressBox" runat="server" Width="475px">Business Address</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">City:</td>
                <td class="auto-style39">
                    <asp:TextBox ID="CityBox" runat="server" Width="330px">City</asp:TextBox>
                </td>
                <td class="auto-style35" style="text-align: right">State:</td>
                <td class="auto-style42">
                    <asp:TextBox ID="StateBox" runat="server" Width="135px">State</asp:TextBox>
                </td>
                <td class="auto-style50" style="text-align: right">ZIP:</td>
                <td>
                    <asp:TextBox ID="ZIPBox" runat="server">ZIP</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Phone:</td>
                <td class="auto-style28">
                    <asp:TextBox ID="PhoneBox" runat="server" Width="330px">Phone</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Email:</td>
                <td class="auto-style28" colspan="2">
                    <asp:TextBox ID="EmailBox" runat="server" Width="330px">Email address</asp:TextBox>
                </td>
                <td class="auto-style31">Primary Domain Name:</td>
                <td class="auto-style40" colspan="2">
                    <asp:TextBox ID="DomainBox" runat="server" Width="435px">www.[insterdomainhere].com</asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            This document describes the details of the products and/or services that will be provided to
            <asp:Label ID="CLIENTLabel" runat="server" Text="CLIENT"></asp:Label>
&nbsp;by Element 74, L.L.C.
            <asp:Label ID="CLIENTLabel2" runat="server" Text="CLIENT"></asp:Label>
&nbsp;is also referred to as &quot;CLIENT&quot; within this contract.</p>
        <h1 style="color: #3A71C4">
            1. Standard Scope of Work</h1>
        <hr />
        <p style="color: #000000">
            Your project includes the following Standard Deliverables and Functionality. Any specific requirements beyone the Standard Scope of Work will either be included in the Custom Scope of Work section, or subject to Element 74, L.L.C.&#39;s standard billing rate of $94 per hour.</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
                    1.
                    Wireframe and Sitemap documents</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
                    2.
                    Home page and Secondary page website design templates</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
                    3.
                    Site programming and EasyPost®™ 3.3 Installment</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
                    4.
                    EasyPost®™ Content Manager System Training</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
                    5.
                    Content Posting</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;">
                            Element 74, L.L.C. will post up to 10 pages of content for your project. Additional content posting will be billed at our normal rate.</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;">
                            Standard content posting includes the placement of imgage, text, and video. Any additional special JavaScript or Flash effects are not included in standard content posting.</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
                    6.
                    Forms</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;">
                            Two(1) basic forms will be included with your project (typically a &quot;Contact Us&quot; form and one additional)</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 80px;">
                                    Each form will have no more than 10 fields of data</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 80px;">
                                    Fields will include standard validation (whether information is required or not)</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 80px;">
                                    Any special formatting of fields will take additional programming time.</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;">
                            Additional forms and/or fields will be billed at our standard billing rate.</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
                    7.
                    Rotator Images</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;">
                            Images provided for the home page or secondary page rotator will be required to be delivered to ELEMENT 74, L.L.C. in a format that closely matches the format of the rotator. Additional billable graphic design hours may be necessary if images provided do not meet these specifications.</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
                    8.
                    3rd Part Integration</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px; margin-left: 40px;">
                            Integration with 3rd party vendors and their software components is not included in the Standard Scope and will be quoted separately or included in the Custom Scope of Work section.</p>
        <p style="font-size: medium; color: #000000">
            &nbsp;</p>
        <p style="color: #000000; margin-top: 0px; margin-bottom: 0px;">
            CLIENT Initials __________</p>
        <h1 style="color: #3A71C4">
            2. Custom Scope of Work</h1>
        <hr />
        <p>
            Your project will include the following custom deliverables that fall beyond our standard Scope of Work:</p>
        <ol>
            <li>Item 1<ol class="auto-style48">
                <li>Detail 1</li>
                <li>Detail 2</li>
                </ol>
            </li>
            <li>Item 2<ol class="auto-style48">
                <li>Detail 1</li>
                <li>Detail 2</li>
                </ol>
            </li>
            <li>Item 3<ol class="auto-style48">
                <li>Detail 1</li>
                <li>Detail 2</li>
                </ol>
            </li>
        </ol>
        <p style="text-decoration: underline">
            Items not listed above are considered out of scope for this project and will require a change order request from the CLIENT. Upon request, ELEMENT 74, L.L.C. will submit a quote to CLIENT at our standard billing rate for any additional work required.</p>
        <p>
            CLIENT Initials __________<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
    </form>
</body>
</html>
