<%@ Page Language="C#" AutoEventWireup="true" CodeFile="确定界面.aspx.cs" Inherits="确定界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
            .auto-style1 {
            text-align: center;
        }
        #Button2 {
            width: 76px;
            height: 29px;
        }
        #Button1 {
            height: 28px;
            width: 76px;
        }
        #Text1 {
            width: 180px;
        }
        #Text2 {
            width: 169px;
        }
        #Text6 {
            width: 180px;
        }
        #Text7 {
            width: 180px;
        }
        #Text8 {
            width: 180px;
        }
        #Text9 {
            width: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        您选的会议室是：<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </p>
    <p class="auto-style1">
            您选的日期是：<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </p>
    <p class="auto-style1">
        您选的时间段是：<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </p>
    <p class="auto-style1">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           负责人姓名：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            
            &nbsp;<asp:Label ID="Label4" runat="server" Text="负责人姓名不能为空！" ForeColor="Red" Visible="False"></asp:Label>
            
        </p>
    <p class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       负责人电话：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        &nbsp;<asp:Label ID="Label5" runat="server" Text="负责人电话不能为空！" ForeColor="Red" Visible="False"></asp:Label>
        </p>
    <p class="auto-style1">
        <asp:Button ID="Button3" runat="server" Text="下一步" OnClick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button4" runat="server" Text="取消" Width="58px" OnClick="Button4_Click" />
        </p>

    <script>

        function next() {
            window.location.href = "会议室需求界面.html";
        }
        function back() {
            window.location.href = "用户主界面.html";
        }
        </script>
    </div>
    </form>
</body>
</html>
