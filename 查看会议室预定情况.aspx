<%@ Page Language="C#" AutoEventWireup="true" CodeFile="查看会议室预定情况.aspx.cs" Inherits="查看会议室预定情况" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
            #Button1 {
            height: 25px;
            width: 73px;
                z-index: 1;
                left: 955px;
                top: 625px;
                position: absolute;
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
            width: 93%;
            height: 530px;
            border: 2px solid #000000;
            margin-left: 122px;
            top: 75px;
            left: -87px;
            margin-right: 0px;
        }
        #Button2 {
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
            .auto-style99 {
                height: 26px;
                width: 201px;
            }
            .auto-style100 {
                height: 55px;
                width: 201px;
            }
            .auto-style101 {
                height: 52px;
                width: 201px;
            }
            .auto-style102 {
                height: 57px;
                width: 201px;
            }
            .auto-style103 {
                height: 56px;
                width: 201px;
            }
            .auto-style109 {
                width: 221px;
                height: 26px;
            }
            .auto-style110 {
                width: 221px;
                height: 55px;
            }
            .auto-style112 {
                width: 221px;
                height: 57px;
            }
            .auto-style113 {
                width: 221px;
                height: 56px;
            }
            .auto-style114 {
                width: 265px;
                height: 26px;
            }
            .auto-style115 {
                width: 265px;
                height: 55px;
            }
            .auto-style116 {
                width: 265px;
                height: 52px;
            }
            .auto-style117 {
                width: 265px;
                height: 57px;
            }
            .auto-style118 {
                width: 265px;
                height: 56px;
            }
            .auto-style119 {
                width: 339px;
                height: 26px;
            }
            .auto-style120 {
                width: 339px;
                height: 55px;
            }
            .auto-style121 {
                width: 339px;
                height: 52px;
            }
            .auto-style122 {
                width: 339px;
                height: 57px;
            }
            .auto-style123 {
                width: 339px;
                height: 56px;
            }
            .auto-style124 {
                width: 221px;
                height: 52px;
            }
            .auto-style125 {
                width: 407px;
                height: 26px;
            }
            .auto-style126 {
                width: 407px;
                height: 55px;
            }
            .auto-style127 {
                width: 407px;
                height: 52px;
            }
            .auto-style128 {
                width: 407px;
                height: 57px;
            }
            .auto-style129 {
                width: 407px;
                height: 56px;
            }
        #Button12 {
            height: 25px;
            width: 73px;
        }
            #Button13 {
            height: 25px;
            width: 73px;
        }
            #Button14 {
            height: 25px;
            width: 73px;
        }
            #Button19 {
            height: 25px;
            width: 73px;
        }
            .auto-style130 {
                width: 325px;
                height: 26px;
            }
            .auto-style131 {
                width: 325px;
                height: 55px;
            }
            .auto-style132 {
                width: 325px;
                height: 52px;
            }
            .auto-style133 {
                width: 325px;
                height: 57px;
            }
            .auto-style134 {
                width: 325px;
                height: 56px;
            }
            .auto-style135 {
                width: 87px;
                height: 26px;
            }
            .auto-style136 {
                width: 87px;
                height: 55px;
            }
            .auto-style137 {
                width: 87px;
                height: 52px;
            }
            .auto-style138 {
                width: 87px;
                height: 57px;
            }
            .auto-style139 {
                width: 87px;
                height: 56px;
            }
        #Button3 {
            height: 309px;
            width: 315px;
        }
        #Button3 {
            }
        #Button4 {
            height: 309px;
            width: 315px;
        }
        #Button4 {
            }
        #Button5 {
            height: 309px;
            width: 315px;
        }
        #Button5 {
            }
        #Button6 {
            height: 309px;
            width: 315px;
        }
        #Button6 {
            }
        #Button7 {
            height: 309px;
            width: 315px;
        }
        #Button7 {
            }
        #Button8 {
            height: 309px;
            width: 315px;
        }
        #Button8 {
            }
        #Button9 {
            height: 309px;
            width: 315px;
        }
        #Button9 {
            }
        #Button10 {
            height: 309px;
            width: 315px;
        }
        #Button10 {
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
        
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="返回" />
        
      <article style="width: 1070px; height: 559px; margin-top: 0px;">  
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <table align:"center" class="auto-style1">
              <tr>
                  <td class="auto-style114"></td>
                  <td class="auto-style130">时间</td>
                  <td class="auto-style125">时间段</td>
                  <td class="auto-style119">地点</td>
                  <td class="auto-style119">会议室类型</td>
                  <td class="auto-style109">姓名</td>
                  <td class="auto-style99"></td>
                  <td class="auto-style99">&nbsp;</td>
                  <td class="auto-style135"></td>
                  <td class="auto-style28"></td>
              </tr>
              <tr>
                  <td class="auto-style115">1</td>
                  <td class="auto-style131">
                      <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style126">
                      <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style120">
                      <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style120">
                      <asp:Label ID="Label30" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style110">
                      <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style100">
                      <asp:Label ID="Label25" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style100">
                      <asp:Button ID="Bu6" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style136">
                      <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                           <asp:ListItem>《请选择》</asp:ListItem>
                          <asp:ListItem>完成预约</asp:ListItem>
                          <asp:ListItem>未完成预约</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td class="auto-style29">
                      <asp:Button ID="B1" runat="server" Text="取消" Width="69px" OnClick="Btn_Click" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style116">2</td>
                  <td class="auto-style132">
                      <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style127">
                      <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style121">
                      <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style121">
                      <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style124">
                      <asp:Label ID="Label21" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style101">
                      <asp:Label ID="Label26" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style101">
                      <asp:Button ID="Bu7" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style137">
                      <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                          <asp:ListItem>《请选择》</asp:ListItem>
                          <asp:ListItem>完成预约</asp:ListItem>
                          <asp:ListItem>未完成预约</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td class="auto-style72">
                      <asp:Button ID="B2" runat="server" Text="取消" Width="69px" OnClick="Btn_Click"/>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style117">3</td>
                  <td class="auto-style133">
                      <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style128">
                      <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style122">
                      <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style122">
                      <asp:Label ID="Label32" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style112">
                      <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style102">
                      <asp:Label ID="Label27" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style102">
                      <asp:Button ID="Bu8" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style138">
                      <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                          <asp:ListItem>《请选择》</asp:ListItem>
                          <asp:ListItem>完成预约</asp:ListItem>
                          <asp:ListItem>未完成预约</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td class="auto-style80">
                      <asp:Button ID="B3" runat="server" Text="取消" Width="69px" OnClick="Btn_Click"/>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style118">4</td>
                  <td class="auto-style134">
                      <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style129">
                      <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style123">
                      <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style123">
                      <asp:Label ID="Label33" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style113">
                      <asp:Label ID="Label23" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style103">
                      <asp:Label ID="Label28" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style103">
                      <asp:Button ID="Bu9" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style139">
                      <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                          <asp:ListItem>《请选择》</asp:ListItem>
                          <asp:ListItem>完成预约</asp:ListItem>
                          <asp:ListItem>未完成预约</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td class="auto-style88">
                      <asp:Button ID="B4" runat="server" Text="取消" Width="69px" OnClick="Btn_Click"/>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style116">5</td>
                  <td class="auto-style132">
                      <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style127">
                      <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style121">
                      <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style121">
                      <asp:Label ID="Label34" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style124">
                      <asp:Label ID="Label24" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style101">
                      <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
                  </td>
                  <td class="auto-style101">
                      <asp:Button ID="Bu10" runat="server" Height="27px" Text="查看详细预订情况" Width="118px" OnClick="Btn2_Click"/>
                  </td>
                  <td class="auto-style137">
                      <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                          <asp:ListItem>《请选择》</asp:ListItem>
                          <asp:ListItem>完成预约</asp:ListItem>
                          <asp:ListItem>未完成预约</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td class="auto-style72">
                      <asp:Button ID="B5" runat="server" Text="取消" Width="69px" OnClick="Btn_Click"/>
                  </td>
              </tr>
          </table>
     
            </article>

    
    </form>
</body>
</html>
