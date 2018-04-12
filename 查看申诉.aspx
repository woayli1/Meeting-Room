<%@ Page Language="C#" AutoEventWireup="true" CodeFile="查看申诉.aspx.cs" Inherits="查看申诉" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                z-index: 1;
                left: -140px;
                top: 314px;
                position: absolute;
                margin-top: 1px;
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
                width: 755px;
            }
        #Button4 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
                z-index: 1;
                left: -140px;
                top: 314px;
                position: absolute;
                margin-top: 1px;
            }
        #Button5 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
                z-index: 1;
                left: -140px;
                top: 314px;
                position: absolute;
                margin-top: 1px;
            }
        #Button6 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
                z-index: 1;
                left: -145px;
                top: 304px;
                position: absolute;
                margin-top: 1px;
            }
        #Button7 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
                z-index: 1;
                left: -140px;
                top: 314px;
                position: absolute;
                margin-top: 1px;
            }
        #Button8 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
                z-index: 1;
                left: -140px;
                top: 314px;
                position: absolute;
                margin-top: 1px;
            }
        #Button9 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
                z-index: 1;
                left: -140px;
                top: 314px;
                position: absolute;
                margin-top: 1px;
            }
        #Button10 {
            height: 32px;
            width: 85px;
            margin-left: 720px;
                z-index: 1;
                left: -145px;
                top: 369px;
                position: absolute;
                margin-top: 1px;
            }
            #TextArea1 {
                z-index: 1;
                left: 685px;
                top: 85px;
                position: absolute;
                height: 399px;
                width: 294px;
            }
            #TextArea2 {
                height: 388px;
                width: 304px;
                z-index: 1;
                left: 245px;
                top: 90px;
                position: absolute;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <p class="auto-style5">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="新建样式1">黑名单</span></p>
    <p>
        &nbsp;
           &nbsp;&nbsp;&nbsp; &nbsp;<textarea id="TextArea1" runat="server" name="S1"></textarea></p>
           <asp:Image ID="Image1" runat="server" Height="128px" Width="140px" ImageUrl="~/1.jpg"/>
        <asp:ListBox ID="ListBox1" runat="server" style="z-index: 1; left: 255px; top: 90px; position: absolute; height: 388px; width: 292px" AutoPostBack="True" DataSourceID="SqlDataList_user_name" DataTextField="user_name" DataValueField="user_name"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataList_user_name" runat="server" ConnectionString="<%$ ConnectionStrings:meet %>" SelectCommand="select distinct user_name from Userp join List on list.user_id=Userp.user_id where list.user_ss!='null'"></asp:SqlDataSource>
    <p>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        管理员</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button11" runat="server" style="z-index: 1; left: 590px; top: 310px; position: absolute; height: 31px; width: 75px" Text="查看申诉" OnClick="Button11_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button13" runat="server" Height="36px" Text="返回主界面" Width="87px" OnClick="Button13_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button12" runat="server" style="z-index: 1; left: 590px; top: 370px; position: absolute; height: 30px; width: 75px" Text="移除黑名单" OnClick="Button12_Click"/>
        </p>
        <p>
            &nbsp;</p>

    </div>
    </form>
</body>
</html>
