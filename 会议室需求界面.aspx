<%@ Page Language="C#" AutoEventWireup="true" CodeFile="会议室需求界面.aspx.cs" Inherits="会议室需求界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .新建样式1 {
            font-family: 楷体;
            font-size: 40px;
            font-weight: bold;
        }

        .auto-style1 {
        }

        .新建样式2 {
            text-align: center;
            height: 38px;
            width: 88px;
            margin-left: 157px;
        }

        #Text2 {
            width: 348px;
        }

        #Text1 {
            width: 339px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="auto-style1">

                <span class="新建样式1">IT服务(IT Services):</span>
                <br />
                <br />
                &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox1" runat="server" Text="音响(Audio)" />
                &nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="灯光(Lighting)" />
                &nbsp;<asp:CheckBox ID="CheckBox3" runat="server" Text="话筒(Microphone)" />
                &nbsp;<asp:CheckBox ID="CheckBox4" runat="server" Text="笔记本(Laptop)" />
                <br />
                <br />
                &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox5" runat="server" Text="录像机(Audio Recorder)" />
                &nbsp;<asp:CheckBox ID="CheckBox6" runat="server" Text=" 照相机(Camera)" />
                <br />
                <br />
                &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox7" runat="server" Text="会标(Logo)" />
                &nbsp; 内容(Contents)：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;<br />
                <span class="新建样式1">会务服务(Conference Services):</span><br />
                <br />
                &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox9" runat="server" Text="签到(Signature)" />
                &nbsp;<asp:CheckBox ID="CheckBox10" runat="server" Text="指引牌(Guide Board)" />
                &nbsp;<asp:CheckBox ID="CheckBox11" runat="server" Text="茶点(Tea and Snack)" />
                <br />
                <br />
                &nbsp;&nbsp;

            <asp:CheckBox ID="CheckBox12" runat="server" Text=" 欢迎屏(Welcome Screen)" />
                &nbsp; 内容(Contents)：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <span class="新建样式1">餐饮，校车服务(Catering,School Bus Services):</span><br />
                <br />
                &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox14" runat="server" Text="午餐(Lunch)" />
                &nbsp;<asp:CheckBox ID="CheckBox15" runat="server" Text="点心(Snack)" />
                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox16" runat="server" Text="校车接(Pick up)" />
                &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox17" runat="server" Text="校车送(Send)" />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="34px" Text="确定" Width="79px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="34px" Text="取消" Width="79px" OnClick="Button2_Click" />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Height="34px" Text="取消" Width="79px" OnClick="Button4_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="34px" Text="返回上一页" Width="79px" Visible="False" OnClick="Button3_Click" />
                <br />
                &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

            </div>

            <p>
                &nbsp;
            </p>

        </div>
    </form>
</body>
</html>
