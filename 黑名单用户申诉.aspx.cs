using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;

public partial class 黑名单用户申诉 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (ss())
        {
            Response.Write("<script>alert('提交成功！');location.replace('用户主界面.aspx');</script>");
        }
        else { Response.Write("<script>alert('提交失败');</script>"); }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("用户主界面.aspx");
    }

    public bool ss()
    {

        string connstr = System.Configuration.ConfigurationManager.ConnectionStrings["meet"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();

            String user_ss = Request.Form["TextArea1"];

            String user_id = Session["user_id"].ToString();
            cmd.Parameters.AddWithValue("@ss", user_ss);
            cmd.Parameters.AddWithValue("@id", user_id);

            cmd.CommandText = "update List set user_ss=@ss where user_id=@id ";
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



}