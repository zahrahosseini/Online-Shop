<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="صفحه مدیر.aspx.cs" Inherits="SHOP.WebForm2" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="سفارش کالا به انبار" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    <asp:Panel ID="Panel1" runat="server" CssClass="style2">
        <asp:Button ID="Button2" runat="server" Text="مشاهده عملکرد کارمندان" />
    </asp:Panel>
    </form>
</body>
</html>
