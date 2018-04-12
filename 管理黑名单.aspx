<%@ Page Language="C#" AutoEventWireup="true" CodeFile="管理黑名单.aspx.cs" Inherits="管理黑名单" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        #Text1 {
            width: 60px;
        }
        .新建样式1 {
            font-family: 楷体;
            font-size: 35px;
            font-weight: bold;
        }
        #Button1 {
            height: 31px;
            margin-bottom: 0px;
        }
        #Button2 {
            height: 26px;
        }
        #Button3 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
        }
        #Button4 {
            height: 26px;
        }
        #Button4 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
        }
        #Button5 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
        }
        #Button4 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
        }
            .auto-style5 {
                text-align: center;
                width: 705px;
            }
            .auto-style6 {
                font-size: x-large;
            }
        #Button6 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <p class="auto-style5">
        &nbsp;<strong><span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 预定过会议室的人</span></strong></p>
    <p>
        &nbsp;
           <asp:Image ID="Image1" runat="server" src="1.jpg" Height="128px" Width="140px"/>
        &nbsp;&nbsp;&nbsp; &nbsp;<asp:ListBox ID="ListBox1" runat="server" style="z-index: 1; left: 230px; top: 58px; position: absolute; width: 422px; height: 406px; right: 341px;" AutoPostBack="True" DataSourceID="SqlDataBook_name" DataTextField="user_name" DataValueField="user_name"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataBook_name" runat="server" ConnectionString="<%$ ConnectionStrings:meet %>" SelectCommand="select distinct user_name from Userp join Book on Userp.user_id=Book.user_id"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        管理员</p>
    <p>
        <asp:Button ID="Button5" runat="server" Text="设置黑名单" OnClick="Button5_Click" />
        </p>
    <p style="z-index: 1; left: 715px; top: 257px; position: absolute; height: 26px; width: 92px; margin-top: 23px">
        &nbsp;</p>
    <p>
        <asp:Button ID="Button6" runat="server" Text="移除黑名单" OnClick="Button6_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" Text="返回主界面" Height="30px" OnClick="Button7_Click" />
        </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

    </div>
    </form>
</body>
</html>
