<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="صفحه اصلی.aspx.cs" Inherits="SHOP._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            margin-left: 218px;
        }
        #Text1
        {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="style2">
        <asp:Panel ID="Panel2" runat="server" CssClass="style3" Height="104px">
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" 
                Text="نام کاربری"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" 
                Text="کلمه عبور"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </asp:Panel>
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="style1" 
            onclick="Button1_Click" Text="ورود کارمند" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="ورود مشتری" 
            onclick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="ورود مدیر" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="ثبت عضویت" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </asp:Panel>
    </form>
</body>
</html>
