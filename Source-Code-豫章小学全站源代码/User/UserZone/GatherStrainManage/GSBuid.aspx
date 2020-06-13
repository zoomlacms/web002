<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.GatherStrainManage.GSBuid, App_Web_2fd1wrub" title="族群" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlGztherLetf.ascx" TagName="WebUserControlGztherLetf" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的空间</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function CheckAll(spanChk)//CheckBox全选
	{
		var oItem = spanChk.children;
		var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
		xState = theBox.checked;
		elm = theBox.form.elements;
		for (i = 0; i < elm.length; i++)
			if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
				if (elm[i].checked != xState)
					elm[i].click();
			}
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a>
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf1" runat="server" />
</div>
<div class="us_topinfo" style="margin-top: 10px;">
<table width="100%" border="0" cellspacing="0" cellpadding="4">
	<tr>
		<td rowspan="5" style="width: 59px">
			<asp:Image ID="imgGSICQ" runat="server" Width="150px" Height="100px" />
		</td>
		<td>
			<asp:Label ID="labName" runat="server" Text=''></asp:Label>
		</td>
		<%--<td width="200px">
	<asp:LinkButton ID="LinkButton1" runat="server">邀请好友加入本群族</asp:LinkButton>
</td>--%>
	</tr>
	<tr>
		<td style="width: 527px">
			成员：<asp:Label ID="Label2" runat="server" Text=''></asp:Label>
		</td>
		<%--<td width="200px">
	<asp:LinkButton ID="LinkButton2" runat="server">邀请站外好友加入本群族</asp:LinkButton></td>--%>
	</tr>
	<tr>
		<td style="width: 527px">
			创建时间：<asp:Label ID="labCreattime" runat="server" Text=''></asp:Label>
		</td>
		<%--<td width="200px">
	<asp:LinkButton ID="LinkButton4" runat="server">管理该群族</asp:LinkButton></td>--%>
	</tr>
	<tr>
		<td style="width: 527px">
			介绍：<asp:Label ID="labInfo" runat="server" Text=''></asp:Label>
		</td>
		<td width="200px">
			<asp:LinkButton ID="lbtnDeleteGS" runat="server" OnClick="lbtnDeleteGS_Click">删除群族</asp:LinkButton>
		</td>
	</tr>
</table>
<table width="100%%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="2">
			<table>
				<tr>
					<td>
						<a href='GSBuid.aspx?GSID=<%=GSID %>&where=5'>群族首页</a>
					</td>
					<td>
						<a href='CreatHuaTee.aspx?GSID=<%=GSID %>&where=5'>话题</a>
					</td>
					<td>
						<a href='FileShareManage.aspx?GSID=<%=GSID %>&where=5'>文件共享</a>
					</td>
					<td>
						<a href='GSMember.aspx?GSID=<%=GSID %>&where=5'>成员</a>
					</td>
					<td>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="width: 100%">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="2">
						<asp:GridView ID="gvHuaTee" runat="server" CellPadding="4" Width="100%" AutoGenerateColumns="False"
							GridLines="Horizontal" OnRowDataBound="gvHuaTee_RowDataBound">
							<RowStyle HorizontalAlign="Center" />
							<Columns>
								<asp:TemplateField HeaderText="话题">
									<ItemTemplate>
										<a href="HuaTeeRevert.aspx?GSID=<%=GSID %>&HTID=<%#DataBinder.Eval(Container.DataItem, "ID")%>&where=5">
											<%#DataBinder.Eval(Container.DataItem, "HuaTeeTitle")%>
										</a>
									</ItemTemplate>
								</asp:TemplateField>
								<asp:BoundField DataField="RevertCount" HeaderText="回复次数" />
								<asp:TemplateField HeaderText="作者">
									<ItemTemplate>
										<%--<asp:Image ID="imgUserICQ" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "Userpic")%>' />
								<a href="#">--%>
										<%#DataBinder.Eval(Container.DataItem, "UserName")%>
										<%--</a>--%>
									</ItemTemplate>
								</asp:TemplateField>
								<asp:BoundField DataField="LastTime" HeaderText="最后回复" />
							</Columns>
							<EmptyDataTemplate>
								<table class="tinputbody" cellpadding="0" cellspacing="1" border="0" width="100%">
									<tr>
										<td align="center" style="height: 200px">
											没有话题
										</td>
									</tr>
								</table>
							</EmptyDataTemplate>
						</asp:GridView>
					</td>
				</tr>
				<tr>
					<td style="width: 647px">
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
					<td>
						<a href='AppearHuaTee.aspx?GSID=<%=GSID %>&where=5'>发表话题</a>
					</td>
				</tr>
			</table>
		</td>
		<td style="width: 2px">
			&nbsp;
		</td>
		<td>
			&nbsp;
		</td>
	</tr>
</table>
</form>
</body>
</html>