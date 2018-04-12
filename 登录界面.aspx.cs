using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;

public partial class 登录界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user_id = TextBox1.Text.Trim();
        string password = TextBox2.Text.Trim();
        if (user_id == "" || password == "" || user_id == null || password == null)
        {
            Response.Write("<script>alert('用户名或密码不能为空！');</script>");
        }
        else
        {
            string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connstr))
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();

                cmd.Parameters.AddWithValue("@id", user_id);
                cmd.Parameters.AddWithValue("@pwd", password);

                cmd.CommandText = "select * from Userp where user_id=@id and password=@pwd";
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    Session["user_id"] = user_id;       
                    Response.Redirect("用户主界面.aspx");
                }
                else if (admin())
                {
                    Session["admin_id"] = user_id;
                    Session["date"] = "1";
                    Response.Redirect("管理员主界面.aspx");
                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误！');</script>");
                }
                conn.Close();
                reader.Close();
                cmd.Dispose();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = " ";
        this.TextBox2.Text = " ";
    }
    public bool admin()
    {
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            string user_id = TextBox1.Text;
            string password = TextBox2.Text;
            cmd.Parameters.AddWithValue("@name", user_id);
            cmd.Parameters.AddWithValue("@pwd", password);
            cmd.CommandText = "select * from admin where admin_id=@name and password=@pwd";

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                conn.Close();
                reader.Close();
                cmd.Dispose(); 
                return true;
            }
            conn.Close();
            reader.Close();
            cmd.Dispose();
            return false;
        }
    }
}