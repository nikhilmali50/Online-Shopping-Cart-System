using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 10; i < 55; i++)
        {
            DropDownList1.Items.Add(i.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["project"].ConnectionString;
        if (FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
            if (ext == ".jpeg" || ext == ".jpg")
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
                string imgpath = "~/images/" + filename;
                SqlConnection con = new SqlConnection(dbstring);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into userinfo values(@a,@b,@c,@d,@e,@f,@g,@h,@i)", con);
                cmd.Parameters.AddWithValue("@a", TextBox1.Text);
                cmd.Parameters.AddWithValue("@b", TextBox2.Text);
                cmd.Parameters.AddWithValue("@c", TextBox4.Text);
                cmd.Parameters.AddWithValue("@d", TextBox5.Text);
                cmd.Parameters.AddWithValue("@e", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@f", TextBox6.Text);
                cmd.Parameters.AddWithValue("@g", imgpath);
                cmd.Parameters.AddWithValue("@h",DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@i", TextBox7.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Label1.Text = "Error";
                }
            }
            else
            {
                Label1.Text = "Please choose a Valid Image";
            }
        }
        else
        {
            Label1.Text = "Please choose an Image";
        }
    }
}