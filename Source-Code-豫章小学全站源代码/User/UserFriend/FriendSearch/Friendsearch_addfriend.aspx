<%@ page language="C#" autoeventwireup="true" inherits="Friendsearch_quick, App_Web_ne1eagrx" enableeventvalidation="true" viewStateEncryptionMode="Never" %>
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
	window.location.href="Friendsearch_quick.aspx";
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
			<div style="padding: 10px; width: 600px !important; border:0px;">
				<asp:Panel ID="quickPanel" runat="server" Width="60%">
					<table class="us_showinfo" cellspacing="0" cellpadding="0" width="100%"  style="width:100%; border:1px #C6E3F7 solid;">
						<tr style="height:30px;line-height:30px;">
							<td align="center" colspan="3">
							   <b>查询添加好友</b></td>
						</tr>
						<tr>
							<td align="right" >
								会员名： </td>
							<td align="left">
								&nbsp;
								<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>                                            
							</td>
							<td align="center" height="50px">
								<asp:Button ID="quick2btn" runat="server" Text="快速搜索" OnClick="quick2btn_Click" />
							</td>
						</tr>
					</table>
				</asp:Panel>
				<asp:Label ID="Label1" runat="server" ForeColor="#ff0000" Font-Size="13" Text=""></asp:Label>
				<asp:Panel ID="quickresultPanel" runat="server" Width="100%" Visible="false">
				<table border="0" class="us_showinfo" cellspacing="0" cellpadding="0" width="100%" runat="server" id="thisViewTable">
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
											<asp:Image ID="Image1" runat="server" Height="120px" Width="120px" ImageUrl='<%#Eval("UserPic") %>' /></a></td>
									<td valign="top">
								</tr>
								<tr>
									<td height="10" align="center">
										&nbsp;</td>
									<td align="right">
										<a href="javascript:void();" onclick="javascript: window.open('addFriend.aspx?sID=<%#DataBinder.Eval(Container.DataItem,"UserID") %>', 'newwindow', 'height=500, width=800, top=200, left=150, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');">加为好友</a>&nbsp;</td>
									&nbsp;&nbsp;&nbsp;&nbsp;
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
					<td align="center">
						<asp:Label ID="pageMessageLB" runat="server" Text=""></asp:Label>
						<asp:LinkButton ID="FristPage" runat="server" Text="首页" onclick="FristPage_Click"></asp:LinkButton>
						&nbsp;<asp:LinkButton ID="TopPage" runat="server" onclick="TopPage_Click" Text=" 上一页"></asp:LinkButton>
						&nbsp;<asp:LinkButton ID="NextPage" runat="server" onclick="NextPage_Click" Text=" 下一页"></asp:LinkButton>
						&nbsp;<asp:LinkButton ID="LastPage" runat="server" onclick="LastPage_Click" Text="尾页"></asp:LinkButton>
						<asp:Label ID="pageMessageLB1" runat="server" Text=""></asp:Label>
						<asp:DropDownList ID="DropPage"  runat="server"  AutoPostBack="true" ontextchanged="DropPage_TextChanged">
						</asp:DropDownList>
						页
					</td>
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