<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productview.aspx.cs" Inherits="productview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: Algerian;
            font-size: xx-large;
            color: #800000;
        }
        .style2
        {
            background-color: #FFFFFF;
        }
    </style>
</head>
<body background="crosshatch_wooden-background.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <span class="style2"><strong>PRODUCTS</strong></span><br />
    </div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="prodid" 
        DataSourceID="SqlDataSource1" RepeatColumns="6" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" GridLines="Both">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            prodid:
            <asp:Label ID="prodidLabel" runat="server" Text='<%# Eval("prodid") %>' />
            <br />
            prodname:
            <asp:Label ID="prodnameLabel" runat="server" Text='<%# Eval("prodname") %>' />
            <br />
            category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
            <br />
            discription:
            <asp:Label ID="discriptionLabel" runat="server" 
                Text='<%# Eval("discription") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            image:<asp:Image ID="Image1" runat="server" Height="146px" 
                ImageUrl='<%# Eval("image") %>' Width="173px" />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:project %>" 
        SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    </form>
</body>
</html>
