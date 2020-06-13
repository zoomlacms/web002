<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.GatherStrainManage.GSManage, App_Web_2fd1wrub" title="族群" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a>
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf1" runat="server" />
</div>
<div class="us_topinfo" style="margin-top: 10px;">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td style="width: 70%" valign="top">
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				搜索族群: 输入关键字<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
				<asp:Button ID="Button1" runat="server" Text="搜 索" OnClick="Button1_Click" />
			</td>
		</tr>
		<tr>
			<td valign="top" align="center">
				<asp:GridView ID="gvMu" runat="server" Width="95%" AutoGenerateColumns="False" DataKeyNames="ID">
					<Columns>
						<asp:BoundField DataField="GSName" HeaderText="群族名称">
							<ItemStyle HorizontalAlign="Center" />
						</asp:BoundField>
						<asp:BoundField DataField="UserName" HeaderText="群族管理员">
							<ItemStyle HorizontalAlign="Center" />
						</asp:BoundField>
						<asp:TemplateField HeaderText="操作">
							<ItemStyle HorizontalAlign="Center" />
							<ItemTemplate>
								<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">加入该族群</asp:LinkButton>
							</ItemTemplate>
						</asp:TemplateField>
					</Columns>
					<EmptyDataTemplate>
						无族群记录
					</EmptyDataTemplate>
				</asp:GridView>
			</td>
		</tr>
	</table>
</td>
<td valign="top">
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td style="height: 18px">
				我加入的群
			</td>
		</tr>
		<tr>
			<td align="center" valign="top">
				<asp:GridView ID="gvGS" ShowHeader="false" runat="server" AutoGenerateColumns="False"
					CellPadding="4" Width="95%" OnRowDataBound="gvGS_RowDataBound" DataKeyNames="ID,UserID">
					<Columns>
						<asp:TemplateField>
							<ItemTemplate>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td rowspan="2" style="width: 45px">
											<asp:Image ID="imgGSICQ" runat="server" ImageUrl='<%#PicUrl(DataBinder.Eval(Container.DataItem, "GSICO").ToString())%>'
												Height="100px" Width="150px" />
										</td>
										<td>
											<a href='GSBuid.aspx?GSID=<%#DataBinder.Eval(Container.DataItem, "ID")%>&where=5'>
												<%#DataBinder.Eval(Container.DataItem, "GSName")%>
											</a>
										</td>
									</tr>
									<tr>
										<td>
											<asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "UserName")%>'></asp:Label>
										</td>
									</tr>
								</table>
							</ItemTemplate>
						</asp:TemplateField>
					</Columns>
					<EmptyDataTemplate>
						<table class="tinputbody" cellpadding="0" cellspacing="1" border="0" width="100%">
							<tr>
								<td align="center">
									您还没有创建群族,也没有加入其他群
								</td>
							</tr>
						</table>
					</EmptyDataTemplate>
				</asp:GridView>
			</td>
		</tr>
	</table>
</td>
</tr>
</table>
</form>
</body>
</html>