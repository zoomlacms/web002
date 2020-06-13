<%@ page language="C#" autoeventwireup="true" inherits="User_UserFriend_FriendSearch_addFriend, App_Web_jebimlzp" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加好友</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div>
	<table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
		<tr align="center">
			<td colspan="2" class="spacingtitle">
				添加好友
			</td>
		</tr>
		<tr class="WebPart">
			<td height="22" class="tdbgleft" align="right" style="width: 24%">
				请选择你的好友组：
			</td>
			<td>
				&nbsp;
				<asp:DropDownList ID="DropDownList1" runat="server">
				</asp:DropDownList>
				提示:当前添加的好友为你关注的朋友，只有对方同意才能变为好友
			</td>
		</tr>
		<tr class="WebPart">
			<td height="22" class="tdbgleft" align="right" style="width: 24%">
				<strong></strong>
			</td>
			<td>
				<asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
				<asp:HiddenField ID="HiddenUserid" runat="server" />
				<asp:HiddenField ID="HiddenUsername" runat="server" />
				<asp:HiddenField ID="HiddenUid" runat="server" />
			</td>
		</tr>
	</table>
</div>
</form>
</body>
</html>
