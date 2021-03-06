﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="MainPanel.aspx.cs" Inherits="ContractGenerator.Default" %>
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
    <% Response.WriteFile("~/header.aspx");%><% Response.WriteFile("~/footer.html");%> 
    <form id="form1" runat="server" >
        <div class="container-fluid">
            <div class="row">
                <div>
                   <p>
                 Welcome to your client page

                   </p>
                </div>
            </div>
        </div>
        
        <p>
            <asp:HyperLink ID="ContractsLink" runat="server" NavigateUrl="~/ViewContract.aspx" Visible="False">Contracts</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="SectionLink" runat="server" NavigateUrl="~/ViewEditSection.aspx">View/Edit Contract Section</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="ViewProfileLink" runat="server" NavigateUrl="~/MyProfile.aspx" Visible="False">View Profile</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="CreateProfileLink" runat="server" NavigateUrl="~/SignUp.aspx" Visible="False">Create Profile</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="AdminLink" runat="server" NavigateUrl="~/Management/AdminPanel.aspx" Visible="False">Adminstrator</asp:HyperLink>
        </p>
    </form>
</body>
</html>
</asp:Content>