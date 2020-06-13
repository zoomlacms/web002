<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_forms, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>业绩概况</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main_user_bg"></div>
  <div class="user_con">
<h2>业绩概况</h2>
<div class="todayinfo">
  <div class="todayinfo1">今日已提交：<span id="ordernum" class="f_14b_f00" runat="server"></span>&nbsp;个订单&nbsp;&nbsp;&nbsp;今日预订分成：
  <span id="pre_money" runat="server" class="f_14b_f00">0.00</span> 元|总收入：<span id="money" runat="server" class="f_14b_f00">0.00</span> 元|已结算：<span id="Cleared" runat="server" class="f_14b_f00"></span>元|账户余额：
  <span class="f_14b_f00" id="reate" runat="server">10.00</span> 元</div>
  <div id="todaytips">今日提交<strong> <asp:Label ID="lblfOrdernum" runat="server"></asp:Label></strong>个订单&nbsp;，<asp:HyperLink ID="hlDetail" runat="server">查看详情</asp:HyperLink></div>
  </div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table user_table2">
 <tr>
    <td colspan="6" style="text-align:right"><input type="button" name="submit" value="更新业绩" class="newbutton02" onclick="javascript:window.location.reload()" title="您需要通过更新数据获得最新的报表" /></td>
  </tr>
  <tr>
    <th width="16%">查看</th>
    <th width="16%">订单数(下级)</th>
    <th width="16%">预计收入</th>
    <th width="16%">订单数(下下级)</th>
    <th width="16%">预计收入</th>
    <th width="16%">预计总收入</th>
  </tr>
  <tr>
    <td>今日</td>
    <td><asp:HyperLink ID="torder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="tlblpreorder" runat="server">0</asp:Label>&nbsp;元</td>
    <td><asp:HyperLink ID="thrprorder" runat="server" title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="thrprmoney" runat="server">0</asp:Label>&nbsp;元</td>
    <td style="color:#f00;"><asp:Label ID="allmoney" runat="server">0</asp:Label>&nbsp;元</td>
  </tr>
  <tr>
    <td>昨日</td>
    <td><asp:HyperLink ID="zorder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="zlblpreorder" runat="server">0</asp:Label>&nbsp;元</td>
    <td><asp:HyperLink ID="zhrprorder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="zhrprmoney" runat="server">0</asp:Label>&nbsp;元</td>
    <td style="color:#f00;"><asp:Label ID="zallmoney" runat="server">0</asp:Label>&nbsp;元</td>
  </tr>
  <tr>
    <td>七天</td>
    <td><asp:HyperLink ID="sorder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="slblpreorder" runat="server">0</asp:Label>&nbsp;元</td>
    <td><asp:HyperLink ID="shrprorder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="shrprmoney" runat="server">0</asp:Label>&nbsp;元</td>
    <td style="color:#f00;"><asp:Label ID="sallmoney" runat="server">0</asp:Label>&nbsp;元</td>
  </tr>
  <tr>
    <td>本月</td>
    <td><asp:HyperLink ID="morder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="mlblpreorder" runat="server">0</asp:Label>&nbsp;元</td>
    <td><asp:HyperLink ID="mhrprorder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="mhrprmoney" runat="server">0</asp:Label>&nbsp;元</td>
    <td style="color:#f00;"><asp:Label ID="mallmoney" runat="server">0</asp:Label>&nbsp;元</td>
  </tr>
  <tr>
    <td>上月</td>
    <td><asp:HyperLink ID="porder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="plblpreorder" runat="server">0</asp:Label>&nbsp;元</td>
    <td><asp:HyperLink ID="phrprorder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="phrprmoney" runat="server">0</asp:Label>&nbsp;元</td>
    <td style="color:#f00;"><asp:Label ID="pallmoney" runat="server">0</asp:Label>&nbsp;元</td>
  </tr>
  <tr>
    <td>全年</td>
    <td><asp:HyperLink ID="yorder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="ylblpreorder" runat="server">0</asp:Label>&nbsp;元</td>
    <td><asp:HyperLink ID="yhrprorder" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:Label ID="yhrprmoney" runat="server">0</asp:Label>&nbsp;元</td>
    <td style="color:#f00;"><asp:Label ID="yallmoney" runat="server">0</asp:Label>&nbsp;元</td>
  </tr>
</table>
</div>
</body>
</html>
