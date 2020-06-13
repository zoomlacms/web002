<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_SetCenter, App_Web_kwapnrhv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlSetCenterTop.ascx" TagName="WebUserControlSetCenterTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>个人信息管理</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src='<%=ResolveUrl("~/Common/RiQi.js")%>' type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_top"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent">会员中心</a>&gt;&gt;设置中心&gt;&gt;黑名单
</div>
<uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<uc1:WebUserControlSetCenterTop ID="WebUserControlSetCenterTop" runat="server" />
<br />
<div class="us_topinfo" style="margin-top: 10px; width: 98%">
<div>
	<div style="width: 50%; float: left">
		<div class="title" style="text-align: center">
			好友列表</div>
		<asp:Repeater ID="GoodFriend" runat="server" OnItemCommand="GoodFriend_ItemCommand">
			<ItemTemplate>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top: 5px;">
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td height="22" align="center" colspan="2">
							<%#Eval("groupname") %>
						</td>
					</tr>
					<tr>
						<td>
							<asp:Image ID="Image1" runat="server" Height="68px" Width="72px" ImageUrl='' />
						</td>
						<td>
							用户名：<%#Eval("friendname")%><br />
							上次登录时间：<%#Eval("lastLoginTime")%><br />
							<%--<asp:LinkButton ID="ToBlack" runat="server" BorderWidth="1" BorderColor="Green" CommandName="ToBlack" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('你确定移入黑名单吗？')">移入黑名单</asp:LinkButton>--%>
							<a href="?ToBlackID=<%# Eval("ID") %>" style="color: Green" onclick="return confirm('你确定移入黑名单吗？')">
								移入黑名单</a>
						</td>
					</tr>
				</table>
			</ItemTemplate>
		</asp:Repeater>
		<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top: 5px;">
			<tr class="tdbg">
				<td height="22" colspan="6" align="center" class="tdbgleft">
					共
					<asp:Label ID="Allnum1" runat="server" Text="">ddddd</asp:Label>
					个信息 页次：<asp:Label ID="Nowpage1" runat="server" Text="ddd" />/<asp:Label ID="PageSize1"
						runat="server" Text="dddd" />页
					<asp:Label ID="pagess1" runat="server" Text="dddd" />个信息/页
					<asp:Label ID="Toppage1" runat="server" Text="ddd" />
					<asp:Label ID="Nextpage1" runat="server" Text="ddd" />
					<asp:Label ID="Downpage1" runat="server" Text="ddd" />
					<asp:Label ID="Endpage1" runat="server" Text="ddd" />
					转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
					</asp:DropDownList>
					页
				</td>
			</tr>
		</table>
	</div>
	<div style="width: 49%; float: left;">
		<div class="title" style="text-align: center">
			黑名单列表</div>
		<asp:Repeater ID="BlackFriend" runat="server">
			<ItemTemplate>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top: 5px;">
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td height="22" align="center" colspan="2">
							<%#Eval("groupname") %>
						</td>
					</tr>
					<tr>
						<td>
							<asp:Image ID="Image1" runat="server" Height="68px" Width="72px" ImageUrl='' />
						</td>
						<td>
							用户名：<%#Eval("friendname") %><br />
							上次登录时间：<%#Eval("lastLoginTime")%><br />
							<%#GetDiv(Convert.ToInt32(Eval("userid")),Convert.ToInt32(Eval("id")))%>
							<%--<asp:Repeater ID="Group" runat="server">
					<ItemTemplate>                               
						<asp:LinkButton ID="back" runat="server" BorderWidth="1" BorderColor="Green" CommandName="Topgroup" CommandArgument="" OnClientClick="return confirm('你确定移入吗？')"><%#Eval("groupname")%></asp:LinkButton>
					</ItemTemplate>
				</asp:Repeater>  --%>
						</td>
					</tr>
				</table>
			</ItemTemplate>
		</asp:Repeater>
		<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top: 5px;">
			<tr class="tdbg">
				<td height="22" colspan="6" align="center" class="tdbgleft">
					共
					<asp:Label ID="Allnum2" runat="server" Text="">ddddd</asp:Label>
					个信息
					<asp:Label ID="Toppage2" runat="server" Text="ddd" />
					<asp:Label ID="Nextpage2" runat="server" Text="ddd" />
					<asp:Label ID="Downpage2" runat="server" Text="ddd" />
					<asp:Label ID="Endpage2" runat="server" Text="ddd" />
					页次：<asp:Label ID="Nowpage2" runat="server" Text="ddd" />/<asp:Label ID="PageSize2"
						runat="server" Text="dddd" />页
					<asp:Label ID="pagess2" runat="server" Text="dddd" />个信息/页 转到第<asp:DropDownList ID="DropDownList2"
						runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
					</asp:DropDownList>
					页
				</td>
			</tr>
		</table>
	</div>
</div>
</form>
</body>
</html>