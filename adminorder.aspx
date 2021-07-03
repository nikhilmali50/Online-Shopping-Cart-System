<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminorder.aspx.cs" Inherits="adminorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="images/black_wood_background_by_egosumpotens-d3fst0k.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" DataKeyNames="orderid" DataSourceID="SqlDataSource1" 
            Width="1127px" CellSpacing="2" ForeColor="Black" Height="241px">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="orderid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="orderid" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="productid" HeaderText="productid" 
                    SortExpression="productid" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="BillingAmount" HeaderText="BillingAmount" 
                    SortExpression="BillingAmount" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:project %>" 
            SelectCommand="SELECT * FROM [order]"></asp:SqlDataSource>
    
    </div>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/adminwelcome.aspx">Back</asp:HyperLink>
    </form>
</body>
</html>
