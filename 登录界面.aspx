<%@ Page Language="C#" AutoEventWireup="true" CodeFile="登录界面.aspx.cs" Inherits="登录界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
        #duiqi{
        margin:0px auto;}
        #Button1 {
            height: 27px;
            width: 67px;
        }
        #Button2 {
            height: 27px;
            width: 67px;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .新建样式1 {
            font-family: 微软雅黑;
            font-size: 64px;
        }
        .新建样式2 {
            font-family: 楷体;
            font-size: 55px;
        }
      
    </style>
</head>
<body style:"duiqi">
    <form id="form1" runat="server">

         <p class="auto-style2" >
        &nbsp;</p>
    <p class="auto-style2" >
        &nbsp;<strong class="新建样式2">会议室预定管理系统</strong></p>
    <p class="auto-style1" >
        &nbsp;</p>
    <p class="auto-style1">
        
        学号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         </p>
    <p class="auto-style1">
        密码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        &nbsp;<asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="重置" OnClick="Button2_Click" />
         </p>
   
    </form>
</body>
</html>
