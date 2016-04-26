<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="MainPanel.aspx.cs" Inherits="ContractGenerator.Default" %>
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
                   <h1 class="text-left">Welcome to your client page
                   </h1>
                   <br />
                    <img src="img/pen.jpg" width="auto" height="auto" alt="">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
</asp:Content>