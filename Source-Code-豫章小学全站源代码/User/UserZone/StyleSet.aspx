<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_StyleSet, App_Web_b1vdkvuv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的空间</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
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
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a>
</div>
	<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
	<div class="us_topinfo" style="margin-top: 10px;">
		<a href="/user/userzone/Default.aspx">修改空间基本信息</a> <a href="/user/userzone/StyleSet.aspx">设定空间模板</a>(当前模板:<asp:Label ID="StyleNameLB" runat="server" Text="Label"></asp:Label>)</div>
	<div class="us_topinfo" style="margin-top: 10px;">
		<asp:DataList ID="DlStyle" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
			Width="100%" DataKeyField="ID">
			<ItemTemplate>
				&nbsp;&nbsp;
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center" height="114">
							<asp:Image ID="Image1" runat="server" Height="95px" Width="100px" ImageUrl='<%#GetImg(DataBinder.Eval(Container.DataItem, "ID").ToString())%>' />
						</td>
					</tr>
					<tr>
						<td align="center">
							<%#Eval("StyleName", "{0}")%>
						</td>
					</tr>
					<tr>
						<td align="center">
							<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">设为模板</asp:LinkButton>
						</td>
					</tr>
				</table>
			</ItemTemplate>
		</asp:DataList>
		<li style="height: 30px; text-align: center;">共<asp:Label ID="Allnum" runat="server"
			Text=""></asp:Label>&nbsp;
			<asp:Label ID="Toppage" runat="server" Text="" />
			<asp:Label ID="Nextpage" runat="server" Text="" />
			<asp:Label ID="Downpage" runat="server" Text="" />
			<asp:Label ID="Endpage" runat="server" Text="" />
			页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
				Text="" />页
			<asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
			</asp:DropDownList>
			页</li>
	</div>
</form>
</body>
</html>