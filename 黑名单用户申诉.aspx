<%@ Page Language="C#" AutoEventWireup="true" CodeFile="黑名单用户申诉.aspx.cs" Inherits="黑名单用户申诉" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        #TextArea1 {
            height: 420px;
            width: 690px;
        }
        .auto-style1 {
            text-align: center;
        }
        #Button1 {
            height: 31px;
            width: 71px;
        }
        #Button2 {
            height: 31px;
            width: 71px;
        }
        .新建样式1 {
            font-family: 楷体;
            font-size: 45px;
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <p class="auto-style1">
        <strong class="新建样式1">申诉页面</strong></p>
    <p class="auto-style1">
        <textarea id="TextArea1" runat="server" name="TextArea1"></textarea></p>
        <p class="auto-style1">
            <asp:Button ID="Button4" runat="server" Height="41px" OnClick="Button4_Click" Text="提交" Width="81px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Height="41px" OnClick="Button5_Click" Text="取消" Width="81px" />
        </p>
    <script>
        function submit() {
            var value = confirm("是否提交？");
            if (value) {
                alert("提交成功");
                window.location.href = "用户主界面.html";

            }
            else
                alert("提交失败");
        }

        function off() {
            window.location.href = "用户主界面.html";
        }
        </script>
    </div>
    </form>
</body>
</html>
