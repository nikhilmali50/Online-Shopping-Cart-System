<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 99%;
            height: 207px;
        }
        .style3
        {
            width: 224px;
        }
        .style4
        {
            width: 100%;
            height: 78px;
        }
        .style5
        {
            width: 206px;
        }
        .style6
        {
            width: 195px;
        }
        .style7
        {
            width: 186px;
        }
        .style8
        {
            width: 184px;
        }
        .style12
        {
            width: 100%;
            height: 199px;
        }
        .style13
        {
            width: 337px;
        }
        .style16
        {
            width: 417px;
            height: 106px;
        }
        .style18
        {
            width: 863px;
            height: 292px;
        }
        .style19
        {
            width: 650px;
        }
        .style22
        {
            width: 100%;
            height: 175px;
            margin-top: 3px;
        }
        .style17
        {
            width: 866px;
            height: 339px;
        }
        .style23
        {
            width: 870px;
        }
        .style24
        {
            width: 470px;
        }
    </style>
</head>
<body background="selectedaaa.jpg" style="height: 1299px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <img class="style16" src="BLUE.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
    </table>
    <table class="style4">
        <tr>
            <td class="style5">
                <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#990000" Height="40px" StaticSubMenuIndent="10px" Width="200px">
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <Items>
                        <asp:MenuItem Text="ABOUT US" Value="ABOUT US" NavigateUrl="~/aboutus.aspx">
                            <asp:MenuItem NavigateUrl="~/aboutus.aspx" Text="about us" Value="about us">
                            </asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                </asp:Menu>
            </td>
            <td class="style6">
                <asp:Menu ID="Menu2" runat="server" BackColor="#FFFBD6" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#990000" Height="38px" StaticSubMenuIndent="10px" Width="190px">
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <Items>
                        <asp:MenuItem Text="CONTACT US" Value="CONTACT US" 
                            NavigateUrl="~/contactus.aspx">
                            <asp:MenuItem NavigateUrl="~/contactus.aspx" Text="contact us at" 
                                Value="contact us at"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                </asp:Menu>
            </td>
            <td class="style7">
                <asp:Menu ID="Menu3" runat="server" BackColor="#FFFBD6" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#990000" Height="35px" StaticSubMenuIndent="10px" Width="200px">
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <Items>
                        <asp:MenuItem Text="PRODUCTS" Value="PRODUCTS">
                            <asp:MenuItem NavigateUrl="~/productview.aspx" Text="look for product" 
                                Value="look for product"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                </asp:Menu>
            </td>
            <td class="style8">

                <asp:Menu ID="Menu6" runat="server" BackColor="#FFFBD6" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#990000" Height="37px" StaticSubMenuIndent="10px" Width="172px">
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <Items>
                        <asp:MenuItem Text="FEEDBACK" Value="Admin login">
                            <asp:MenuItem NavigateUrl="~/feedback.aspx" Text="GIVE FEEDBACK" 
                                Value="welcome admin"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                </asp:Menu>
            </td>
            <td>
                <asp:Menu ID="Menu5" runat="server" BackColor="#FFFBD6" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#990000" Height="52px" StaticSubMenuIndent="10px" Width="169px">
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <Items>
                        <asp:MenuItem Text="MY ACCOUNT" Value="MY ACCOUNT">
                            <asp:MenuItem Text="LOGIN" Value="LOGIN" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="REGISTER NOW" Value="REGISTER NOW" 
                                NavigateUrl="~/Default.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                </asp:Menu>
            &nbsp;</td>
        </tr>
    </table>
    <table class="style12">
        <tr>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="search" />
&nbsp;<br />
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="6">
                    <ItemTemplate>
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
                        image:
                        <asp:Image ID="Image1" runat="server" Height="189px" 
                            ImageUrl='<%# Eval("image") %>' Width="187px" />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:project %>" 
                    SelectCommand="SELECT [prodname], [category], [discription], [price], [image] FROM [products] WHERE ([prodname] LIKE '%' + @prodname + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="prodname" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <img alt="" class="style18" src="Sangeetha_Banner2.jpg" /><br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
        <img alt="" class="style17" src="QQA.jpg" /><br />
            </td>
            <td class="style19">
                <p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <marquee behaviour="alternate" scrollamount="10"direction="up" align="center"
                    
                    
                        style="height: 564px; color: #FFFFFF; font-family: 'Lucida Sans Unicode'; font-size: xx-large; font-weight: 700;">
                             SMART SHOP 
                            <ul><li> The World's Online Marketplace®</li>
                         <li>enabling trade on a local National and International basis</li>
                         <li>With a diverse and passionate community of individuals and small businesses
                         shopimg mart offers an online platform where millions of items are traded each day</li></ul></marquee></p>
            </td>
        </tr>
    </table>
    </form>
    <p>
        &nbsp;</p>
    <table class="style22">
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table class="style22">
        <tr>
            <td class="style24">
            &nbsp;&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</body>
</html>
