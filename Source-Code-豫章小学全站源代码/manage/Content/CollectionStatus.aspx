<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Content.CollectionStatus, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>采集状态</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 系统设置&gt;&gt;<a href="ContentManage.aspx">内容管理 </a>&gt;&gt; 采集项目管理</div>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
	<ContentTemplate>
		<asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
		</asp:Timer>
		<div class="clearbox">
		</div>
		<table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
			<tr class="tdbg">
				<td align="center" class="title" colspan="2" height="24" width="100%">
					<asp:Label ID="Label1" runat="server" Text="采集详细状态"></asp:Label>
				</td>
			</tr>
			<tr class="tdbg" runat="server" id="Tr2" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
				<td align="left" height="24">
					<asp:TextBox ID="TextBox1" runat="server" class="l_input" Height="300px" TextMode="MultiLine" Width="100%"></asp:TextBox>
					[提示] 系统已启动多线程模式，您可以离开本页面继续其他操作，采集任务将自动完成...<br />
					<center>
					 <asp:Button ID="Button1" runat="server" Text="停止采集" OnClick="Button1_Click" class="C_input"  style="width:110px;" /></center>
				</td>
			</tr>
		</table>
	</ContentTemplate>
</asp:UpdatePanel>
</form>
</body>
</html>