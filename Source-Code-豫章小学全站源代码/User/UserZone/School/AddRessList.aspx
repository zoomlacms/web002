<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_AddRessList, App_Web_2npzixkb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的班级 </title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../../Common/RiQi.js" language="javascript" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">会员中心</a>&gt;&gt;<a href="mySchoolList.aspx">我的班级</a>&gt;&gt;班级信息
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
<br />
<div class="us_topinfo">
	<div>
		<a href="mySchoolList.aspx">我的班级</a> &gt;&gt; 通讯录列表
		<hr />
	</div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<a href="addRess.aspx">添加通讯录</a>
			</td>
		</tr>
		<tr>
			<td id="tdcontext" runat="server">
				<asp:GridView ID="GridView1" Width="100%" DataKeyNames="ID" runat="server" AutoGenerateColumns="False"
					OnRowDeleting="GridView1_RowDeleting">
					<Columns>
						<asp:TemplateField HeaderText="姓名">
							<ItemTemplate>
								<a href='AddRess.aspx?AID=<%# DataBinder.Eval(Container.DataItem, "ID")%>'>
									<%# ZoomLa.Common.BaseClass.CheckInjection(Eval("UserName","{0}"))%></a>
							</ItemTemplate>
						</asp:TemplateField>

						<asp:TemplateField HeaderText="电话">
							<ItemTemplate>
									<%# ZoomLa.Common.BaseClass.CheckInjection(Eval("UserPhone", "{0}"))%>
							</ItemTemplate>
						</asp:TemplateField>

						<asp:TemplateField HeaderText="QQ">
							<ItemTemplate>
									<%# ZoomLa.Common.BaseClass.CheckInjection(Eval("UserQQ", "{0}"))%>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="MSN">
							<ItemTemplate>
									<%# ZoomLa.Common.BaseClass.CheckInjection(Eval("UserMSN", "{0}"))%>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="E_Mail">
							<ItemTemplate>
									<%# ZoomLa.Common.BaseClass.CheckInjection(Eval("UserMail", "{0}"))%>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="地址">
							<ItemTemplate>
									<%# ZoomLa.Common.BaseClass.CheckInjection(Eval("UserAdd", "{0}"))%>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="简介">
							<ItemTemplate>
								<%#ZoomLa.Common.BaseClass.CheckInjection(GetContext(Eval("UserContext","{0}")))%>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:CommandField ShowDeleteButton="True" />
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
</div>
</form>
</body>
</html>