<%@ page language="C#" autoeventwireup="true" inherits="Store_BuildupShop, App_Web_mxd1cmnv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>团购商品</title>
<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div id="main" class="rg_inout">
    <h1>团购商品</h1>
    <div>
      <ul style="width:600px; height: 220px">
        <li style="text-align: center; width: 180px">
          <asp:Label ID="lblimg" runat="server" Text="Label"></asp:Label>
        </li>
        <li style="width: 200px">
          <ul style="width: 200px">
            <li style="float: left; width: 200px; height: 30px">商品名称：<strong>
              <asp:Label ID="lblProName" runat="server" Text="Label"></asp:Label>
              </strong></li>
            <li style="float: left; width: 200px; height: 30px">团购价格：
              <asp:Label ID="lblProMoney" runat="server" Text="Label"></asp:Label>
            </li>
            <li style="float: left; width: 200px; height: 30px">组团数量：
              <asp:Label ID="lblnum" runat="server" Text="Label"></asp:Label>
            </li>
            <li style="float: left; width: 200px; height: 30px">现参与数量：
              <asp:Label ID="lblParticipatenum"  runat="server" Text="Label"></asp:Label>
            </li>
            <li style="float: left; width: 200px; height: 30px">团购保证金：
              <asp:Label ID="lblBuildupMoney" runat="server" Text="Label"></asp:Label>
            </li>
            <li style="width: 200px; height: 30px;">购买数量：
              <asp:TextBox ID="txtNum" Width="100px" runat="server"></asp:TextBox>
            </li>
            <li style="float: left; width: 200px; height: 30px; text-align:center;">
              <asp:Button ID="Button1" runat="server" Text="参加团购"  OnClientClick="return confirm('你确定要参加团购吗？我们将会从你的账号里扣除团购保证金！')"   onclick="Button1_Click" />
            </li>
          </ul>
        </li>
        <li style="text-align: center; width: 200px">
          <ul style="width: 200px; height: 60px">
            <li style="width: 200px; height: 30px">
              <ul style="width: 200px; height: 60px">
                <li style="float: left; width: 200px; height: 30px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNum" ErrorMessage="请输入你的团购数量"></asp:RequiredFieldValidator>
                </li>
                <li style="float: left; width: 200px; height: 30px">
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtNum" ErrorMessage="请输入正确的数字" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </li>
              </ul>
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
      <li style="width: 150px; text-align: center;">团购人姓名</li>
      <li style="width: 150px; text-align: center;">团购价格</li>
      <li style="width: 150px; text-align: center;">团购数量</li>
      <li style="width: 150px; text-align: center;">团购总金额</li>
      <li style="width: 150px; text-align: center;">参与时间</li>
    </ul>
    <asp:Repeater ID="cartinfo" runat="server">
      <ItemTemplate>
        <ul>
          <li style="width: 150px; text-align: center;"> <%#getUserName(DataBinder.Eval(Container, "DataItem.UserID", "{0}"))%></li>
          <li style="width: 150px; text-align: center;"> <%=ColonelMoney%></li>
          <li style="width: 150px; text-align: center;"> <%#System.Math.Round(double.Parse(DataBinder.Eval(Container.DataItem, "ShopNum").ToString()), 2)%></li>
          <li style="width: 150px; text-align: center;"> <%#double.Parse(ColonelMoney) * double.Parse(DataBinder.Eval(Container.DataItem, "ShopNum").ToString())%></li>
          <li style="width: 150px; text-align: center;"> <%#Eval("AddTime")%></li>
        </ul>
      </ItemTemplate>
    </asp:Repeater>
    <ul>
      <li style="width: 100%; text-align: center;">共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        人参与
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
  </div>
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