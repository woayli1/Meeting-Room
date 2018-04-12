using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;

public partial class 管理黑名单 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String admin_name = Session["admin_name"].ToString();
        Label1.Text = admin_name;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedItem.Value != null)
        {
            String name = ListBox1.SelectedItem.Value.ToString();
            string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.Parameters.AddWithValue("@name", name);
                cmd.CommandText = "insert into list(user_id) select user_id from Userp where user_name=@name";
                int ret = (int)cmd.ExecuteNonQuery();
                if (ret > 0)
                {
                    conn.Close();
                    cmd.Dispose();
                    Response.Write("<script>alert('设置黑名单成功！');</script>");

                }
                else
                {
                    conn.Close();
                    cmd.Dispose();
                    Response.Write("<script>alert('设置黑名单失败！');</script>");

                }
            }
        }
        else { Response.Write("<script>alert('请选择一个名字！');</script>"); }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedItem.Value != null)
        {
            String name = ListBox1.SelectedItem.Value.ToString();
            string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.Parameters.AddWithValue("@name", name);
                cmd.CommandText = "delete from List where user_id=(select user_id from Userp where user_name=@name)";
                int ret = (int)cmd.ExecuteNonQuery();
                if (ret > 0)
                {
                    conn.Close();
                    cmd.Dispose();
                    Response.Write("<script>alert('移除成功！');</script>");

                }
                else
                {
                    conn.Close();
                    cmd.Dispose();
                    Response.Write("<script>alert('移除失败！');</script>");

                }

            }
        }
        else { Response.Write("<script>alert('请选择一个名字！');</script>"); }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("管理员主界面.aspx"); 
    }
}