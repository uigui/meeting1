﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


        <h1>Change Password:</h1>

        <h3>Old Password</h3>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>

        <h3>New Password</h3>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

        <h3>New Password 2 Again</h3>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>


        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

        <asp:Button ID="Button1" runat="server" Text="修改密码" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>