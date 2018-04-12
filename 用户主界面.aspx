<%@ Page Language="C#" AutoEventWireup="true" CodeFile="用户主界面.aspx.cs" Inherits="用户主界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">       
     
        </style>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 527px; width: 1160px">
    <form id="form1" runat="server">
    <div  style="text-align:center">
           <h1>
               <asp:Label ID="Label1" runat="server" Text="选择所需要的会议室" Font-Size="50px" ></asp:Label>
           </h1>
      </div>
          <div> 
           <br />
           <asp:Image ID="Image1" runat="server" src="1.jpg" Height="128px" Width="140px"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
              <asp:Button ID="Button1" runat="server" Font-Size="30px" Height="243px" style="z-index: 1; left: 245px; top: 125px; position: absolute" Text="常规会议室" Width="305px" OnClick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Font-Size="30px" Height="243px" style="z-index: 1; left: 695px; top: 125px; position: absolute" Text="预定会议室" Width="305px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
           <br />
        <br />
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">查看我的会议室</asp:LinkButton>
           <br />
       

<script>
    function changgui() {
        window.location.href = "常规会议室查看预定界面.html";

    }
        </script>
    <script>
        function yuding() {
            window.location.href = "预定会议室查看预定界面.html";
        }
    </script>
        <script>
            function fanhui() {
                window.location.href = "登录界面.html";
            }
    </script>
           <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">向管理员申诉</asp:LinkButton>
    </div>
    <p>
        &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 1010px; top: 470px; position: absolute; height: 30px; width: 110px; margin-bottom: 1px" Text="退出登录" />
        </p>
    </form>
    </body>
</html>
