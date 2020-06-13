<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ContentShow, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>显示内容</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span> &gt;&gt; <span><a href="ContentManage.aspx">内容管理</a></span>&gt;&gt;
<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></div>
<div class="clearbox">
</div>
<div>
	<table width="100%" cellpadding="2" cellspacing="1" border="0" class="border"
		align="center">
		<tr align="center" class="tdbgleft">
			<td colspan="2">
				<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
			</td>
		</tr>
		<tr class="tdbg">
			<td height="22" class="tdbgleft" align="right" style="width: 24%">所属栏目：</td>
			<td class="tdbg">
				<asp:Label ID="NodeName" runat="server" Text=""></asp:Label>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td height="22" class="tdbgleft" align="right" style="width: 24%">标题：</td>
			<td class="tdbg">
				<asp:Label ID="title" runat="server" Text=""></asp:Label>
			</td>
		</tr>
		<tr>
			<td height="22" class="tdbgleft" align="right" style="width: 24%">
				状态：
			</td>
			<td class="tdbg">
				<asp:Label ID="statess" runat="server" Text=""></asp:Label>
			</td>
		</tr>
		<tr>
			<td height="22" align="center" colspan="2" style="line-height: 25px;">
				<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
				<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
				<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
				<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
				<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
				<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
			</td>
		</tr>
	</table>
	<br />
	 <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
</div>
</form>
</body>
</html>