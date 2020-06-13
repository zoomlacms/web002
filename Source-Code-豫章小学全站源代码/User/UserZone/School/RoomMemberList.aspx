<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_RoomMemberList, App_Web_2npzixkb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>班级列表</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">会员中心</a> &gt;&gt; <a href="mySchoolList.aspx">我的班级 </a>&gt;&gt;班级信息
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
<br />
<div class="us_showinfo">
<div>
<span><a href="showRoom.aspx?Roomid=<%=RoomID %>"><%=RoomName %>班级</a></span> &gt;&gt; <span>成员列表</span>
<hr />
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td>
			<asp:GridView ID="GridView1"  width="100%" runat="server" AutoGenerateColumns="False">
				<Columns>
					<asp:BoundField DataField="UserName" HeaderText="用户名" >
						<HeaderStyle Width="20%" />
					</asp:BoundField>
					<asp:TemplateField HeaderText="真实姓名" >
						<ItemTemplate>
							<asp:Label ID="Label1" runat="server" Text='<%#GetUserName(DataBinder.Eval(Container.DataItem, "UserID").ToString()) %>'></asp:Label>
						</ItemTemplate>
						<HeaderStyle Width="20%" />
					</asp:TemplateField>
					<asp:TemplateField HeaderText="身份" >
						<ItemTemplate>
							<asp:Label ID="Label2" runat="server" Text='<%#GetUserType(DataBinder.Eval(Container.DataItem, "StatusType").ToString()) %>'></asp:Label>
						</ItemTemplate>
						<HeaderStyle Width="20%" />
					</asp:TemplateField>
					<asp:BoundField DataField="AddTime" HeaderText="加入时间" />
					<asp:BoundField DataField="AuditingUserName" HeaderText="审核用户"  HeaderStyle-Width="20%" />
				</Columns>
			</asp:GridView>
		</td>
	</tr>
	<tr>
		<td align="center">
			共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
			<asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
			<asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
			<asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
			<asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
			页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
				runat="server" Text=""></asp:Label>页
			<asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
				ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
			</asp:DropDownList>页
		</td>
	</tr>
</table>
</div>
</form>
</body>
</html>