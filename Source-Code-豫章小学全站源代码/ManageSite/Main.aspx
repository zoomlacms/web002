<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Main, App_Web_irw3wdiw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>站群后台初始页</title>
<link rel="stylesheet" href="Style/style.css" type="text/css" />
<link rel="stylesheet" href="Style/Blue_style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style type="text/css">
.welcomeinfo { font: bold 16px "lucida Grande", Verdana; height: 39px; margin: 0 0 0 118px; }
.t_left1 { margin-left: 17px; }
.nowrap { white-space: nowrap; }
.f_size, .f_sizetd { font-size: 12px; }
.normal { font-weight: normal; }
img { border: none; }
a { text-decoration: underline; cursor: pointer; }
.level { margin-bottom: 6px; margin-left: 1px; font: normal 12px "lucida Grande", Verdana; clear: both; }
.level_no { margin-top: 8px; margin-bottom: 17px; }
.leftpanel { margin: 0 0 14px 0; padding: 0; list-style: none; }
.left { float: left; }
.right { float: right; }
.todaybody { overflow: auto; overflow-x: hidden; }
ul.tipbook { border-top: 1px solid #d8dee5; margin: 0 13px; padding: 18px 0 0 2px; list-style: none; }
ul.tipbook li { height: 28px; }
.tipstitle_title { font: normal 14px Verdana; margin-bottom: 5px; padding-left: 13px; padding-top: 8px; }
.ico_input { border: none; padding: 0; margin: 0; width: 16px; height: 16px; }
.ico_helpmin { background: url(../pic/icon/help.gif) no-repeat; margin: 0 6px 1px 0; }
</style>
</head>
<body class="todaybody">
<ul class="leftpanel" style="margin-bottom: 0; border: none; text-align: left">
  <li style="padding-right: 200px; height: auto" id="TodayWelcome" class="welcomeinfo t_left1"> 
    <script>
    var hour = (new Date()).getHours();
    if (hour < 4) {
        hello = "夜深了，";
    }
    else if (hour < 7) {
        hello = "早安，";
    }
    else if (hour < 9) {
        hello = "早上好，";
    }
    else if (hour < 12) {
        hello = "上午好，";
    }
    else if (hour < 14) {
        hello = "中午好，";
    }
    else if (hour < 17) {
        hello = "下午好，";
    }
    else if (hour < 19) {
        hello = "您好，";
    }
    else if (hour < 22) {
        hello = "晚上好，";
    }
    else {
        hello = "夜深了，";
    }
    document.write(hello);
</script>
    <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
    <span class="f_size normal addrtitle"
    id="spanGreeting"></span><span id="accountType"></span>
    <div class="level level_no"> 欢迎进入[<%=SiteName() %>]网站后台管理系统，
      <asp:Label ID="Version" runat="server" Text=""></asp:Label>。 </div>
  </li>
</ul>
<div style="width: 99%; margin: 5px;" id="Div1" class="bd column">
  <div class="tipstitle_title bd settingtable bold columntitle" style="border-width: 0 0 1px 0; padding-top: 4px; *padding-top: 4px; height: 20px; *height: 25px"> <span class="nounderline cur_default">系统帮助信息</span> </div>
  <div id="Div2">
    <table id="ShortCutTable" cellspacing="1" width="90%" cellpadding="2" align="center" border="0">
      <tbody>
        <tr>
          <td style="height: 22px" align="left">如果您是第一次使用本系统，请按以下步骤配置：</td>
        </tr>
        <tr>
          <td style="height: 22px"><table width="450" border="0" cellpadding="0" cellspacing="0" style="float:left">
              <tr>
                <td align="center"><a href="/ManageSite/Config/SiteInfo.aspx"><img src="../App_Themes/AdminDefaultTheme/Images/System1.png" border="0" alt="网站配置" /></a></td>
                <td align="center"><a href="Content/ModelManage.aspx"><img src="../App_Themes/AdminDefaultTheme/Images/System2.png" border="0" alt="内容模型管理" /></a></td>
                <td align="center"><a href="Content/NodeManage.aspx"><img src="../App_Themes/AdminDefaultTheme/Images/System3.png" border="0" alt="节点设置" /></a></td>
                <td align="center"><a href="Template/LabelManage.aspx"><img src="../App_Themes/AdminDefaultTheme/Images/System4.png" border="0" alt="标签设置" /></a></td>
                <td align="center"><a href="Template/TemplateManage.aspx"><img src="../App_Themes/AdminDefaultTheme/Images/System5.png" border="0" alt="模板设置" /></a></td>
                <td align="center"><a href="User/AdminManage.aspx"><img src="../App_Themes/AdminDefaultTheme/Images/System8.png" border="0" alt="管理员管理" /></a></td>
              </tr>
              <tr>
                <td height="24" align="center"><a href="/ManageSite/Config/SiteInfo.aspx">网站配置</a></td>
                <td align="center"><a href="Content/ModelManage.aspx">内容模型管理</a></td>
                <td align="center"><a href="Content/NodeManage.aspx">节点设置</a></td>
                <td align="center"><a href="Template/LabelManage.aspx">标签设置</a></td>
                <td align="center"><a href="Template/TemplateManage.aspx">模板设置</a></td>
                <td align="center"><a href="User/AdminManage.aspx">管理员管理</a></td>
              </tr>
            </table></td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
<div style="width: 99%; margin: 5px;" id="TodayPartNotice" class="bd column">
  <div class="tipstitle_title bd settingtable bold columntitle" style="border-width: 0 0 1px 0;
    padding-top: 4px; *padding-top: 4px; height: 20px; *height: 25px"> <span class="nounderline cur_default">联系我们</span></div>
  <div id="contentBulletin_">
    <table cellspacing="1" cellpadding="2" width="90%" align="center" border="0" id="TABLE1">
      <tbody>
        <tr class="sysinfo">
          <td align="left">版权所有:上海逐一软件科技有限公司</td>
          <td align="left">服务热线:&nbsp;021-50391046&nbsp; 50391047&nbsp; 13918895839</td>
        </tr>
        <tr class="sysinfo">
          <td align="left">产品开发:华夏互联(<a href="http://www.hx008.cn/corp/" target="_blank">江西逐浪软件科技有限公司</a>)</td>
          <td align="left">定制开发:QQ:184886758&nbsp; &nbsp;69250566&nbsp; &nbsp;779630567</td>
        </tr>
        <tr class="sysinfo">
          <td align="left">总机电话:021-50391046&nbsp;(24小时不间断服务热线)</td>
          <td align="left">产品咨询:TEL：(0)13177777714</td>
        </tr>
        <tr class="sysinfo">
          <td align="left">传 真:0791-86161900-8009</td>
          <td align="left">客服电话:0791-86161900</td>
        </tr>
        <tr class="sysinfo">
          <td align="left">官方网站:<a href="http://www.zoomla.cn/" target="_blank">www.zoomla.cn</a></td>
          <td align="left">帮助中心:<a href="http://help.zoomla.cn/" target="_blank">help.zoomla.cn</a></td>
        </tr>
        <tr class="sysinfo">
          <td colspan="4" height="20"><div align="center">&copy; 2008-2012 <a href="http://www.zoomla.cn" target="_blank">逐浪软件</a> Inc. All Rights Reserved</div></td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
<div class="clr" style="height: 23px; margin: 15px 0 0 10px">
  <div class="left" style="margin: 2px 0 0 0">
    <asp:Literal ID="ltlLastLoginDate" runat="server"></asp:Literal>
  </div>
</div>
</body>
</html>