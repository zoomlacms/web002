<%@ page language="C#" autoeventwireup="true" inherits="Friendsearch_quick, App_Web_fj0k1214" enableeventvalidation="true" viewStateEncryptionMode="Never" %>
<%@ Register Src="../../UserZone/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="ControlPageLink.ascx" TagName="ControlPageLink" TagPrefix="uc3" %>
<%@ Register Src="~/User/UserFriend/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>搜索好友</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
function refpage(ret) {
	if (typeof (ret) != "undefined") {
		window.location.href = "Friendsearch_quick.aspx";
	}
}
</script>
<script type="text/javascript" language="javascript" src="../../Command/common.js"></script>
<script type="text/javascript" language="javascript" src="../../Command/subModal.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的好友" href="/User/UserFriend/Default.aspx">我的好友</a>&gt;&gt;搜索好友
</div>
	<uc2:WebUserControlTop ID="WebUserControlTop2" runat="server" />
	<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
	<br />
	<table border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td valign="top" width="150px">
				<uc3:ControlPageLink ID="ControlPageLink1" runat="server"></uc3:ControlPageLink>
			</td>
			<td valign="top">
				<div class="us_topinfo" style="padding: 10px; width: 600px !important;">
					<asp:Panel ID="quickPanel" runat="server" Width="60%">
						<table border="0" class="us_showinfo" cellspacing="0" cellpadding="0" width="100%">
							<tr>
								<td align="right" >
									性别：</td>
								<td width="69%" align="left">
									<asp:RadioButtonList ID="RadioButtonList1" name="RadioButtonList1" runat="server"
										RepeatDirection="Horizontal">
										<asp:ListItem>男生</asp:ListItem>
										<asp:ListItem Selected="True">女生</asp:ListItem>
									</asp:RadioButtonList></td>
							</tr>
							<tr>
								<td align="right" >
									年龄：</td>
								<td align="left">
									&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="48px"></asp:TextBox>~
									<asp:TextBox ID="TextBox2" runat="server" Width="48px"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td align="right" >
									地区：</td>
								<td align="left">
									&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
									</asp:DropDownList><asp:DropDownList ID="DropDownList4" runat="server" Visible="false">
									</asp:DropDownList></td>
							</tr>
							<tr id="trSearchFriendMarry" runat ="server">
								<td align="right" >
									婚姻状况：</td>
								<td align="left">
									&nbsp;<asp:DropDownList ID="marryDropDownList" runat="server">
									</asp:DropDownList></td>
								<td>
									&nbsp;</td>
							</tr>
							<tr>
								<td align="center" colspan="2" height="50px">
									<asp:Button ID="quick2btn" runat="server" Text="快速搜索" OnClick="quick2btn_Click" /></td>
							</tr>
						</table>
					</asp:Panel>
					<asp:Label ID="Label1" runat="server" ForeColor="#ff0000" Font-Size="13" Text=""></asp:Label>
					<asp:Panel ID="quickresultPanel" runat="server" Width="100%" Visible="false">
					<table border="0" class="us_showinfo" cellspacing="0" cellpadding="0" width="100%">
					<tr>
					<td>
						<asp:DataList ID="DataList1" runat="server" Width="100%">
							<ItemTemplate>
								<table border="0" cellpadding="0" cellspacing="0"  width="100%">
									<tr>
										<td width="18%">
											&nbsp;</td>
										<td width="82%">
											<a href="#">
												<%#Eval("UserName") %>
											</a>
										</td>
									</tr>
									<tr>
										<td align="center" height="143">
											<a href="../User/Usershow.aspx?userid=<%#DataBinder.Eval(Container.DataItem,"UserID") %>">
											<asp:Image ID="Image1" runat="server" Height="120px" Width="120px" ImageUrl='<%#GetPic(Eval("UserID","{0}").ToString()) %>' /></a></td>
										<td valign="top">
											&nbsp;<%#DataBinder.Eval(Container.DataItem, "UserLove")%></td>
									</tr>
									<tr>
										<td height="10" align="center">
											&nbsp;</td>
										<td align="right">
										<script type="text/javascript">
										function sss() {
										   var ajax = new AJAXRequest;
										   ajax.get("/user/UserZone/AddFave.aspx?Sid=1",function(obj) {
												alert("收藏成功！");
												});
														 }
										</script>
										<a href="../../Message/MessageSend.aspx?ToID=<%#Eval("UserID")%>">给他留言</a>&nbsp;<a href="javascript:showPopWin('添加好友','showfriendsearch.aspx?sID=<%#DataBinder.Eval(Container.DataItem,"UserID") %>&Math.random()',400,200, refpage,true)">加为好友</a>&nbsp;<a onclick="javascript:sss()">加为收藏</a>&nbsp;</td>
										<caption>
											&nbsp;&nbsp;&nbsp;&nbsp;
										</caption>
									</tr>
									<tr>
										<td height="1" colspan="2" align="center" bgcolor="#CC6600">
										</td>
									</tr>
								</table>
							</ItemTemplate>
						</asp:DataList>
						</td>
					</tr>
					<tr>
					<td align="center"></td>
					</tr>
					</table>
					</asp:Panel>
				</div>
			</td>
		</tr>
	</table>
</form>
</body>
</html>