<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_ShowProblemList, App_Web_2npzixkb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>问题列表</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">会员中心</a>&gt;&gt;<a href="mySchoolList.aspx">我的班级</a>&gt;&gt;班级信息
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
<br />
<div class="us_showinfo">
<div>
	<a href="ShowRoom.aspx?Roomid=<%=Roomid%>">
		<%=RoomName %>
	</a>&gt;&gt; 问题列表<hr />
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td id="td1" runat="server"><a href='AddProblem.aspx?Roomid=<%=Request.QueryString["Roomid"].ToString()%>'>我要提问</a>
		</td>
	</tr>
	<tr>
		<td>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
				<Columns>
					<asp:TemplateField HeaderText="问题" HeaderStyle-Width="75%">
						<ItemTemplate>
							<a href='ShowProblem.aspx?pid=<%# DataBinder.Eval(Container.DataItem, "ID")%>'>
								<%# DataBinder.Eval(Container.DataItem, "ProblemTitle")%>
							</a>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="提问者" HeaderStyle-Width="10%">
						<ItemTemplate>
							<%#getusername ( DataBinder.Eval(Container.DataItem, "UserID").ToString())%>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:BoundField DataField="AddTime" HeaderText="发问日期" HeaderStyle-Width="15%" />
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