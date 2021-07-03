<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            font-size: large;
            color: #990000;
        }
        .style3
        {
            color: #990000;
            font-weight: 700;
        }
        .style4
        {
            width: 243px;
            height: 194px;
        }
    </style>
</head>
<body background="images/Wood_Wallpaper_by_stenosis.jpg">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <img alt="" class="style4" src="images/feedback.jpg" /><br />
        <br />
        <br />
        <br />
        <br class="style3" />
        <span class="style2"><strong>Enter name&nbsp;</strong></span><span 
            class="style3">&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;&nbsp;
        </span>
        <br class="style3" />
        A<span class="style3"><strong>ddress&nbsp;</strong>&nbsp;&nbsp;&nbsp;</span><strong><span 
            class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="TextBox2" runat="server" Height="106px" Width="261px" 
            CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <br class="style3" />
        C<span class="style3">ity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;
        </span>
        <br class="style3" />
        S<span class="style3">tate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;&nbsp;
        </span>
        <br class="style3" />
        P<span class="style3">in&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;
        </span>
        <br class="style3" />
        E<span class="style3">mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        </span> 
        <asp:TextBox ID="TextBox6" runat="server" CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;
        </span>
        <br class="style3" />
        Q<span class="style3">ueries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong><span 
            class="style3">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="style3"></asp:TextBox>
        <span class="style3">&nbsp;
        </span>
        <br class="style3" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Width="1132px" CssClass="style3" />
        <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:project %>" 
            SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
