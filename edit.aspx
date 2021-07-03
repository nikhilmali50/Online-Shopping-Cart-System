<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #800000;
        }
    </style>
</head>
<body background="images/Wood_Wallpaper_by_stenosis.jpg">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style1"><strong>&nbsp;&nbsp; EDIT YOUR PROFILE....</strong></span><br />
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="username" 
            DataSourceID="SqlDataSource1" Width="316px" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" GridLines="Both" 
            onpageindexchanging="FormView1_PageIndexChanging">
            <EditItemTemplate>
                username:
                <asp:Label ID="usernameLabel1" runat="server" Text='<%# Eval("username") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" 
                    Text='<%# Bind("password") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                contact:
                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                <br />
                age:
                <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                image:
                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                username:
                <asp:TextBox ID="usernameTextBox" runat="server" 
                    Text='<%# Bind("username") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" 
                    Text='<%# Bind("password") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                contact:
                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                <br />
                age:
                <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                image:
                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>
                            User Name</td>
                        <td>
                            <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Password</td>
                        <td>
                            <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Name</td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Contact</td>
                        <td>
                            <asp:Label ID="contactLabel" runat="server" Text='<%# Bind("contact") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Age</td>
                        <td>
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Email</td>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Image</td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="88px" 
                                ImageUrl='<%# Eval("image") %>' Width="90px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:project %>" 
            DeleteCommand="DELETE FROM [userinfo] WHERE [username] = @username" 
            InsertCommand="INSERT INTO [userinfo] ([username], [password], [Name], [contact], [age], [email], [image]) VALUES (@username, @password, @Name, @contact, @age, @email, @image)" 
            SelectCommand="SELECT * FROM [userinfo] WHERE ([username] = @username)" 
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
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="id" Type="String" />
            </SelectParameters>
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
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/welcome.aspx">Back</asp:LinkButton>
    </form>
</body>
</html>
