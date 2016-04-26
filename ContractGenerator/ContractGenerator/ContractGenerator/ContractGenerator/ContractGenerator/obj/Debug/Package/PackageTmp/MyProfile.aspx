<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="MyProfile.aspx.cs" Inherits="ContractGenerator.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>My Profile</title>
    <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
         
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333"
                 OnEditing="OnEditing" OnCanceling="OnCanceling" OnUpdating="OnUpdating" >
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    My Profile
                </HeaderTemplate>
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
                    <table style="border-collapse:collapse">
                        <tr>
                            <td align="left" style="width:150px">
                                User Name:
                            </td>
                            <td align="left" style="width:200px">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("[User Name]") %>' />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width:150px">
                            </td>
                            <td align="left" style="width:200px">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("[Frist Name]") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Last Name:
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("[Last Name]") %>' />

                            </td>
                        </tr>
                        <tr>
                            <td>
                                Company Name:
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("[Company Name]") %>' />                    
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address:
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Phone:
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Phone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Fax:
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Fax") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email:
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Create Date:
                            </td>
                            <td>
                                <asp:Label ID="Create_DateLabel" runat="server" Text='<%# Eval("[Create Date]") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Login Date:
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("[Login Date]") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                               <asp:Button ID="btnEdit" runat="server" Text='Edit' CommandName="OnEditing" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EditItemTemplate>
                    <table style="border-collapse:collapse">
                        <tr>
                            <td align="left" style="width: 150px">
                                User Name:
                            </td>
                            <td align="left" style="width: 200px">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("[User Name]") %>' />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 150px">
                            </td>
                            <td align="left" style="width: 200px">
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:
                            </td>
                            <td>
                                <asp:TextBox ID="Label3" runat="server" Text='<%# Eval("[Last Name]") %>' />

                            </td>
                        </tr>
                        <tr>
                            <td>Company Name:
                            </td>
                            <td>
                                <asp:TextBox ID="Label4" runat="server" Text='<%# Eval("[Company Name]") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Address:
                            </td>
                            <td>
                                <asp:TextBox ID="Label5" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Phone:
                            </td>
                            <td>
                                <asp:TextBox ID="Label6" runat="server" Text='<%# Eval("Phone") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Fax:
                            </td>
                            <td>
                                <asp:TextBox ID="Label7" runat="server" Text='<%# Eval("Fax") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Email:
                            </td>
                            <td>
                                <asp:TextBox ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Create Date:
                            </td>
                            <td>
                                <asp:Label ID="Create_DateLabel" runat="server" Text='<%# Eval("[Create Date]") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Login Date:
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("[Login Date]") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" >
                                <asp:Button ID="btnUpdate" runat="server" Text='Update' CommandName="Update" Width="75" />
                                <asp:Button ID="btnCancel" runat="server" Text='Cancel' CommandName="Cancel" Width="75" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContractGen %>" SelectCommand="SELECT Users.UserName AS 'User Name', UserInfo.FirstName AS 'Frist Name', UserInfo.LastName AS 'Last Name', UserInfo.CompanyName AS 'Company Name', UserInfo.Address, UserInfo.Phone, UserInfo.Fax, Memberships.Email, Memberships.CreateDate AS 'Create Date', Memberships.LastLoginDate AS 'Login Date' FROM UserInfo INNER JOIN Users ON UserInfo.UserID = Users.UserId INNER JOIN Memberships ON Users.UserId = Memberships.UserId WHERE (Users.UserId = @userID)">
                <SelectParameters>
                    <asp:SessionParameter Name="userID" SessionField="UserID" />
                </SelectParameters>
            </asp:SqlDataSource>

            
            <p>Change your password here</p>
        <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
            <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:ChangePassword>
    </div>
    </form>
</body>
</html>
</asp:Content>