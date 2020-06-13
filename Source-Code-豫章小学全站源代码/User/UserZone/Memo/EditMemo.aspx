<%@ page language="C#" autoeventwireup="true" inherits="EditMemo, App_Web_riis000b" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的备忘录</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../../Common/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div style="margin: auto; width: 100%">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent">会员中心</a>&gt;&gt;<a title="我的备忘录" href='<%=ResolveUrl("~/User/UserZone/Memo/MemoContext.aspx")%>'>我的备忘录</a>&gt;&gt;备忘录详细
</div>
	<div>
		<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
	</div>
	<br />
	<div class="us_topinfo" style="overflow: hidden; width: 98%">
	<table width="96%" border="0" align="center" class="border1">
		<tr>
			<td align="center">
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							标题：
						</td>
						<td align="left">
							<asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
								ErrorMessage="请输入备忘录的标题"></asp:RequiredFieldValidator><br />
						</td>
					</tr>
					<tr>
						<td>
							时间：
						</td>
						<td align="left">
							<asp:TextBox ID="txtTime" runat="server" onfocus="setday(this)"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTime"
								ErrorMessage="请输入备忘录的时间"></asp:RequiredFieldValidator><br />
						</td>
					</tr>
					<tr>
						<td valign="top">
							内容：
						</td>
						<td align="left">
							<asp:TextBox ID="txtContext" runat="server" TextMode="MultiLine" Height="120px" Width="300px"></asp:TextBox><br />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContext"
								ErrorMessage="请输入备忘录的内容"></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<asp:Button ID="Button1" runat="server" Text="提  交" OnClick="Button1_Click" />
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</div>
</form>
</body>
</html>
