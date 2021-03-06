﻿<%@ page language="C#" autoeventwireup="true" inherits="User_producter_CashInfo, App_Web_nqneripe" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您好<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>！您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt;<a href="UserInfo.aspx">账户管理</a>&gt;&gt;VIP信息
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfos" runat="server">
&nbsp;&nbsp;<a href="ProducterManage.aspx">产品管理</a>
   &nbsp;&nbsp;<a href="cash.aspx">申请现金</a>
   &nbsp;&nbsp;<a href="CashInfo.aspx">帐户查看</a></div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
	<h1 style="text-align: center">
	   申请信息</h1>
	<div style=" text-align:center; vertical-align:middle;">
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
  <tr align="center">
	<td width="10%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
	<td width="10%" class="title">ID</td>
	<td width="10%" class="title">银行</td>
	<td width="30%" class="title">帐号</td>
	<td width="10%" class="title">申请金额</td>      
	<td width="10%" class="title">状态</td>     
  </tr>
	<asp:Repeater ID="gvCard" runat="server">       
	<ItemTemplate>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	<td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("Y_ID")%>'/></td>
	<td height="22" align="center"><%# Eval("Y_ID")%></td>
	 <td height="22" align="center"><%# Eval("Bank")%></td>
   <td height="22" align="center"><%# Eval("Account")%></td>
	 <td height="22" align="center"><%#showMoney(Eval("money").ToString())%></td>
	<td height="22" align="center"><%#shoyState(Eval("yState").ToString())%></td>
  </tr>
	</ItemTemplate>
	</asp:Repeater>
	<tr class="tdbg">
	<td height="22" colspan="7" align="center" class="tdbgleft">
	共
	<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
		条信息
	<asp:Label ID="Toppage" runat="server" Text="" />
	<asp:Label ID="Nextpage" runat="server" Text="" />
	<asp:Label ID="Downpage" runat="server" Text="" />
	<asp:Label ID="Endpage" runat="server" Text="" />
	页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
	<asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
	</asp:DropDownList>
	页</td>
  </tr>
</table>
</div>
</div>
</form>
</body>
</html>