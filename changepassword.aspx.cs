using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class changepassword : System.Web.UI.Page
{
    string dbstring = ConfigurationManager.ConnectionStrings["project"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(dbstring);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from userinfo where username=@a and password=@b", con);
        cmd.Parameters.AddWithValue("@a", Session["id"].ToString());
        cmd.Parameters.AddWithValue("@b", TextBox1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
            Label1.Text = "Wrong Password";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(dbstring);
        con.Open();
        SqlCommand cmd = new SqlCommand("update userinfo set password = @b where username=@a", con);
        cmd.Parameters.AddWithValue("@a", Session["id"].ToString());
        cmd.Parameters.AddWithValue("@b", TextBox2.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        else
        {
            Label1.Text = "Password Cant be Updated";
        }

    }
}