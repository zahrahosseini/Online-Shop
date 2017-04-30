<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="صفحه مشتری.aspx.cs" Inherits="SHOP.صفحه_مشتری" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            height: 617px;
            text-align: center;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            text-align: center;
            margin-top: 43px;
        }
        #form1
        {
            width: 671px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <table style="width: 100%; height: 267px;">
            <tr>
                <td>
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="جستجو" />
                </td>
                <td class="style5">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="نام کالا"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="قیمت کالا کمتر از"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="نام تهیه کننده"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    <input id="Button2" type="button" value="مشاهده برترین کالاها" /></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    <input id="Button3" type="button" value="مشاهده سوابق خرید" /></td>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            CssClass="style6" DataKeyNames="serial" DataSourceID="db_shop" Enabled="False" 
            ForeColor="#333333" GridLines="None" Visible="False" Width="378px">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="serial" HeaderText="serial" ReadOnly="True" 
                    SortExpression="serial" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="supplier" HeaderText="supplier" 
                    SortExpression="supplier" />
                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="db_shop" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_shopConnectionString2 %>" 
            SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
