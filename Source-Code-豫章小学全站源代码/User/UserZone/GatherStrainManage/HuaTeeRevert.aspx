<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.GatherStrainManage.HuaTeeRevert, App_Web_2fd1wrub" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a>
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf2" runat="server" />
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
		&gt;&gt; <a href="CreatHuaTee.aspx?GSID=<%=GSID %>&where=5">返回话题列表</a> &gt;&gt;
		话题内容<hr />
	</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="4">
<tr>
	<td bgcolor="#B4B4B4">
		<strong>标题:<asp:Label ID="Label1" runat="server" Text=""></asp:Label></strong>
	</td>
</tr>
<tr>
	<td>
		<asp:GridView ID="gvHuaTess" runat="server" Width="100%" CellPadding="4" AutoGenerateColumns="False"
			DataKeyNames="ID">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<%--<td rowspan="3" style="width: 100px">
								<asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"Userpic") %>' />
							</td>--%>
								<td style="width: 100px">
									<a href="#">
										<%#DataBinder.Eval(Container.DataItem,"UserName") %>
									</a>
								</td>
								<td>
									<asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CreatTime") %>'
										ForeColor="DimGray"></asp:Label>
								</td>
								<td align="right">
									楼主
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<br />
									<asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"HuaTeeContent") %>'></asp:Label>
								</td>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr id="tr1" runat="server" visible='<%#GetVisible(DataBinder.Eval(Container.DataItem,"ID").ToString(),DataBinder.Eval(Container.DataItem,"UserID").ToString() )%>'>
								<td colspan="3" align="right">
									<a href="?menu=edit&id=<%#DataBinder.Eval(Container.DataItem,"ID").ToString() %>">编辑</a>&nbsp;
									|&nbsp; <a href="?menu=delete&id=<%#DataBinder.Eval(Container.DataItem,"ID").ToString() %>"
										onclick="return confirm('你确定要删除吗？');">删除</a>
								</td>
							</tr>
						</table>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
		<asp:GridView ID="gvRes" runat="server" AutoGenerateColumns="False" CellPadding="4"
			Width="100%" DataKeyNames="ID" GridLines="Horizontal">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<%--<td rowspan="3" style="width: 100px">
								<asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"Userpic") %>' />
							</td>--%>
								<td style="width: 100px">
									<a href="#">
										<%#DataBinder.Eval(Container.DataItem,"UserName") %>
									</a>
								</td>
								<td>
									<asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"CreatTime") %>'
										ForeColor="DimGray"></asp:Label>
								</td>
								<td align="right">
									<asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Taxis") %>'></asp:Label>楼
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<br />
									<asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Content") %>'></asp:Label>
								</td>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td colspan="3" align="right">
									<asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return confirm('你确定要删除吗？');return false"
										OnClick="LinkButton2_Click" CausesValidation="False">删除</asp:LinkButton>
								</td>
							</tr>
						</table>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
			<EmptyDataTemplate>
				<table class="tinputbody" cellpadding="0" cellspacing="1" border="0" width="100%">
					<tr>
						<td align="center" width="100%">
							当前无回复
						</td>
					</tr>
				</table>
			</EmptyDataTemplate>
		</asp:GridView>
		<br />
	</td>
</tr>
<tr>
	<td align="center">
		共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
		<asp:Label ID="Toppage" runat="server" Text="" />
		<asp:Label ID="Nextpage" runat="server" Text="" />
		<asp:Label ID="Downpage" runat="server" Text="" />
		<asp:Label ID="Endpage" runat="server" Text="" />
		页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
			Text="" />页
		<asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1"
			runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
		</asp:DropDownList>
		页 &nbsp;
	</td>
</tr>
<tr>
	<td>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td style="width: 117px" align="right" valign="top">
					<strong>回复话题：</strong><span style="color: #d01e3b">*&nbsp; </span>&nbsp;
				</td>
				<td>
					<textarea cols="40" rows="5" id="FreeTextBox1" runat="server"></textarea>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FreeTextBox1"
						Display="Dynamic" ErrorMessage="请填写回复内容" Font-Size="10pt"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<asp:Button ID="btnOK" runat="server" Text="提交回复" OnClick="btnOK_Click" />
				</td>
			</tr>
		</table>
	</td>
</tr>
</table>
</form>
</body>
</html>