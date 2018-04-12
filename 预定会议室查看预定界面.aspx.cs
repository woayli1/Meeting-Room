using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class 预定会议室查看预定界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["date"] = "1";
        chaxun();
    }
    protected void Btn_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        if (yuding(btn)) { Response.Redirect("确定界面.aspx"); }
        else { Response.Write("<script>alert('错误！');</script>"); }

    }
    public void chaxun()
    {
        String date = Session["date"].ToString();
        Boolean ZT = false;
        int k = 0;
        for (int i = 1; i < 6; i++)
        {
            for (int j = 1; j < 6; j++)
            {
                k = i + (j - 1) * 5;
                string name = "Button" + k;
                object o = this.GetType().GetField(name, System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.IgnoreCase).GetValue(this);

                string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connstr))
                {
                    conn.Open();
                    String room_id = "a-" + i;
                    String time = "time_" + j;
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.Parameters.AddWithValue("@room_id", room_id);
                    cmd.Parameters.AddWithValue("@time", time);
                    cmd.Parameters.AddWithValue("@date", date);
                    cmd.CommandText = "select * from Date where @time=@time and room_id=@room_id and date=@date";
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ZT = reader.GetBoolean(j + 1);
                    }

                    if (ZT)
                    {
                        ((Button)o).BackColor = System.Drawing.Color.Red;
                        ((Button)o).Enabled = false;
                    }
                    else
                    {
                        ((Button)o).BackColor = System.Drawing.Color.Green;
                        ((Button)o).Enabled = true;
                    }
                    conn.Close();
                    reader.Close();
                    cmd.Dispose();
                }
            }
        }

    }


    public bool yuding(Button btn)
    {
        String date = Session["date"].ToString();
        String room_id = null;
        String time = null;
        if (btn.ID == "Button1" || btn.ID == "Button6" || btn.ID == "Button11" || btn.ID == "Button16" || btn.ID == "Button21")
        { room_id = "a-1"; }
        else if (btn.ID == "Button2" || btn.ID == "Button7" || btn.ID == "Button12" || btn.ID == "Button17" || btn.ID == "Button22")
        { room_id = "a-2"; }
        else if (btn.ID == "Button3" || btn.ID == "Button8" || btn.ID == "Button13" || btn.ID == "Button18" || btn.ID == "Button23")
        { room_id = "a-3"; }
        else if (btn.ID == "Button4" || btn.ID == "Button9" || btn.ID == "Button14" || btn.ID == "Button19" || btn.ID == "Button24")
        { room_id = "a-4"; }
        else if (btn.ID == "Button5" || btn.ID == "Button10" || btn.ID == "Button15" || btn.ID == "Button20" || btn.ID == "Button25")
        { room_id = "a-5"; }

        if (btn.ID == "Button1" || btn.ID == "Button2" || btn.ID == "Button3" || btn.ID == "Button4" || btn.ID == "Button5")
        { time = "time_1"; }
        else if (btn.ID == "Button6" || btn.ID == "Button7" || btn.ID == "Button8" || btn.ID == "Button9" || btn.ID == "Button10")
        { time = "time_2"; }
        else if (btn.ID == "Button11" || btn.ID == "Button12" || btn.ID == "Button13" || btn.ID == "Button14" || btn.ID == "Button15")
        { time = "time_3"; }
        else if (btn.ID == "Button16" || btn.ID == "Button17" || btn.ID == "Button18" || btn.ID == "Button19" || btn.ID == "Button20")
        { time = "time_4"; }
        else if (btn.ID == "Button21" || btn.ID == "Button22" || btn.ID == "Button23" || btn.ID == "Button24" || btn.ID == "Button25")
        { time = "time_5"; }

        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            if (time == "time_1")
            { cmd.CommandText = "update Date set time_1='True' where room_id=@room_id and date=@date"; }
            else if (time == "time_2")
            {
                cmd.CommandText = "update Date set time_2='True' where room_id=@room_id and date=@date";
            }
            else if (time == "time_3")
            {
                cmd.CommandText = "update Date set time_3='True' where room_id=@room_id and date=@date";
            }
            else if (time == "time_4")
            {
                cmd.CommandText = "update Date set time_4='True' where room_id=@room_id and date=@date";
            }
            else if (time == "time_5")
            {
                cmd.CommandText = "update Date set time_5='True' where room_id=@room_id and date=@date";
            }
            cmd.Parameters.AddWithValue("@room_id", room_id);
            cmd.Parameters.AddWithValue("@time", time);
            cmd.Parameters.AddWithValue("@date", date);
            int ret = (int)cmd.ExecuteNonQuery();

            if (ret > 0)
            {
                conn.Close();
                cmd.Dispose();
                Session["room_id"] = room_id;
                Session["date"] = date;
                Session["time"] = time;
                Session["room_type"] = "yuding";
                return true;
            }
            else
            {
                conn.Close();
                cmd.Dispose();
                return false;
            }
        }
    }

    protected void Button26_Click(object sender, EventArgs e)
    {
        Response.Redirect("用户主界面.aspx"); 
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["date"] = DropDownList1.SelectedItem.Value.ToString();
        chaxun();
    }
}