<%@ page language="C#" autoeventwireup="true" inherits="User_UserFriend_FriendAttendMy, App_Web_p5eazu2w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../UserZone/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlMessage.ascx" TagName="WebUserControlMessage" TagPrefix="uc1" %>
<%@ Register Src="../UserFriend/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的好友</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
<div class="us_pynews">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的好友" href="/User/UserFriend/Default.aspx">我的好友</a>&gt;&gt;我关注的人
</div>
	<uc2:WebUserControlTop ID="WebUserControlTop2" runat="server" />
	<uc3:WebUserControlTop ID="WebUserControlTop1" runat="server" />
	<uc1:WebUserControlMessage ID="WebUserControlMessage1" runat="server" />
	<div class="us_topinfo" style="margin-top: 10px;">
    <ul>
		<li style="width: 100%; float: left; text-align: center;">
			<asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"
				Width="100%" DataKeyField="UserID">
				<ItemTemplate>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="center">
								<font color="#000066"><strong>
									<%#GetName(Eval("UserID").ToString()) %>
								</strong></font>
							</td>
						</tr>
						<tr>
							<td align="center">
								<asp:Image ID="Image1" runat="server" Height="68px" Width="72px" ImageUrl='<%#GetPic(Eval("UserID").ToString()) %>' />
							</td>
						</tr>
						<tr>
							<td align="center">
								[<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">加为好友</asp:LinkButton>]
							</td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:DataList>
		</li>
		<li style="height: 30px; text-align: center;">共<asp:Label ID="Allnum" runat="server"
			Text=""></asp:Label>&nbsp;
			<asp:Label ID="Toppage" runat="server" Text="" />
			<asp:Label ID="Nextpage" runat="server" Text="" />
			<asp:Label ID="Downpage" runat="server" Text="" />
			<asp:Label ID="Endpage" runat="server" Text="" />
			页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
				Text="" />页
			<asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1"
				runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
			</asp:DropDownList>
			页</li>
    </ul>
</div>
</form>
</body>
</html>