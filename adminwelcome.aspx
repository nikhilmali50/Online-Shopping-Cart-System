<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminwelcome.aspx.cs" Inherits="images_adminwelcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 296px;
        }
        .style2
        {
            width: 182px;
        }
        .style3
        {
            background-color: #FFCC00;
        }
        .style4
        {
            width: 296px;
            height: 99px;
        }
        .style5
        {
            width: 182px;
            height: 99px;
        }
        .style6
        {
            height: 99px;
        }
        .style7
        {
            width: 296px;
            height: 171px;
        }
        .style8
        {
            width: 182px;
            height: 171px;
        }
        .style9
        {
            height: 171px;
        }
    </style>
</head>
<body background="images/Wood_Wallpaper_by_stenosis.jpg" 
    style="font-size: xx-large; color: #800000">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <span class="style3">ADMINISTATOR SITE..</span><table 
            style="width:75%; height: 457px;">
            <tr>
                <td class="style1">
                    Welcome :Punit aggarwal</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/adminprod.aspx" 
                        style="color: #800000">products</asp:HyperLink>
                </td>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/adminorder.aspx" 
                        style="color: #800000">Orders</asp:HyperLink>
                </td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/adminedit.aspx" 
                        style="color: #800000">EDIT ADMIN ACCOUNT</asp:LinkButton>
                </td>
                <td class="style8">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        style="color: #990000">Signout</asp:LinkButton>
                </td>
                <td class="style9">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
