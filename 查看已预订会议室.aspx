<%@ Page Language="C#" AutoEventWireup="true" CodeFile="查看已预订会议室.aspx.cs" Inherits="查看已预订会议室" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
        #Button1 {
            height: 25px;
            width: 73px;
        }
        #Button2 {
            height: 309px;
            width: 315px;
        }
        jvzuo {
            text-align:left;
        }
        img {
            position:absolute;
            left:20px;
            top: 105px;
        }
        .auto-style1 {
            position:absolute;
            width: 73%;
            height: 525px;
            border: 2px solid #000000;
            margin-left: 122px;
            top: 80px;
            left: 128px;
            margin-right: 0px;
        }
        #Button2 {
            height: 25px;
            width: 73px;
        }
        #Button3 {
            height: 25px;
            width: 73px;
        }
        #Button4 {
            height: 25px;
            width: 73px;
        }
        #Button5 {
            height: 25px;
            width: 73px;
        }
        #Button6 {
            height: 309px;
            width: 315px;
        }
        #Button6 {
            height: 25px;
            width: 73px;
        }
        #Button7 {
            height: 309px;
            width: 315px;
        }
        #Button7 {
            height: 25px;
            width: 73px;
        }
        #Button8 {
            height: 309px;
            width: 315px;
        }
        #Button8 {
            height: 25px;
            width: 73px;
        }
        #Button9 {
            height: 25px;
            width: 73px;
        }
        #Button10 {
            height: 309px;
            width: 315px;
        }
        #Button10 {
            height: 25px;
            width: 73px;
        }
        .auto-style28 {
            width: 32px;
            height: 26px;
        }
        .auto-style29 {
            width: 32px;
            height: 55px;
        }
        .auto-style72 {
            width: 32px;
            height: 52px;
        }
        .auto-style80 {
            width: 32px;
            height: 57px;
        }
        .auto-style88 {
            width: 32px;
            height: 56px;
        }
        .新建样式1 {
            font-family: 楷体;
            font-size: 30px;
        }
        #Text1 {
            width: 105px;
        }
        #Text2 {
            width: 132px;
        }
        #Text3 {
            width: 172px;
        }
        #Text5 {
            width: 80px;
        }
        #Text6 {
            width: 91px;
        }
        #Text7 {
            width: 105px;
        }
        #Text8 {
            width: 80px;
        }
        #Text9 {
            width: 80px;
        }
        #Text10 {
            width: 80px;
        }
        #Text11 {
            width: 80px;
        }
        #Text12 {
            width: 80px;
        }
        #Text13 {
            width: 91px;
        }
        #Text14 {
            width: 91px;
        }
        #Text15 {
            width: 91px;
        }
        #Text16 {
            width: 105px;
        }
        #Text17 {
            width: 105px;
        }
        #Text18 {
            width: 105px;
        }
        #Text19 {
            width: 105px;
        }
        #Text20 {
            width: 91px;
        }
        #Text21 {
            width: 80px;
        }
        #Text22 {
            width: 80px;
        }
        #Text23 {
            width: 80px;
        }
        #Text24 {
            width: 80px;
        }
        #Text25 {
            width: 48px;
            height: 23px;
        }
        #Text26 {
            width: 48px;
            height: 23px;
        }
        #Text27 {
            width: 48px;
            height: 23px;
        }
        #Text28 {
            width: 48px;
            height: 23px;
        }
        #Text29 {
            width: 48px;
            height: 23px;
        }
        #Text30 {
            width: 105px;
        }
        #Text31 {
            width: 105px;
        }
        #Text32 {
            width: 105px;
        }
        #Text33 {
            width: 105px;
        }
        #Text34 {
            width: 105px;
        }
        #Text35 {
            width: 105px;
        }
        #Text36 {
            width: 105px;
        }
        #Text37 {
            width: 105px;
        }
        #Text38 {
            width: 105px;
        }
        #Text39 {
            width: 105px;
        }
        #Text40 {
            width: 105px;
        }
        #Text41 {
            width: 105px;
        }
        #Text42 {
            width: 105px;
        }
        #Text43 {
            width: 105px;
        }
        #Text44 {
            width: 105px;
        }
        #Text45 {
            width: 105px;
        }
        #Text46 {
            width: 105px;
        }
        #Text47 {
            width: 105px;
        }
        #Text48 {
            width: 105px;
        }
        #Text49 {
            width: 105px;
        }
        #Text50 {
            width: 105px;
        }
        #Text51 {
            width: 105px;
        }
        #Text52 {
            width: 105px;
        }
        #Text53 {
            width: 105px;
        }
        #Text54 {
            width: 105px;
        }
        #Text55 {
            width: 105px;
        }
        #Text56 {
            width: 105px;
        }
        #Text57 {
            width: 105px;
        }
        #Button11 {
            height: 25px;
            width: 73px;
        }
            .auto-style114 {
                width: 199px;
                height: 26px;
            }
            .auto-style115 {
                width: 199px;
                height: 55px;
            }
            .auto-style116 {
                width: 199px;
                height: 52px;
            }
            .auto-style117 {
                width: 199px;
                height: 57px;
            }
            .auto-style118 {
                width: 199px;
                height: 56px;
            }
            .auto-style119 {
                width: 786px;
                height: 26px;
            }
            .auto-style120 {
                width: 786px;
                height: 55px;
            }
            .auto-style121 {
                width: 786px;
                height: 52px;
            }
            .auto-style122 {
                width: 786px;
                height: 57px;
            }
            .auto-style123 {
                width: 786px;
                height: 56px;
            }
            .auto-style130 {
                width: 709px;
                height: 26px;
            }
            .auto-style131 {
                width: 709px;
                height: 55px;
            }
            .auto-style132 {
                width: 709px;
                height: 52px;
            }
            .auto-style133 {
                width: 709px;
                height: 57px;
            }
            .auto-style134 {
                width: 709px;
                height: 56px;
            }
            .auto-style140 {
                width: 608px;
                height: 26px;
            }
            .auto-style141 {
                width: 608px;
                height: 55px;
            }
            .auto-style142 {
                width: 608px;
                height: 52px;
            }
            .auto-style143 {
                width: 608px;
                height: 57px;
            }
            .auto-style144 {
                width: 608px;
                height: 56px;
            }
            .auto-style145 {
                width: 120px;
                height: 26px;
            }
            .auto-style146 {
                width: 120px;
                height: 55px;
            }
            .auto-style147 {
                width: 120px;
                height: 52px;
            }
            .auto-style148 {
                width: 120px;
                height: 57px;
            }
            .auto-style149 {
                width: 120px;
                height: 56px;
            }
            .auto-style150 {
                width: 569px;
                height: 26px;
            }
            .auto-style151 {
                width: 569px;
                height: 55px;
            }
            .auto-style152 {
                width: 569px;
                height: 52px;
            }
            .auto-style153 {
                width: 569px;
                height: 57px;
            }
            .auto-style154 {
                width: 569px;
                height: 56px;
            }
            .auto-style155 {
                width: 1144px;
                height: 26px;
            }
            .auto-style156 {
                width: 1144px;
                height: 55px;
            }
            .auto-style157 {
                width: 1144px;
                height: 52px;
            }
            .auto-style158 {
                width: 1144px;
                height: 57px;
            }
            .auto-style159 {
                width: 1144px;
                height: 56px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <span class="新建样式1">
            <asp:Label ID="Label1" runat="server" BackColor="#00CC00" BorderColor="#00CC00" ForeColor="#00CC00" Text="绿色"></asp:Label>
            绿色代表完成预约，<asp:Label ID="Label3" runat="server" BackColor="#33CCCC" BorderColor="#33CCCC" ForeColor="#33CCCC" Text="蓝色"></asp:Label>
            蓝色代表预约中，<asp:Label ID="Label4" runat="server" BackColor="Yellow" BorderColor="Yellow" ForeColor="Yellow" Text="黄色"></asp:Label>
            黄色代表未完成预约&nbsp; </span>
        
      <article style="width: 1070px; height: 559px; margin-top: 0px;">  
           <asp:Image ID="Image1" runat="server" Height="128px" Width="140px" ImageUrl="~/1.jpg"/>
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />      用户姓名：<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
          <br />
        学号：<asp:Label ID="Label6" runat="server" Text=""></asp:Label>
          <br />
        mail：<asp:Label ID="Label7" runat="server" Text=""></asp:Label>
          <br />
        电话：<asp:Label ID="Label8" runat="server" Text=""></asp:Label>
          <br />
          <table align:"center" class="auto-style1">
              <tr>
                  <td class="auto-style114"></td>
                  <td class="auto-style130">日期</td>
                  <td class="auto-style150">时间段</td>
                  <td class="auto-style119">地点</td>
                  <td class="auto-style155">会议室类型</td>
                  <td class="auto-style140"></td>
                  <td class="auto-style140">&nbsp;</td>
                  <td class="auto-style145"></td>
                  <td class="auto-style28"></td>
              </tr>
              <tr>
                  <td class="auto-style115">1</td>
                  <td class="auto-style131">
                      <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style151">
                      <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style120">
                      <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style156">
                      <asp:Label ID="Label30" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style141">
                      <asp:Label ID="Label25" runat="server"></asp:Label>
                  </td>
                  <td class="auto-style141">
                      <asp:Button ID="Bu6" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style146">
                      <asp:Button ID="Button11" runat="server" OnClick="Btn_Click" Text="修改" />
                      </td>
                  <td class="auto-style29">
                      <asp:Button ID="B1" runat="server" Text="取 消" Height="25px" Width="73px" OnClick="Btn_Click2" />
                      </td>
              </tr>
              <tr>
                  <td class="auto-style116">2</td>
                  <td class="auto-style132">
                      <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style152">
                      <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style121">
                      <asp:Label ID="Label21" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style157">
                      <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style142">
                      <asp:Label ID="Label26" runat="server" ></asp:Label>
                  </td>
                  <td class="auto-style142">
                      <asp:Button ID="Bu7" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style147">
                      <asp:Button ID="Button12" runat="server" Text="修改" Height="25px" Width="73px"/>
                  </td>
                  <td class="auto-style72">
                      <asp:Button ID="B2" runat="server" Text="取消" Height="25px" Width="73px" OnClick="Btn_Click2"/>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style117">3</td>
                  <td class="auto-style133">
                      <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style153">
                      <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style122">
                      <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style158">
                      <asp:Label ID="Label32" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style143">
                      <asp:Label ID="Label27" runat="server" ></asp:Label>
                  </td>
                  <td class="auto-style143">
                      <asp:Button ID="Bu8" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style148">
                      <asp:Button ID="Button13" runat="server" Text="修改" Height="25px" Width="73px"/>
                  </td>
                  <td class="auto-style80">
                      <asp:Button ID="B3" runat="server" Text="取消" Height="25px" Width="73px" OnClick="Btn_Click2"/>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style118">4</td>
                  <td class="auto-style134">
                      <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style154">
                      <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style123">
                      <asp:Label ID="Label23" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style159">
                      <asp:Label ID="Label33" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style144">
                      <asp:Label ID="Label28" runat="server" ></asp:Label>
                  </td>
                  <td class="auto-style144">
                      <asp:Button ID="Bu9" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style149">
                      <asp:Button ID="Button14" runat="server" Text="修改" Height="25px" Width="73px"/>
                  </td>
                  <td class="auto-style88">
                      <asp:Button ID="B4" runat="server" Text="取消" Height="25px" Width="73px" OnClick="Btn_Click2"/>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style116">5</td>
                  <td class="auto-style132">
                      <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style152">
                      <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style121">
                      <asp:Label ID="Label24" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style157">
                      <asp:Label ID="Label34" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style142">
                      <asp:Label ID="Label29" runat="server" ></asp:Label>
                  </td>
                  <td class="auto-style142">
                      <asp:Button ID="Bu10" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style147">
                      <asp:Button ID="Button15" runat="server" Text="修改" Height="25px" Width="73px"/>
                  </td>
                  <td class="auto-style72">
                      <asp:Button ID="B5" runat="server" Text="取消" Height="25px" Width="73px" OnClick="Btn_Click2"/>
                  </td>
              </tr>
          </table>
     
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 920px; top: 635px; position: absolute; height: 30px; width: 110px; margin-bottom: 1px" Text="返回预订界面" />
     
            </article>

    
    </div>
    </form>
</body>
</html>
