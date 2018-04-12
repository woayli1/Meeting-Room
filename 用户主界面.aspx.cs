using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;


public partial class 用户主界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (list()) { Response.Write("<script>alert('用户名已被拉黑，请申诉！');</script>"); }
        else { Response.Redirect("常规会议室查看预定界面.aspx"); }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (list()) { Response.Write("<script>alert('用户名已被拉黑，请申诉！');</script>"); }
        else { Response.Redirect("预定会议室查看预定界面.aspx"); }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("登录界面.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("查看已预订会议室.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("黑名单用户申诉.aspx");
    }

    public bool list()
    {
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();

            String user_id = Session["user_id"].ToString();
            cmd.Parameters.AddWithValue("@id", user_id);

            cmd.CommandText = "select user_id from List where user_id=@id";
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                conn.Close();
                reader.Close();
                cmd.Dispose();
                return true;
            }
            else
            {
                conn.Close();
                reader.Close();
                cmd.Dispose();
                return false;
            }
        }
    }

}