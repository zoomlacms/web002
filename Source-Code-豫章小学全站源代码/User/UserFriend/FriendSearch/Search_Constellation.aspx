<%@ page language="C#" autoeventwireup="true" inherits="Search_Constellation, App_Web_fj0k1214" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../../UserZone/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="ControlPageLink.ascx" TagName="ControlPageLink" TagPrefix="uc3" %>
<%@ Register Src="~/User/UserFriend/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>搜索好友</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript">
function refpage(ret)
{
	if(typeof(ret)!="undefined")
	{
	window.location.href="Search_Constellation.aspx";
	}
}
</script>
<script type="text/javascript" language="javascript" src="../../Command/common.js"></script>
<script type="text/javascript" language="javascript" src="../../Command/subModal.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的好友" href="/User/UserFriend/Index.aspx">我的好友</a>&gt;&gt;搜索好友
</div>
	<uc2:WebUserControlTop ID="WebUserControlTop2" runat="server" />
	<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
	<br />
	<table border="0" align="center" cellpadding="0" cellspacing="0" style="width:100%;">
		<tr>
			<td valign="top" width="150px">
				<uc3:ControlPageLink ID="ControlPageLink1" runat="server"></uc3:ControlPageLink>
			</td>
			<td valign="top">
				<div class="us_topinfo" style="padding:10px;width:600px !important;">
					<table border="0" class="us_showinfo" cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td>
								<asp:Panel ID="quickPanel" runat="server" Width="100%">
									<table border="0" cellspacing="0" cellpadding="0" width="100%">
										<tr>
											<td width="12%" align="right">
												对方性别：</td>
											<td>
												&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
													<asp:ListItem Value="男生">男生</asp:ListItem>
													<asp:ListItem Value="女生" Selected="true">女生</asp:ListItem>
												</asp:RadioButtonList></td>
										</tr>
										<tr>
											<td align="right">
												年龄范围：</td>
											<td>
												&nbsp;<asp:TextBox ID="txtAge1" runat="server" Width="40px"></asp:TextBox>
												~
												<asp:TextBox ID="txtAge2" runat="server" Width="40px"></asp:TextBox>岁</td>
										</tr>
										<tr>
											<td align="right" valign="top">
												星 &nbsp; &nbsp; 座：</td>
											<td>
												<asp:CheckBoxList Width="100%" ID="cblConstellation" runat="server" RepeatColumns="3"
													RepeatDirection="Horizontal">
												</asp:CheckBoxList></td>
										</tr>
										<tr>
											<td align="right" valign="top">
												血 &nbsp;  &nbsp;型：</td>
											<td>
												<asp:CheckBoxList ID="cblBlood" Width="100%" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
												</asp:CheckBoxList>
											</td>
										</tr>
										<tr>
											<td align="right">
												居住地区：</td>
											<td>
												&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
												</asp:DropDownList><asp:DropDownList ID="DropDownList4" runat="server" Visible="false">
												</asp:DropDownList></td>
										</tr>
										<tr>
											<td colspan="2" align="center">
												<asp:Button ID="Button1" runat="server" Text="搜  索" OnClick="Button1_Click" /></td>
										</tr>
									</table>
								</asp:Panel>
								<asp:Label ID="Label1" runat="server" ForeColor="#ff0000" Font-Size="13" Text=""></asp:Label>
							</td>
						</tr>
					</table>
					<asp:Panel ID="quickresultPanel" runat="server" Width="100%">
						<asp:DataList ID="DataList1" runat="server" Width="100%">
							<ItemTemplate>
								<table border="0" cellpadding="0" cellspacing="0" height="191" width="100%">
									<tr>
										<td width="18%">
											&nbsp;</td>
										<td width="82%">
											<a href="#">
												<%#DataBinder.Eval(Container.DataItem,"UserName") %>
											</a>
										</td>
									</tr>
									<tr>
										<td align="center" height="163">
											<a href="../User/Usershow.aspx?userid=<%#DataBinder.Eval(Container.DataItem,"UserID") %>">
												<asp:Image ID="Image1" runat="server" Height="120px" Width="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"UserPic") %>' /></a></td>
										<td valign="top">
											&nbsp;<%#DataBinder.Eval(Container.DataItem, "UserLove")%></td>
									</tr>
									<tr>
										<td height="32" align="center">
											&nbsp;</td>
										<td align="right">
											<a href="#">给他留言</a>&nbsp;<a href="javascript:showPopWin('添加好友','showfriendsearch.aspx?sID=<%#DataBinder.Eval(Container.DataItem,"UserID") %>&Math.random()',400,200, refpage,true)">加为好友</a>&nbsp;<a href="#">同居邀请</a></td>
										&nbsp;&nbsp;&nbsp;&nbsp;
									</tr>
									<tr>
										<td height="1" colspan="2" align="center" bgcolor="#CC6600">
										</td>
									</tr>
								</table>
							</ItemTemplate>
						</asp:DataList></asp:Panel>
				</div>
			</td>
		</tr>
	</table>
</form>
</body>
</html>