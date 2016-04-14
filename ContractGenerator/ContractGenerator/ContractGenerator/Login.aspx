<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ContractGenerator.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            height: 52px;
        }
        .auto-style3 {
            height: 48px;
        }
    </style>
</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div class="userPrompt">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7 col-md-offset-2">
                    <h1>Login to your profile</h1>
                </div>
            </div>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainPanel.aspx" Target="_parent">Home</asp:HyperLink>
        <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for a new account" CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/MainPanel.aspx" OnAuthenticate="Login1_Authenticate" Width="348px">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse; width:168%; height: 207px;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="width:99%; height: 182px; margin-left: 14px;" >
                                <tr>
                                    <td align="right" class="auto-style2" style="width=50%">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td class="auto-style2"  style="width=50%">
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style3">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                     <td align="left">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       <asp:HyperLink ID="CreateUserLink" runat="server" NavigateUrl="~/SignUp.aspx">Sign up for a new account</asp:HyperLink> 
                                   </td>
                                    <td>
                                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink> 
                                   </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
                                       
       <!-- <asp:LoginStatus ID="LoginStatus1" runat="server" /> -->
        <br />
        <br />
        
        <br />
    </div>
    </form>
</body>
</html>
