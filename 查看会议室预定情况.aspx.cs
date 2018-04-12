using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;


public partial class 查看会议室预定情况 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        chaxun();
        xiugai();
    }
    protected void Btn_Click(object sender, EventArgs e)
    {
        if (cancle((Button)sender))
        {
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
        String ti1 = null;
        int k = 0;
        int i = 5;
        int l = 0;
        int j = 0;

        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select date,time,room_id,user_name,zhuangtai,CSIT_id,type from Book right outer join Userp on Book.user_id=Userp.user_id where zhuangtai<>1 order by CSIT_id";
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    for (j = 0; j < 6; j++, i = i + 5)
                    {
                        k = i + l;
                        string name = "Label" + k;
                        object o = this.GetType().GetField(name, System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.IgnoreCase).GetValue(this);

                        if (j == 1)
                        {
                            ti1 = reader.GetString(j).Trim();
                            ((Label)o).Text = change(ti1);
                        }
                        else if (j == 4)
                        {
                            string a = reader.GetString(j).Trim();
                            ((Label)o).BackColor = System.Drawing.Color.Black;
                            ((Label)o).Text = reader.GetString(5);
                            if (a == "0")
                            {
                                ((Label)o).BackColor = System.Drawing.Color.Blue;
                                ((Label)o).Text = reader.GetString(5);
                                ((Label)o).ForeColor = System.Drawing.Color.Blue;
                            }
                            else if (a == "2")
                            {
                                ((Label)o).BackColor = System.Drawing.Color.Green;
                                ((Label)o).Text = reader.GetString(5);
                                ((Label)o).ForeColor = System.Drawing.Color.Green;
                            }
                            else if (a == "3")
                            {
                                ((Label)o).BackColor = System.Drawing.Color.Yellow;
                                ((Label)o).Text = reader.GetString(5);
                                ((Label)o).ForeColor = System.Drawing.Color.Yellow;
                            }
                        }
                        else if (j == 5)
                        {
                            String type = reader.GetString(6).Trim();
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

    public bool update(String CSIT, int a)
    {
        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Parameters.AddWithValue("@id", CSIT);
            cmd.Parameters.AddWithValue("@zhuangtai", a);
            cmd.CommandText = "update Book set zhuangtai=@zhuangtai where CSIT_id=@id";
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int a = 0;
        String CSIT = null;
        if (DropDownList1.SelectedItem.Value.ToString() == "未完成预约")
        {
            a = 3;
        }
        else if (DropDownList1.SelectedItem.Value.ToString() == "完成预约")
        {
            a = 2;
        }
        DropDownList dd = (DropDownList)sender;
        if (dd.ID == "DropDownList1")
        {
            CSIT = Label25.Text;
        }
        else if (dd.ID == "DropDownList2")
        {
            CSIT = Label26.Text;
        }
        else if (dd.ID == "DropDownList3")
        {
            CSIT = Label27.Text;
        }
        else if (dd.ID == "DropDownList4")
        {
            CSIT = Label28.Text;
        }
        else if (dd.ID == "DropDownList5")
        {
            CSIT = Label29.Text;
        }
        if (update(CSIT, a))
        {
            Response.Write("<script>alert('修改成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('修改成功！');</script>");
        }
        chaxun();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("管理员主界面.aspx");
    }

    protected void Btn2_Click(object sender, EventArgs e)
    {
        chakan((Button)sender);

    }
    public void chakan(Button btn)
    {
        Session["cc"] = "1";
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
    public void num()
    {
        if (Label30.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label5.Text);
            Label5.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label5.Text = Label5.Text + (a + i * 7).ToString() + ".";
            }
        }
        if (Label31.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label6.Text);
            Label6.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label6.Text = Label6.Text + (a + i * 7).ToString() + ".";
            }
        }
        if (Label32.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label7.Text);
            Label7.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label7.Text = Label7.Text + (a + i * 7).ToString() + ".";
            }
        }
        if (Label33.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label8.Text);
            Label8.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label8.Text = Label8.Text + (a + i * 7).ToString() + ".";
            }
        }
        if (Label34.Text == "常规会议室")
        {
            int a = Convert.ToInt32(Label9.Text);
            Label9.Text = null;
            for (int i = 0; i < 5; i++)
            {
                Label9.Text = Label9.Text + (a + i * 7).ToString() + ".";
            }
        }
    }
}