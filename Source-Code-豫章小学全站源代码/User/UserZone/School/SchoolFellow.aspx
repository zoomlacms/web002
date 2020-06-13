<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_SchoolFellow, App_Web_2npzixkb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">会员中心</a>&gt;&gt;a href="mySchoolList.aspx">我的班级</a>&gt;&gt;班级信息
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
&nbsp;
<br />
<div class="us_topinfo">
	<div>
		<a href="mySchoolList.aspx">我的班级 </a>&gt;&gt; 查找我的同学<hr />
	</div>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td>
				输入姓名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:Button ID="Button1"
					runat="server" Text="查  找" OnClick="Button1_Click" />
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
					ErrorMessage="请输入要查找的同学姓名"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td id="tdSelect" runat="server">
				<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
					<Columns>
						<asp:BoundField DataField="UserName" HeaderText="用户名" HeaderStyle-Width="20%" />
						<asp:TemplateField HeaderText="真实姓名" HeaderStyle-Width="20%">
							<ItemTemplate>
								<%#GetUserName(DataBinder.Eval(Container.DataItem, "UserID").ToString ())%>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="学校" HeaderStyle-Width="30%">
							<ItemTemplate>
								<%#GetSchool(DataBinder.Eval(Container.DataItem, "SchoolID").ToString ())%>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="班级" HeaderStyle-Width="20%">
							<ItemTemplate>
								<%#GetRoom(DataBinder.Eval(Container.DataItem, "RoomID").ToString())%>
							</ItemTemplate>
						</asp:TemplateField>
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
				</asp:DropDownList>
				页
			</td>
		</tr>
	</table>
</div>
</form>
</body>
</html>