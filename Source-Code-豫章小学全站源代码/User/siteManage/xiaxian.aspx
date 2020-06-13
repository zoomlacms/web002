<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_xiaxian, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的下线会员</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main_user_bg"></div>
  <div class="user_con">
 <h2>我的分站结构</h2>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table user_table2">
  <tr>
    <th style="text-align:center">查看</th>
    <th>下级分站</th>
    <th>下下级分站</th>
    <th>全部分站</th>
  </tr>
  <tr>
    <td>今日</td>
    <td><asp:HyperLink ID="tapasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="tappasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="taallsite" runat="server" title="点击查看详情">0</asp:HyperLink></td>
  </tr>
  <tr>
    <td>昨日</td>
    <td><asp:HyperLink ID="zupasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="zuppasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="zuallsite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
  </tr>
  <tr>
    <td>七天</td>
    <td><asp:HyperLink ID="sepasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="seppasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="seallsite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
  </tr>
  <tr>
    <td>本月</td>
    <td><asp:HyperLink ID="mopasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="moppasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="moallsite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
  </tr>
  <tr>
  	
    <td>上月</td>
    <td><asp:HyperLink ID="pmpasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="pmppasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="pmallsite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
  </tr>
  <tr>
    <td>全年</td>
    <td><asp:HyperLink ID="yepasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="yeppasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="yeallsite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
  </tr>
   <tr>
    <td>全部</td>
    <td><asp:HyperLink ID="alpasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="alppasite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
    <td><asp:HyperLink ID="alallsite" runat="server"  title="点击查看详情">0</asp:HyperLink></td>
  </tr>
</table>
</div>
</body>
</html>
