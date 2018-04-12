using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;
using System.Collections;

public partial class 会议室需求界面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String cc = Session["cc"].ToString();
        if (cc == "1")
        {
            String CSIT_id = Session["CSIT_id"].ToString();
            select(CSIT_id);
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = true;

            CheckBox1.Enabled = false;
            CheckBox2.Enabled = false;
            CheckBox3.Enabled = false;
            CheckBox4.Enabled = false;
            CheckBox5.Enabled = false;
            CheckBox6.Enabled = false;
            CheckBox7.Enabled = false;

            CheckBox9.Enabled = false;
            CheckBox10.Enabled = false;
            CheckBox11.Enabled = false;
            CheckBox12.Enabled = false;

            CheckBox14.Enabled = false;
            CheckBox15.Enabled = false;
            CheckBox16.Enabled = false;
            CheckBox17.Enabled = false;

            TextBox1.Enabled = false;
            TextBox2.Enabled = false;

        }
        else if (cc == "2")
        {
            Button2.Visible = false;
            String CSIT_id = Session["CSIT_id"].ToString();
            select(CSIT_id);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cancel();
        delete();
        Response.Redirect("查看已预订会议室.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            yuding();

    }


    public void yuding()
    {
        String CSIT_id = Session["CSIT_id"].ToString();

        Boolean audio = false;
        Boolean Lighting = false;
        Boolean Microphone = false;
        Boolean Laptop = false;
        Boolean Recorder = false;
        Boolean Camera = false;
        Boolean Logo = false;
        String IT_con = null;

        Boolean Signature = false;
        Boolean Guide = false;
        Boolean Tea = false;
        Boolean Screen = false;
        String CS_con = null;

        Boolean Lunch = false;
        Boolean Snack = false;
        Boolean Pick = false;
        Boolean Send = false;

        IT_con = TextBox1.Text;
        CS_con = TextBox2.Text;

        if (CheckBox1.Checked)
        {
            audio = true;
        }
        if (CheckBox2.Checked)
        {
            Lighting = true;
        }
        if (CheckBox3.Checked)
        {
            Microphone = true;
        }
        if (CheckBox4.Checked)
        {
            Laptop = true;
        }
        if (CheckBox5.Checked)
        {
            Recorder = true;
        }
        if (CheckBox6.Checked)
        {
            Camera = true;
        }
        if (CheckBox7.Checked)
        {
            Logo = true;
        }
        if (CheckBox9.Checked)
        {
            Signature = true;
        }
        if (CheckBox10.Checked)
        {
            Guide = true;
        }
        if (CheckBox11.Checked)
        {
            Tea = true;
        }
        if (CheckBox12.Checked)
        {
            Screen = true;
        }
        if (CheckBox14.Checked)
        {
            Lunch = true;
        }
        if (CheckBox5.Checked)
        {
            Snack = true;
        }
        if (CheckBox16.Checked)
        {
            Pick = true;
        }
        if (CheckBox17.Checked)
        {
            Send = true;
        }

        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();

            cmd.Parameters.AddWithValue("@CSIT_id", CSIT_id);

            cmd.Parameters.AddWithValue("@audio", audio);
            cmd.Parameters.AddWithValue("@lighting", Lighting);
            cmd.Parameters.AddWithValue("@microphone", Microphone);
            cmd.Parameters.AddWithValue("@laptop", Laptop);
            cmd.Parameters.AddWithValue("@recorder", Recorder);
            cmd.Parameters.AddWithValue("@camera", Camera);
            cmd.Parameters.AddWithValue("@logo", Logo);
            cmd.Parameters.AddWithValue("@IT_con", IT_con);

            cmd.Parameters.AddWithValue("@signature", Signature);
            cmd.Parameters.AddWithValue("@guide", Guide);
            cmd.Parameters.AddWithValue("@tea", Tea);
            cmd.Parameters.AddWithValue("@screen", Screen);
            cmd.Parameters.AddWithValue("@CS_con", CS_con);

            cmd.Parameters.AddWithValue("@lunch", Lunch);
            cmd.Parameters.AddWithValue("@snack", Snack);
            cmd.Parameters.AddWithValue("@pick", Pick);
            cmd.Parameters.AddWithValue("@send", Send);

            String cc = Session["cc"].ToString();
            if (cc == "2") { cmd.CommandText = "UPDATE CSIT set audio=@audio,lighting=@lighting,micophone=@microphone,laptop=@laptop,camera=@camera,logo=@logo,signature=@signature,guideboare=@guide,tea=@tea,screen=@screen,lunch=@lunch,snack=@snack,pickup=@pick,send=@send,IT_contents=@IT_con,CS_contents=@CS_con where CSIT_id=@CSIT_id"; }
            else
            {
                cmd.CommandText = "insert into CSIT(CSIT_id,audio,lighting,micophone,laptop,camera,logo,signature,guideboare,tea,screen,lunch,snack,pickup,send,IT_contents,CS_contents) values(@CSIT_id,@audio,@lighting,@microphone,@laptop,@camera,@logo,@signature,@guide,@tea,@screen,@lunch,@snack,@pick,@send,@IT_con,@CS_con)";
            }
            int ret = (int)cmd.ExecuteNonQuery();
            if (cc == "2")
            {
                conn.Close();
                cmd.Dispose();
                Response.Write("<script>alert('修改成功！');location.replace('查看已预订会议室.aspx');</script>");
            }
            else
            {
                if (ret > 0)
                {
                    conn.Close();
                    cmd.Dispose();
                    Response.Write("<script>alert('预定成功！');location.replace('用户主界面.aspx');</script>");
                }
                else
                {
                    conn.Close();
                    cmd.Dispose();
                    Response.Write("<script>alert('预定失败');location.replace('用户主界面.aspx');</script>");
                }
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
        for (int i = 1; i < 5; i++)
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

    public void delete()
    {
        String CSIT_id = Session["CSIT_id"].ToString();
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@CSIT_id", CSIT_id);
            cmd.CommandText = "delete from Book where CSIT_id=@CSIT_id";
            cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
        }
    }

    public void select(String CSIT_id)
    {
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@CSIT_id", CSIT_id);
            cmd.CommandText = "select audio,lighting,micophone,laptop,camera,logo,signature,guideboare,tea,screen,lunch,snack,pickup,send,IT_contents,CS_contents from CSIT where CSIT_id=@CSIT_id";
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                if (reader.GetBoolean(0))
                {
                    CheckBox1.Checked = true;
                }
                if (reader.GetBoolean(1))
                {
                    CheckBox2.Checked = true;
                }
                if (reader.GetBoolean(2))
                {
                    CheckBox3.Checked = true;
                }
                if (reader.GetBoolean(3))
                {
                    CheckBox4.Checked = true;
                }
                if (reader.GetBoolean(4))
                {
                    CheckBox6.Checked = true;
                }
                if (reader.GetBoolean(5))
                {
                    CheckBox7.Checked = true;
                }
                if (reader.GetBoolean(6))
                {
                    CheckBox9.Checked = true;
                }
                if (reader.GetBoolean(7))
                {
                    CheckBox10.Checked = true;
                }
                if (reader.GetBoolean(8))
                {
                    CheckBox11.Checked = true;
                }
                if (reader.GetBoolean(9))
                {
                    CheckBox12.Checked = true;
                }
                if (reader.GetBoolean(10))
                {
                    CheckBox14.Checked = true;
                }
                if (reader.GetBoolean(11))
                {
                    CheckBox15.Checked = true;
                }
                if (reader.GetBoolean(12))
                {
                    CheckBox16.Checked = true;
                }
                if (reader.GetString(13).ToString().Trim() == "1")
                {
                    CheckBox17.Checked = true;
                }

              TextBox1.Text= reader.GetString(14).ToString().Trim();
              TextBox2.Text= reader.GetString(15).ToString().Trim();
            }
            reader.Close();
            conn.Close();
            cmd.Dispose();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("查看会议室预定情况.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("查看已预订会议室.aspx");
    }
}