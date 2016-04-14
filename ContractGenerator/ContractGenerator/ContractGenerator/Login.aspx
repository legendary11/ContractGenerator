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
            padding-left: 20px;
        }
        .auto-style3 {
            height: 48px;
            padding-left: 20px;
        }
        .auto-style4 {
            height: 80px;
            padding-left:20px;
        }
        .auto-style5 {
           padding-right:20px;
        }
        .auto-style6
        {
           padding-bottom:20px;
        }
    </style>
</head>
<body>
    
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div class="userPrompt">
       
       <div class="container-fluid">
            <div class="row">
                <div class="col-md-7 col-md-offset-2p5 auto-style6">
                    <h1>Login to your profile</h1>
                </div>
            </div>
        </div>
        <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for a new account" CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/MainPanel.aspx" OnAuthenticate="Login1_Authenticate">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse; max-width:600px; width:600px; height: 207px;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="width:100%; height: 182px;" >
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
                                     <td align="left" class="auto-style4">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                    </td>
                                    <td align="right" class="auto-style5">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                    </td>
                                </tr>
                                <tr>
                                   
                                    <td colspan="2" align="center">
                                      <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink> 
                                   </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
        
        <br />
        
    </div>
    </form>
</body>
</html>
