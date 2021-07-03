<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminprod.aspx.cs" Inherits="adminprod" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="images/black_wood_background_by_egosumpotens-d3fst0k.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="prodid" 
            DataSourceID="SqlDataSource1" 
            PageSize="5" Width="696px" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="prodid" HeaderText="prodid" ReadOnly="True" 
                    SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="prodname" 
                    SortExpression="prodname" />
                <asp:BoundField DataField="category" HeaderText="category" 
                    SortExpression="category" />
                <asp:BoundField DataField="discription" HeaderText="discription" 
                    SortExpression="discription" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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
            DeleteCommand="DELETE FROM [products] WHERE [prodid] = @prodid" 
            InsertCommand="INSERT INTO [products] ([prodid], [prodname], [category], [discription], [price], [image]) VALUES (@prodid, @prodname, @category, @discription, @price, @image)" 
            SelectCommand="SELECT * FROM [products]" 
            UpdateCommand="UPDATE [products] SET [prodname] = @prodname, [category] = @category, [discription] = @discription, [price] = @price, [image] = @image WHERE [prodid] = @prodid">
            <DeleteParameters>
                <asp:Parameter Name="prodid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="prodid" Type="Int32" />
                <asp:Parameter Name="prodname" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="discription" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="prodname" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="discription" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="prodid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="prodid" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" GridLines="Vertical" 
        Height="102px" Width="248px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="prodid" HeaderText="prodid" ReadOnly="True" 
                SortExpression="prodid" />
            <asp:BoundField DataField="prodname" HeaderText="prodname" 
                SortExpression="prodname" />
            <asp:BoundField DataField="category" HeaderText="category" 
                SortExpression="category" />
            <asp:BoundField DataField="discription" HeaderText="discription" 
                SortExpression="discription" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/adminwelcome.aspx">Back</asp:HyperLink>
    </form>
</body>
</html>
