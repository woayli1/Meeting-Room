<%@ Page Language="C#" AutoEventWireup="true" CodeFile="管理员主界面.aspx.cs" Inherits="管理员主界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        .auto-style1 {
            width: 87%;
            border: 2px solid #000000;
            height: 203px;
        }
        .auto-style2 {
            width: 128px;
        }
        .auto-style3 {
            width: 125px;
        }
        .auto-style4 {
            width: 140px;
        }
        .auto-style5 {
            width: 147px;
        }
        .auto-style6 {
            width: 145px;
        }
        .auto-style7 {
            width: 137px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <p>
&nbsp;欢迎您:<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        管理员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 日期选择：<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDate" DataTextField="date" DataValueField="date" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDate" runat="server" ConnectionString="<%$ ConnectionStrings:meet %>" SelectCommand="select distinct date from Date"></asp:SqlDataSource>
&nbsp;</p>
    <p>
        点击会议室进行操作</p>
    <p>
        &nbsp; 
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="查看预定详细情况" />
        &nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button11" runat="server" Text="设置黑名单" OnClick="Button11_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button12" runat="server" Text="查看申诉" OnClick="Button12_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button13" runat="server" Text="退出登录" OnClick="Button13_Click" style="z-index: 1; left: 845px; top: 380px; position: absolute" />
        </p>

    <p><table align:"center" class="auto-style1">
        <tr>
            <td class="auto-style2">　　会议室1</td>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="08：00-10：00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Text="10：00-12：00"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label12" runat="server" Text="12：00-14：00"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label17" runat="server" Text="14：00-16：00"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label22" runat="server" Text="16：00-18：00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">　　会议室2</td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="08：00-10：00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Text="10：00-12：00"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label13" runat="server" Text="12：00-14：00"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label18" runat="server" Text="14：00-16：00"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label23" runat="server" Text="16：00-18：00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">　　会议室3</td>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="08：00-10：00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Text="10：00-12：00"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label14" runat="server" Text="12：00-14：00"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label19" runat="server" Text="14：00-16：00"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label24" runat="server" Text="16：00-18：00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">　　会议室4</td>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="08：00-10：00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label10" runat="server" Text="10：00-12：00"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label15" runat="server" Text="12：00-14：00"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label20" runat="server" Text="14：00-16：00"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label25" runat="server" Text="16：00-18：00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">　　会议室5</td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="08：00-10：00"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label11" runat="server" Text="10：00-12：00"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label16" runat="server" Text="12：00-14：00"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label21" runat="server" Text="14：00-16：00"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label26" runat="server" Text="16：00-18：00"></asp:Label>
            </td>
        </tr>
    </table>
        <br />
    <script>
        function lookup() {
            window.location.href = "查看已预订会议室.html";

        }
        </script>
    <script>
        function lookup2() {
            window.location.href = "管理黑名单.html";

        }
        </script>
    <script>
        function lookup3() {
            window.location.href = "查看申诉.html";

        }
        </script>
    </div>
    </form>
</body>
</html>
