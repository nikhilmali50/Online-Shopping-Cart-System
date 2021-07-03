using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["project"].ConnectionString;
        
                SqlConnection con = new SqlConnection(dbstring);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into feedback values(@a,@b,@c,@d,@e,@f,@g)", con);
                cmd.Parameters.AddWithValue("@a", TextBox1.Text);
                cmd.Parameters.AddWithValue("@b", TextBox2.Text);
                cmd.Parameters.AddWithValue("@c", TextBox3.Text);
                cmd.Parameters.AddWithValue("@d", TextBox4.Text);
                cmd.Parameters.AddWithValue("@e", TextBox5.Text);
                cmd.Parameters.AddWithValue("@f", TextBox6.Text);
                cmd.Parameters.AddWithValue("@g",TextBox7.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("home.aspx");
                }
               
                
    }
}