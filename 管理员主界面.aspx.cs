using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class 管理员主界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string admin_id = Session["admin_id"].ToString();
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@id", admin_id);
            cmd.CommandText = "select admin_name from Admin where admin_id=@id";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Label1.Text = reader.GetString(0);
            }
            conn.Close();
            reader.Close();
            cmd.Dispose();
        }
        Session["admin_name"] = Label1.Text;
        chaxun();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("查看会议室预定情况.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("管理黑名单.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("查看申诉.aspx");
    }

    public void chaxun()
    {
        String date=Session["date"].ToString();
        Boolean ZT = false;
        int k = 0;
        for (int i = 2; i < 7; i++)
        {
            for (int j = 2; j < 7; j++)
            {
                k = i + (j - 2) * 5;
                string name = "Label" + k;
                object o = this.GetType().GetField(name, System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.IgnoreCase).GetValue(this);


                string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connstr))
                {
                    conn.Open();
                    String room_id = "a-" + (i-1);
                    String time = "time_" + (j-1);
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.Parameters.AddWithValue("@room_id", room_id);
                    cmd.Parameters.AddWithValue("@time", time);
                    cmd.Parameters.AddWithValue("@date", date);
                    cmd.CommandText = "select * from Date where @time=@time and room_id=@room_id and date=@date";
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ZT = reader.GetBoolean(j);
                    }

                    if (ZT)
                    {
                        ((Label)o).BackColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        ((Label)o).BackColor = System.Drawing.Color.Green;
                    }
                    conn.Close();
                    reader.Close();
                    cmd.Dispose();
                }
            }
        }
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Redirect("登录界面.aspx"); 
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["date"] = DropDownList2.SelectedItem.Value.ToString();
        chaxun();
    }
}