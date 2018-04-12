using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class 查看已预订会议室 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user_id1 = Session["user_id"].ToString();

        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@id", user_id1);
            cmd.CommandText = "select user_id,user_name,phone,mail from Userp where user_id=@id";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Label6.Text = reader.GetString(0);
                Label5.Text = reader.GetString(1);
                Label8.Text = reader.GetString(2);
                Label7.Text = reader.GetString(3);
            }
            conn.Close();
            reader.Close();
            cmd.Dispose();
        }
        chaxun();
        xiugai();

    }
    protected void Btn_Click(object sender, EventArgs e)
    {

    }

    protected void Btn_Click2(object sender, EventArgs e)
    {
        if (cancle((Button)sender))
        {
            cancel((Button)sender);
            Response.Write("<script>alert('取消成功！');</script>");
            chaxun();
        }
        else
        {
            Response.Write("<script>alert('取消失败！');</script>");
        }
    }

    public void chaxun()
    {
        string user_id1 = Session["user_id"].ToString();
        String ti1 = null;
        int k = 0;
        int i = 5;
        int l = 5;
        int j = 0;



        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@id", user_id1);
            cmd.CommandText = "select date,time,room_id,zhuangtai,CSIT_id,type from Book where user_id=@id and zhuangtai<>1 order by CSIT_id";
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    for (j = 0; j < 5; j++, i = i + 5)
                    {
                        k = i + l;
                        string name = "Label" + k;
                        object o = this.GetType().GetField(name, System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.IgnoreCase).GetValue(this);

                        if (j == 1)
                        {
                            ti1 = reader.GetString(j).Trim();
                            ((Label)o).Text = change(ti1);
                        }
                        else if (j == 3)
                        {
                            string a = reader.GetString(j).Trim();
                            ((Label)o).BackColor = System.Drawing.Color.Black;
                            ((Label)o).Text = reader.GetString(4);
                            ((Label)o).ForeColor = System.Drawing.Color.Black;
                            if (a == "0")
                            {
                                ((Label)o).BackColor = System.Drawing.Color.Blue;
                                ((Label)o).Text = reader.GetString(4);
                                ((Label)o).ForeColor = System.Drawing.Color.Blue;
                            }
                            else if (a == "2")
                            {
                                ((Label)o).BackColor = System.Drawing.Color.Green;
                                ((Label)o).Text = reader.GetString(4);
                                ((Label)o).ForeColor = System.Drawing.Color.Green;
                            }
                            else if (a == "3")
                            {
                                ((Label)o).BackColor = System.Drawing.Color.Yellow;
                                ((Label)o).Text = reader.GetString(4);
                                ((Label)o).ForeColor = System.Drawing.Color.Yellow;
                            }
                        }
                        else if (j == 4)
                        {
                            String type = reader.GetString(5).Trim();
                            if (type == "yuding")
                            {
                                k = k + 5;
                                name = "Label" + k;
                                ((Label)o).Text = "预定会议室";
                            }
                            else if (type == "changgui")
                            {
                                k = k + 5;
                                name = "Label" + k;
                                ((Label)o).Text = "常规会议室";
                            }

                        }
                        else { ((Label)o).Text = reader.GetString(j); }
                    }

                    l = l + 1;
                    i = 5;
                }
                conn.Close();
                reader.Close();
                cmd.Dispose();
                num();
            }
        }
    }

    public String change(String time2)
    {
        if (time2 == "time_1")
        {
            return "08:00-10:00";
        }
        else if (time2 == "time_2")
        {
            return "10:00-12:00";
        }
        else if (time2 == "time_3")
        {
            return "12:00-14:00";
        }
        else if (time2 == "time_4")
        {
            return "14:00-16:00";
        }
        else if (time2 == "time_5")
        {
            return "16:00-18:00";
        }
        else { return "错误！"; }
    }

    public bool cancle(Button btn)
    {
        String CSIT_id = null;
        if (btn.ID == "B1")
        {
            CSIT_id = Label25.Text;
        }
        else if (btn.ID == "B2")
        {
            CSIT_id = Label26.Text;
        }
        else if (btn.ID == "B3")
        {
            CSIT_id = Label27.Text;
        }
        else if (btn.ID == "B4")
        {
            CSIT_id = Label28.Text;
        }
        else if (btn.ID == "B5")
        {
            CSIT_id = Label29.Text;
        }
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@id", CSIT_id);
            cmd.CommandText = "update Book set zhuangtai=1 where CSIT_id=@id";
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("用户主界面.aspx");
    }

    public void cancel(Button btn)
    {
        String room_id = null;
        String time = null;
        String date = null;
        if (btn.ID == "B1")
        {
            date = Label10.Text;
            time = Label15.Text;
            room_id = Label20.Text;
        }
        else if (btn.ID == "B2")
        {
            date = Label11.Text;
            time = Label16.Text;
            room_id = Label21.Text;
        }
        else if (btn.ID == "B3")
        {
            date = Label12.Text;
            time = Label17.Text;
            room_id = Label22.Text;
        }
        else if (btn.ID == "B4")
        {
            date = Label13.Text;
            time = Label18.Text;
            room_id = Label23.Text;
        }
        else if (btn.ID == "B5")
        {
            date = Label14.Text;
            time = Label19.Text;
            room_id = Label24.Text;
        }
        if (time == "08:00-10:00")
        {
            time = "time_1";
        }
        else if (time == "10:00-12:00")
        {
            time = "time_2";
        }
        else if (time == "12:00-14:00")
        {
            time = "time_3";
        }
        else if (time == "14:00-16:00")
        {
            time = "time_4";
        }
        else if (time == "16:00-18:00")
        {
            time = "time_5";
        }

        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@room_id", room_id);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@time", time);
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

    public void xiugai()
    {
        if (Label25.BackColor.Equals(System.Drawing.Color.Blue))
        {
            B1.Visible = true;
        }
        else
        {
            B1.Visible = false;
        }
        if (Label26.BackColor.Equals(System.Drawing.Color.Blue))
        {
            B2.Visible = true;
        }
        else
        {
            B2.Visible = false;
        }
        if (Label27.BackColor.Equals(System.Drawing.Color.Blue))
        {
            B3.Visible = true;
        }
        else
        {
            B3.Visible = false;
        }
        if (Label28.BackColor.Equals(System.Drawing.Color.Blue))
        {
            B4.Visible = true;
        }
        else
        {
            B4.Visible = false;
        }
        if (Label29.BackColor.Equals(System.Drawing.Color.Blue))
        {
            B5.Visible = true;
        }
        else
        {
            B5.Visible = false;
        }
    }

    public void num()
    {
        if (Label30.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label10.Text);
            Label10.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label10.Text = Label10.Text + (a + i * 7).ToString() + ".";
            }
        }
        if (Label31.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label11.Text);
            Label11.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label11.Text = Label11.Text + (a + i * 7).ToString() + ".";
            }
        }
        if (Label32.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label12.Text);
            Label12.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label12.Text = Label12.Text + (a + i * 7).ToString() + ".";
            }
        }
        if (Label33.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label13.Text);
            Label13.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label13.Text = Label13.Text + (a +i*7).ToString() + ".";
            }
        }
        if (Label34.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label14.Text);
            Label14.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label14.Text = Label14.Text + (a + i * 7).ToString() + ".";
            }
        }
    }

    protected void Btn2_Click(object sender, EventArgs e)
    {
        chakan((Button)sender);
    }
    public void chakan(Button btn)
    {
        Session["cc"] = "2";
        if (btn.ID == "Bu6")
        {
            Session["CSIT_id"] = Label25.Text;
        }
        else if (btn.ID == "Bu7")
        {
            Session["CSIT_id"] = Label26.Text;
        }
        else if (btn.ID == "Bu8")
        {
            Session["CSIT_id"] = Label27.Text;
        }
        else if (btn.ID == "Bu9")
        {
            Session["CSIT_id"] = Label28.Text;
        }
        else if (btn.ID == "Bu10")
        {
            Session["CSIT_id"] = Label29.Text;
        }
        Response.Redirect("会议室需求界面.aspx");
    }
}