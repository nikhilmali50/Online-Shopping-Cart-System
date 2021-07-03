using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class order : System.Web.UI.Page
{
    string dbstring = ConfigurationManager.ConnectionStrings["project"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            Label3.Text = Session["id"].ToString();
            SqlConnection con = new SqlConnection(dbstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where prodid='" + Request.QueryString["var"].ToString() + "'",con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr[0].ToString();
                lbl_product.Text = dr[1].ToString();
                Label4.Text = dr[4].ToString();
            }
            con.Close();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int price = Convert.ToInt32(Label4.Text);
        int quantity = Convert.ToInt32(TextBox1.Text);
        int billingamt = price * quantity;
        SqlConnection con = new SqlConnection(dbstring);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into [order] values(@a,@b,@c,@d,@e)", con);
        cmd.Parameters.AddWithValue("@a", Label3.Text);
        cmd.Parameters.AddWithValue("@b", Label1.Text);
        cmd.Parameters.AddWithValue("@c", TextBox1.Text);
        cmd.Parameters.AddWithValue("@d", TextBox2.Text);
        cmd.Parameters.AddWithValue("@e", billingamt);
        int ii = cmd.ExecuteNonQuery();
        if (ii > 0)
        {
            Label5.Text = "Thanks For Ordering Your Billing amount is : " + billingamt + " You have to pay cash on Delivery, Your Order will Reach You in Next 7 Workking Days";
        }
        else
        {
            Label5.Text = "Order Canceled";
        }

    }
}