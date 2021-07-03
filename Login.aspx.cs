using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{

    string dbstring = ConfigurationManager.ConnectionStrings["project"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(dbstring);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from userinfo where username=@a and password=@b", con);
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);
        cmd.Parameters.AddWithValue("@b", TextBox2.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["id"] = TextBox1.Text;
            Response.Redirect("welcome.aspx");
        }
        else
        {
            SqlConnection con1 = new SqlConnection(dbstring);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("select * from adminlogin where username=@a and password=@b", con1);
            cmd1.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd1.Parameters.AddWithValue("@b", TextBox2.Text);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.HasRows)
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("adminwelcome.aspx");
            }
            else
            {
                Label1.Text = "Unauthorized Access";
            }
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}