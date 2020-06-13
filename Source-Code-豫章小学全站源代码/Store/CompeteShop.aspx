<%@ page language="C#" autoeventwireup="true" inherits="Store_CompeteShop, App_Web_mxd1cmnv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>竞拍商品</title>
<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div id="main" class="rg_inout">
      <div class="rg_inout">
        <h1>竞拍商品</h1>
        <div class="cleardiv"></div>
        <div>
          <ul style="width: 600px; height: 216px">
            <li style="text-align: center; width: 180px">
              <asp:Label ID="lblimg" runat="server" Text="Label"></asp:Label>
            </li>
            <li>
            <li style=" width: 200px">
              <ul style="width: 200px">
                <li style="float: left; width: 200px; height: 30px">商品名称：<strong>
                  <asp:Label ID="lblProName" runat="server" Text="Label"></asp:Label>
                  </strong></li>
                <li style="float: left; width: 200px; height: 30px">竞拍起始价：
                  <asp:Label ID="lblProState" runat="server" Text="Label"></asp:Label>
                </li>
                <li style="float: left; width: 200px; height: 30px">当前最高价：
                  <asp:Label ID="lblMaxMoney" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                </li>
                <li style="float: left; width: 200px; height: 30px">出价保证金：
                  <asp:Label ID="lblCautionMoney" runat="server" Text="Label"></asp:Label>
                </li>
                <li style="width: 200px; height: 30px;">&nbsp;出&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价&nbsp;：
                  <asp:TextBox ID="txtMoney" Width="100px" runat="server"></asp:TextBox>
                </li>
                <li style="float: left; width: 200px; text-align: center">
                  <asp:Button  ID="Button1"  runat="server"  Text="出  价"  OnClick="Button1_Click"  />
                </li>
              </ul>
            </li>
            <li style=" width: 200px;">
              <ul style=" height: 60px">
                <li style="float: left; width: 200px; height: 30px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMoney" ErrorMessage="请输入你的竞拍价格"></asp:RequiredFieldValidator>
                </li>
                <li style="float: left; width: 200px; height: 30px">
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtMoney" ErrorMessage="请输入正确的价格" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <ul>
          <li>
            <p>
              <asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>
              &nbsp; </p>
          </li>
        </ul>
        <ul>
          <li style="width: 150px; text-align: center;">竞拍人姓名</li>
          <li style="width: 150px; text-align: center;">竞拍起始价</li>
          <li style="width: 150px; text-align: center;">竞拍价</li>
          <li style="width: 150px; text-align: center;">竞拍时间</li>
        </ul>
        <asp:Repeater ID="cartinfo" runat="server">
          <ItemTemplate>
            <ul>
              <li style="width: 150px; text-align: center;"> <%#getUserName(DataBinder.Eval(Container, "DataItem.UserID", "{0}"))%></li>
              <li style="width: 150px; text-align: center;"> <%=ColonelMoney%></li>
              <li style="width: 150px; text-align: center;"> <%#GetM(DataBinder.Eval(Container.DataItem ,"PMoney").ToString())%></li>
              <li style="width: 150px; text-align: center;"> <%#Eval("AddTime")%></li>
            </ul>
          </ItemTemplate>
        </asp:Repeater>
        <ul>
          <li style="width: 100%; text-align: center;">共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            人出价
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />
            /
            <asp:Label ID="PageSize" runat="server"  Text="" />
            页
            <asp:Label ID="pagess" runat="server" Text="" />
            个人/页 转到第
            <asp:DropDownList ID="DropDownList1"  runat="server" AutoPostBack="True"> </asp:DropDownList>
            页</li>
        </ul>
        <div class="cleardiv"> </div>
        <ul>
          <li style="width: 250px; text-align: left;"></li>
          <li>&nbsp;</li>
          <li style="width: 250px; text-align: left;"></li>
        </ul>
    </div>
    <!-- 右边结束 --> 
  </div>

<div id="bottom">
<a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
<p>
<script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp; <%Call.Label("{$SiteName/}"); %> All rights reserved.</p>
</div>
</form>
</body>
</html>