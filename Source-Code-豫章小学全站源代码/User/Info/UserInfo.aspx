<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.UserInfo, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register src="WebUserControlTop.ascx" tagname="WebUserControlTop" tagprefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>注册信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
</head>
<body>
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a> &gt;&gt; <a href="UserInfo.aspx">账户管理</a>&gt;&gt;注册信息
</div>
<%--class="us_seta"--%>
<div class="us_seta" id="manageinfos" runat ="server" style="height:25px;">
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
</div>
<div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
<h1 style="text-align:center">注册信息</h1>
<table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
<tr class="tdbg" style="width:100%">
    <td style="width:200px; float:left;line-height:30px; text-align:right">用户名：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblUser" runat="server" Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right">Email：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblEmail" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr class="tdbg"  style="width:100%">
    <td style="width:200px; float:left;line-height:30px; text-align:right">所属用户组：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblGroup" runat="server" Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right">加入用户组时间：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblJoinTime" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr class="tdbg"  style="width:100%">
    <td style="width:200px; float:left;line-height:30px; text-align:right">注册时间：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblRegTime" runat="server" Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right">登录次数：</td>
    <td style="width:250px;line-height:30px"> <asp:Label ID="LblLoginTimes" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr class="tdbg"  style="width:100%">
    <td style="width:200px; float:left;line-height:30px; text-align:right">最近登录时间：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblLastLogin" runat="server" Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right">最近登录IP：</td>
    <td style="width:250px;line-height:30px"> <asp:Label ID="LblLastIP" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr class="tdbg"  style="width:100%">
    <td style="width:200px; float:left;line-height:30px; text-align:right">最近修改密码时间：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblLastModify" runat="server" Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right">最近被锁定时间：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblLastLock" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr class="tdbg" style="width:100%">
    <td style="width:200px; float:left;line-height:30px; text-align:right">金额：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblBalance" runat="server" Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right">积分：</td>
    <td style="width:250px;line-height:30px">
    <asp:Label ID="LblUserExp" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr class="tdbg" style="width:100%">
    <td style="width:200px; float:left;line-height:30px; text-align:right">点数：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblUserPoint" runat="server" Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right"> 有效期：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblDeadLine" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr class="tdbg" style="width:100%">
    <td style="width:200px; float:left;line-height:30px; text-align:right">卖家积分：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblboffExp" runat="server" Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right">买家积分：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="LblConsumeExp" runat="server" Text="Label"></asp:Label></td>
</tr>
<td style="width:200px; float:left;line-height:30px; text-align:right">等级：</td>
    <td style="width:250px;line-height:30px"><asp:Label ID="gradeTxt" runat="server" 
            Text="Label"></asp:Label></td>
    <td style="width:200px; float:left;line-height:30px; text-align:right"></td>
    <td style="width:250px;line-height:30px"></td>
<tr class="tdbg"  style="width:100%">
<td style="width:100%; margin-top:5px; text-align:center" colspan="4">
    <input id="Button2" type="button"  value="基本信息"  class="i_bottom" onclick="javascript:location.href='UserBase.aspx'" />&nbsp;
    <input id="Button9" type="button" value="兑换金额"  class="i_bottom" onclick="javascript:location.href='ExchangeDP.aspx'" />&nbsp;
    <input id="Button12" type="button"value="拍宝套餐"  class="i_bottom" onclick="javascript:location.href='MyPaibao.aspx'" />&nbsp;
    <input id="Button7" type="button" value="兑换点券"  class="i_bottom"  onclick="javascript:location.href='ExchangePoint.aspx'" />&nbsp;
    <input id="Button6" type="button" value="兑换有效期"  class="i_bottom"  onclick="javascript:location.href='ExchangePeriod.aspx'" />&nbsp;
    <input id="Button1" type="button" value="兑换积分"  class="i_bottom"  onclick="javascript:location.href='ExchangeIntegral.aspx'" />&nbsp;
    <br />
    <input id="Button3" type="button"  value="充值金额"   class="i_bottom" onclick="javascript:window.open('/PayOnline/SelectPayPlat.aspx')" />&nbsp;
    <input id="Button10" type="button" value="金额明细"  class="i_bottom"  onclick="javascript:location.href='MoneyInfo.aspx'" />&nbsp;
    <input id="Button5" type="button" value="点券明细"   class="i_bottom" onclick="javascript:location.href='PointHis.aspx'" />&nbsp;
    <input id="Button4" type="button" value="有效期明细"  class="i_bottom"  onclick="javascript:location.href='PeriodHis.aspx'" />&nbsp;
    <input id="Button8" type="button" value="积分明细"  class="i_bottom"  onclick="javascript:location.href='ExpHis.aspx'" />&nbsp; 
    <input id="Button11" type="button"  value="会员升级"  class="i_bottom"  onclick="javascript:location.href='MemberUp.aspx'" />&nbsp;               
</td>                   
</tr>
</table>
</div>
</body>
</html>