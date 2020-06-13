<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.GatherStrainManage.FileShareManage, App_Web_2fd1wrub" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlGztherLetf.ascx" TagName="WebUserControlGztherLetf" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的空间</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf2" runat="server" />
</div>
<div class="us_topinfo" style="margin-top: 10px;">
<table width="100%%" border="0" cellspacing="0" cellpadding="4">
<tr>
	<td>
		<asp:Image ID="imgGSICQ" runat="server" Width="150px" Height="100px" />
	</td>
</tr>
<tr>
	<td>
		<asp:Label ID="labGSName" runat="server"></asp:Label>
		&gt;&gt;群族共享文件列表
		<hr />
	</td>
</tr>
</table>
<table width="100%%" border="0" cellspacing="0" cellpadding="0">
<tr>
	<td>
		<table>
			<tr>
				<td>
					<a href='GSBuid.aspx?GSID=<%=GSID %>'>群族首页</a>
				</td>
				<td>
					<a href='CreatHuaTee.aspx?GSID=<%=GSID %>'>话题</a>
				</td>
				<td>
					<a href='FileShareManage.aspx?GSID=<%=GSID %>'>文件共享</a>
				</td>
				<td>
					<a href='GSMember.aspx?GSID=<%=GSID %>'>成员</a>
				</td>
				<td>
				</td>
			</tr>
		</table>
	</td>
	<td style="width: 2px">
		&nbsp;
	</td>
	<td align="right" valign="bottom">
		<a href="FileShareCreat.aspx?GSID=<%=GSID %>&where=5">上传文件</a>
	</td>
</tr>
<tr>
	<td colspan="3">
		<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
	</td>
</tr>
<tr>
	<td colspan="3">
		<table width="100%%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<asp:GridView ID="gvFileList" runat="server" AutoGenerateColumns="False" CellPadding="4"
						GridLines="Horizontal" Width="100%" DataKeyNames="ID">
						<RowStyle HorizontalAlign="Center" />
						<Columns>
							<asp:BoundField DataField="FactFileName" HeaderText="文件名称" />
							<asp:BoundField DataField="FileSize" HeaderText="大小" />
							<asp:BoundField DataField="DownCount" HeaderText="下载" />
							<asp:TemplateField HeaderText="上传者">
								<ItemTemplate>
									<a href="#">
										<%#DataBinder.Eval(Container.DataItem, "UserName")%>
									</a>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:BoundField DataField="CreatTime" HeaderText="上传时间" />
							<asp:TemplateField>
								<EditItemTemplate>
									<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
								</EditItemTemplate>
								<ItemTemplate>
									&nbsp;<asp:LinkButton ID="lbtnDown" runat="server" OnClick="lbtnDown_Click">下载</asp:LinkButton>
								</ItemTemplate>
								<ItemStyle Width="40px" />
							</asp:TemplateField>
							<asp:TemplateField>
								<ItemTemplate>
									&nbsp;<asp:LinkButton ID="lbtnDel" OnClientClick="return confirm('你确定要删除吗？');" runat="server"
										OnClick="lbtnDel_Click">删除</asp:LinkButton>
								</ItemTemplate>
								<ItemStyle Width="40px" />
							</asp:TemplateField>
						</Columns>
						<EmptyDataTemplate>
							<table class="tinputbody" cellpadding="0" cellspacing="1" border="0" width="100%">
								<tr>
									<td align="center" style="height: 200px">
										当前无共享文件
									</td>
								</tr>
							</table>
						</EmptyDataTemplate>
					</asp:GridView>
				</td>
			</tr>
			<tr>
				<td>
					<li style="height: 30px; text-align: center;">共<asp:Label ID="Allnum" runat="server"
						Text=""></asp:Label>&nbsp;
						<asp:Label ID="Toppage" runat="server" Text="" />
						<asp:Label ID="Nextpage" runat="server" Text="" />
						<asp:Label ID="Downpage" runat="server" Text="" />
						<asp:Label ID="Endpage" runat="server" Text="" />
						页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
							Text="" />页
						<asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1"
							runat="server" AutoPostBack="True">
						</asp:DropDownList>
						页</li>
				</td>
			</tr>
		</table>
	</td>
</tr>
</table>
</form>
</body>
</html>