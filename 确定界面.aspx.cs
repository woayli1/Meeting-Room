using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Collections;

public partial class 确定界面 : System.Web.UI.Page
{
    private static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        chakan();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["cc"] = "0";
        Label4.Visible = false;
        Label5.Visible = false;
        if (TextBox6.Text == null || TextBox7.Text == null || TextBox6.Text.Trim() == "" || TextBox7.Text.Trim() == "")
        {
            Label4.Visible = true;
            Label5.Visible = true;
        }
        else
        {
            if (yuding())
            {
                Response.Redirect("会议室需求界面.aspx");
            }
            else { Response.Write("<script>alert('错误！');</script>"); }
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        cancel();
        Response.Redirect("用户主界面.aspx");
    }

    public void chakan()
    {
        String room_id = Session["room_id"].ToString();
        String time = Session["time"].ToString();
        String date = Session["date"].ToString();
        int[] sRarr;
        sRarr =(int[])Session["date1"];

        String date2 = null;

        for (int i = 0; i < 5; i++)
        {
            if (sRarr[i] == 0)
            {
                break;
            }
            date2 = date2 + sRarr[i].ToString() + ".";
        }

        if (time == "time_1")
        {
            Label3.Text = "08:00-10:00";
        }
        else if (time == "time_2")
        {
            Label3.Text = "10:00-12:00";
        }
        else if (time == "time_3")
        {
            Label3.Text = "12:00-14:00";
        }
        else if (time == "time_4")
        {
            Label3.Text = "14:00-16:00";
        }
        else if (time == "time_5")
        {
            Label3.Text = "16:00-18:00";
        }

        Label1.Text = room_id;
        Label2.Text = date2;

    }

    public Boolean yuding()
    {
        String user_id = Session["user_id"].ToString();
        String room_id = Session["room_id"].ToString();
        String time = Session["time"].ToString();
        int date = Convert.ToInt32(Session["date"].ToString().Trim());
        String type = Session["room_type"].ToString();
        String fuze_name = TextBox6.Text;
        String fuze_phone = TextBox7.Text;
        String CSIT_id;

        String dt2 = System.DateTime.Now.ToString("yyyyMMddhhmmss");

        do
        {
            CSIT_id = CSIT(dt2);
        }
        while (jc(CSIT_id));

        Session["CSIT_id"] = CSIT_id;

        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();

            cmd.Parameters.AddWithValue("@user_id", user_id);
            cmd.Parameters.AddWithValue("@room_id", room_id);
            cmd.Parameters.AddWithValue("@time", time);
            cmd.Parameters.AddWithValue("@CSIT_id", CSIT_id);
            cmd.Parameters.AddWithValue("@fuze_name", fuze_name);
            cmd.Parameters.AddWithValue("@fuze_phone", fuze_phone);
            cmd.Parameters.AddWithValue("@type", type);
            cmd.Parameters.AddWithValue("@date", date);

            cmd.CommandText = "insert into Book(user_id,room_id,date,fuze_name,fuze_phone,time,zhuangtai,CSIT_id,type) values(@user_id,@room_id,@date,@fuze_name,@fuze_phone,@time,0,@CSIT_id,@type)";
            int ret = (int)cmd.ExecuteNonQuery();

            if (ret > 0)
            {
                conn.Close();
                cmd.Dispose();
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

    public static String CSIT(String data)
    {
        String b = null;
        String dt = System.DateTime.Now.ToString("yyyyMMddhhmmss");

        if (dt.Equals(data))
        {
            i = i + 1;
            b = dt + i;
        }
        else
        {
            i = 0;
            b = dt + i;
        }
        return b;
    }

    public bool jc(String id)
    {
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@CSIT_id", id);

            cmd.CommandText = "select CSIT_id from Book where CSIT_ID=@CSIT_id";
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

    public void cancel()
    {
        String room_id = Session["room_id"].ToString();
        String time = Session["time"].ToString();
        int[] date1;
        date1 = (int[])Session["date1"];
        int date = 0;
        for (int i = 0; i < 5; i++)
        {
            if (date1[i] == 0)
            {
                break;
            }
            date = date1[i];
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@room_id", room_id);
            cmd.Parameters.AddWithValue("@time", time);
            cmd.Parameters.AddWithValue("@date", date);

                if (time == "time_1")
                { cmd.CommandText = "update Date set time_1='False' where room_id=@room_id and date=@date"; }
                else if (time == "time_2")
                {
                    cmd.CommandText = "update Date set time_2='False' where room_id=@room_id and date=@date";
                }
                else if (time == "time_3")
                {
                    cmd.CommandText = "update Date set time_3='False' where room_id=@room_id and date=@date";
                }
                else if (time == "time_4")
                {
                    cmd.CommandText = "update Date set time_4='False' where room_id=@room_id and date=@date";
                }
                else if (time == "time_5")
                {
                    cmd.CommandText = "update Date set time_5='False' where room_id=@room_id and date=@date";
                }
                cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
        }
        }
    }
}