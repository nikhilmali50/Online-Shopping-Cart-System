<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admincust.aspx.cs" Inherits="admincust" %>

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
            CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" 
            Height="296px" Width="1127px" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                    SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="contact" HeaderText="contact" 
                    SortExpression="contact" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
            DeleteCommand="DELETE FROM [userinfo] WHERE [username] = @username" 
            InsertCommand="INSERT INTO [userinfo] ([username], [password], [Name], [contact], [age], [email], [image]) VALUES (@username, @password, @Name, @contact, @age, @email, @image)" 
            SelectCommand="SELECT * FROM [userinfo]" 
            UpdateCommand="UPDATE [userinfo] SET [password] = @password, [Name] = @Name, [contact] = @contact, [age] = @age, [email] = @email, [image] = @image WHERE [username] = @username">
            <DeleteParameters>
                <asp:Parameter Name="username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="username" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/adminwelcome.aspx">Back</asp:HyperLink>
    </form>
</body>
</html>
