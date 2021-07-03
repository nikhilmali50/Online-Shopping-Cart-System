<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orderhist.aspx.cs" Inherits="orderhist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
    </style>
</head>
<body background="images/wooden-1680x1050.jpg" 
    style="color: #FFFFFF; font-weight: 700; font-size: x-large">
    <form id="form1" runat="server">
    <div>
    
        <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Your order history.....</span><br />
        <br />
        <br />
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="orderid" DataSourceID="SqlDataSource1" Width="1042px" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" ForeColor="Black" Height="208px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="orderid" HeaderText="orderid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="orderid" />
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
            DeleteCommand="DELETE FROM [order] WHERE [orderid] = @orderid" 
            InsertCommand="INSERT INTO [order] ([username], [productid], [Quantity], [Address], [BillingAmount]) VALUES (@username, @productid, @Quantity, @Address, @BillingAmount)" 
            SelectCommand="SELECT * FROM [order] WHERE ([username] = @username)" 
            UpdateCommand="UPDATE [order] SET [username] = @username, [productid] = @productid, [Quantity] = @Quantity, [Address] = @Address, [BillingAmount] = @BillingAmount WHERE [orderid] = @orderid">
            <DeleteParameters>
                <asp:Parameter Name="orderid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="productid" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="BillingAmount" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="id" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="productid" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="BillingAmount" Type="String" />
                <asp:Parameter Name="orderid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
