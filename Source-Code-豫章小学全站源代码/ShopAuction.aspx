<%@ page language="C#" autoeventwireup="true" inherits="ShopAuction, App_Web_m53mud2n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>竞拍商品</title>
<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="JS/ajaxrequest.js"></script>
<script language="JavaScript">
    rnd.today = new Date();

    rnd.seed = rnd.today.getTime();

    function rnd() {
        rnd.seed = (rnd.seed * 9301 + 49297) % 233280;
        return rnd.seed / (233280.0);

    };

    function rand(number) {
        return Math.ceil(rnd() * number);

    };

    function showmsg(txt, url) {
        window.onload = function() {
        clicktxt(txt, url);
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div id="main" class="rg_inout">
      <h1>竞拍商品</h1>
    <div class="cart_lei"></div>
        <ul style="width: 800px; height: 216px">
          <li style="text-align: center; width: 280px; margin-top: 10px">
            <asp:Label ID="lblimg" runat="server" Text=""></asp:Label>
          </li>
          <li style="width: 200px">
            <ul style="width: 200px">
              <li style="float: left; width: 200px; height: 30px">商品名称：<strong>
                <asp:Label ID="lblProName"  runat="server" Text="Label"></asp:Label>
                </strong></li>
              <li style="float: left; width: 200px; height: 30px">竞拍起始价：
                <asp:Label ID="lblProState" runat="server" Text="Label"></asp:Label>
              </li>
              <li style="float: left; width: 200px; height: 30px">距离结束时间：
                <asp:Label ID="lblTimer"  runat="server" Text="" ForeColor="Red"></asp:Label>
              </li>
              <li style="float: left; width: 200px; height: 30px" id="linum" runat="server">参与人数：
                <asp:Label ID="lblnum"  runat="server" Text="0"></asp:Label>
                &nbsp;人</li>
              <li>
                <asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>
                &nbsp; </li>
              <li style="width: 200px; height: 30px;" id="liMoney" runat="server">&nbsp;出&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价&nbsp;：
                <asp:TextBox  ID="txtMoney" Width="100px" runat="server"></asp:TextBox>
              </li>
              <li style="float: left; width: 200px; text-align: center">
                <asp:Button ID="Button1" runat="server" Text="出  价" OnClick="Button1_Click" />
              </li>
            </ul>
            <ul style="height: 60px">
              <li style="float: left; width: 200px; height: 30px">dddddd
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMoney" ErrorMessage="请输入你的竞拍价格"></asp:RequiredFieldValidator>
              </li>
              <li style="float: left; width: 200px; height: 30px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtMoney" ErrorMessage="请输入正确的价格" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
              </li>
            </ul>
          </li>
        </ul>
        <iframe src="Common/CreatzImage.aspx?ID=52"  width="260px" height="260px"></iframe>
      </div>
      <div> </div>
      <div class="cleardiv"></div>
      <ul>
        <li style="width: 250px; text-align: left;"></li>
        <li>&nbsp;</li>
        <li style="width: 250px; text-align: left;"></li>
      </ul>
    </div>
  </div>
  <!-- 右边结束 -->
  <div id="success" style="position:absolute;z-index:300;height:120px;width:284px;left:50%;top:50%;margin-left:-150px;margin-top:-80px;">
    <div id="Layer2" style="position:absolute;z-index:300;width:270px;height:90px;background-color: #FFFFFF;border:solid #000000 1px;font-size:14px;">
      <div id="Layer4" style="height:26px;background:#f1f1f1;line-height:26px;padding:0px 3px 0px 3px;font-weight:bolder;">操作提示</div>
      <div id="Layer5" style="height:64px;line-height:150%;padding:0px 3px 0px 3px;" align="center"><BR />
        <table>
          <tr>
            <td valign=top><img border="0" src="../images/ajax_loading.gif"  /></td>
            <td valign=middle style="font-size: 14px;" >正在执行当前操作, 请稍等...<BR /></td>
          </tr>
        </table>
        <BR />
      </div>
    </div>
    <script>
document.getElementById('success').style.display = "none";

var bar = 0;
function clicktxt(txt,url) {
   
    document.getElementById('success').style.display = "block";
    document.getElementById('Layer5').innerHTML = '<BR>' + txt + '<BR>';
    count(url);
}
function count(url) {
    bar = bar + 4;
    if (bar < 99)
    { setTimeout("count('" + url + "')", 100); }
    else {
        document.getElementById('success').style.display = "none";
        window.location.href =url;
    }
} 
</script> 
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
