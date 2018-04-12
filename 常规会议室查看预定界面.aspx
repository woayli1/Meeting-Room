<%@ Page Language="C#" AutoEventWireup="true" CodeFile="常规会议室查看预定界面.aspx.cs" Inherits="常规会议室查看预定界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #000000;
            height: 326px;
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
        .auto-style8 {
            font-size:30px;
            text-align: center;
            font-family:楷体;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
    <p class="auto-style8">
                选择日期：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDate" DataTextField="date" DataValueField="date" style="margin-bottom: 37px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDate" runat="server" ConnectionString="<%$ ConnectionStrings:meet %>" SelectCommand="select distinct date from Date "></asp:SqlDataSource>
        选择常规会议室预定，<asp:Label ID="Label1" runat="server" BackColor="#33CC33" BorderColor="#33CC33" ForeColor="#33CC33" Text="绿色"></asp:Label>
            绿色表示可以预定，<asp:Label ID="Label2" runat="server" BackColor="#CC0000" BorderColor="#CC0000" ForeColor="#CC0000" Text="红色"></asp:Label>
            红色表示已被预定</p>
    <table align:"center" class="auto-style1">
        <tr>
            <td class="auto-style2">常规会议室1
                </td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Height="33px" Text="08:00-10:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button6" runat="server" Height="33px" Text="10:00-12:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button11" runat="server" Height="33px" Text="12:00-14:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button16" runat="server" Height="33px" Text="14：00-16：00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button21" runat="server" Height="33px" Text="16：00-18：00" Width="121px" OnClick="Btn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">常规会议室2</td>
            <td class="auto-style3">
                <asp:Button ID="Button2" runat="server" Height="33px" Text="08:00-10:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button7" runat="server" Height="33px" Text="10:00-12:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button12" runat="server" Height="33px" Text="12:00-14:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button17" runat="server" Height="33px" Text="14：00-16：00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button22" runat="server" Height="33px" Text="16：00-18：00" Width="121px" OnClick="Btn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">常规会议室3</td>
            <td class="auto-style3">
                <asp:Button ID="Button3" runat="server" Height="33px" Text="08:00-10:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button8" runat="server" Height="33px" Text="10:00-12:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button13" runat="server" Height="33px" Text="12:00-14:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button18" runat="server" Height="33px" Text="14：00-16：00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button23" runat="server" Height="33px" Text="16：00-18：00" Width="121px" OnClick="Btn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">常规会议室4</td>
            <td class="auto-style3">
                <asp:Button ID="Button4" runat="server" Height="33px" Text="08:00-10:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button9" runat="server" Height="33px" Text="10:00-12:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button14" runat="server" Height="33px" Text="12:00-14:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button19" runat="server" Height="33px" Text="14：00-16：00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button24" runat="server" Height="33px" Text="16：00-18：00" Width="121px" OnClick="Btn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">常规会议室5</td>
            <td class="auto-style3">
                <asp:Button ID="Button5" runat="server" Height="33px" Text="08:00-10:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button10" runat="server" Height="33px" Text="10:00-12:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button15" runat="server" Height="33px" Text="12:00-14:00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button20" runat="server" Height="33px" Text="14：00-16：00" Width="121px" OnClick="Btn_Click" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button25" runat="server" Height="33px" Text="16：00-18：00" Width="121px" OnClick="Btn_Click" />
            </td>
        </tr>
    </table>
 
        <asp:Button ID="Button26" runat="server" Text="返回上一个界面" OnClick="Button26_Click" style="z-index: 1; left: 860px; top: 463px; position: absolute; height: 30px; width: 120px" />
 
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
