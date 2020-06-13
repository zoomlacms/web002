<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.GatherStrainManage.GSMember, App_Web_2fd1wrub" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlGztherLetf.ascx" TagName="WebUserControlGztherLetf" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的空间</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf1" runat="server" />
</div>
<div class="us_topinfo" style="margin-top: 10px;">
	<table width="100%" border="0" cellspacing="0" cellpadding="4">
		<tr>
			<td>
				<asp:Image ID="imgGSICQ" runat="server" Width="150px" Height="100px" />
			</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="labGSName" runat="server"></asp:Label>
				&gt;&gt;群成员
			</td>
		</tr>
	</table>
	<hr />
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
			<td>
			</td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="width: 70%">
				&nbsp;<asp:LinkButton ID="lbtnAll" runat="server" OnClick="lbtnAll_Click">所有成员</asp:LinkButton>
				|
				<asp:LinkButton ID="lbtnNewP" runat="server" OnClick="lbtnNewP_Click">最新成员</asp:LinkButton>
				|&nbsp;
				<asp:LinkButton ID="lbtnCome" runat="server" OnClick="lbtnCome_Click">最近来访成员</asp:LinkButton>
			</td>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<asp:DataList ID="dlMember" runat="server" DataKeyField="ID" RepeatColumns="4" ShowFooter="False"
					ShowHeader="False" OnItemDataBound="dlMember_ItemDataBound">
					<ItemTemplate>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center">
									<img src='<%#DataBinder.Eval(Container.DataItem,"Userpic")%>' />
								</td>
							</tr>
							<tr>
								<td align="center" style="height: 20px">
									<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "IsMy") %>'
										BackColor="Red"></asp:Label>
								</td>
							</tr>
							<tr>
								<td align="center">
									<a href="#">
										<%#DataBinder.Eval(Container.DataItem, "UserName")%>
									</a>
								</td>
							</tr>
							<tr>
								<td align="center">
									<%#DataBinder.Eval(Container.DataItem, "LastCallTime")%>
								</td>
							</tr>
						</table>
					</ItemTemplate>
				</asp:DataList>
			</td>
			<td valign="top">
				<br />
				<br />
				<%--查找成员：
		<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
			</td>
		</tr>
		<tr>
			<td>
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