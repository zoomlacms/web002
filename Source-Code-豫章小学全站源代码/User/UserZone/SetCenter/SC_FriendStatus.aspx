<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_SetCenter_SC_FriendStatus, App_Web_kwapnrhv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlSetCenterTop.ascx" TagName="WebUserControlSetCenterTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>设置中心</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src='<%=ResolveUrl("~/Common/RiQi.js")%>' type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_top"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent">会员中心</a>&gt;&gt;设置中心&gt;&gt;征友状态
</div>
<uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<uc1:WebUserControlSetCenterTop ID="WebUserControlSetCenterTop" runat="server" />
<br />
<div class="us_topinfo" style="margin-top: 10px; width: 98%">
	<table border="0" class="us_showinfo" width="100%" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td>
				设置征友状态
			</td>
			<td>
				<asp:RadioButtonList ID="radioFStatus" runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Value="0" Text="征友中" Selected="True" />
					<asp:ListItem Value="1" Text="已经找到了" />
					<asp:ListItem Value="-1" Text="暂停交友" />
				</asp:RadioButtonList>
			</td>
		</tr>
		<tr align="center">
			<td colspan="2">
				<asp:Button ID="btnSave" runat="server" Text="保存设置" OnClick="btnSave_Click" />
			</td>
		</tr>
	</table>
</div>
</form>
</body>
</html>