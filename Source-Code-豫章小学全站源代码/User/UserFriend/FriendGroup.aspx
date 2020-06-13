<%@ page language="C#" autoeventwireup="true" inherits="User_UserFriend_FriendGroup, App_Web_p5eazu2w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../UserZone/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlMessage.ascx" TagName="WebUserControlMessage" TagPrefix="uc1" %>
<%@ Register Src="../UserFriend/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的好友</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
<div class="us_pynews">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的好友" href="/User/UserFriend/Default.aspx">我的好友</a>&gt;&gt;好友分组管理
</div>
	<uc2:WebUserControlTop ID="WebUserControlTop2" runat="server" />
	<uc3:WebUserControlTop ID="WebUserControlTop1" runat="server" />
	<div class="us_topinfo" style="margin-top: 10px;">
		<a href="FriendGroup.aspx">分组管理</a> <a href="FriendGroupAdd.aspx">添加分组</a></div>
	<div class="us_topinfo" style="margin-top: 10px;">
		<asp:GridView ID="GridView1" runat="server" DataKeyNames="ID" Width="100%" AutoGenerateColumns="False">
			<Columns>
				<asp:BoundField DataField="GroupName" HeaderText="分组名称">
					<ItemStyle HorizontalAlign="Center" />
				</asp:BoundField>
				<asp:TemplateField HeaderText="操作">
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CommandName='<%#DataBinder.Eval(Container.DataItem,"ID") %>'>[修 改]</asp:LinkButton>
						<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">[删 除]</asp:LinkButton>
					</ItemTemplate>
					<ItemStyle HorizontalAlign="Center" />
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
		<table align="center" width="100%">
			<tbody>
				<tr class="tdbg">
					<td height="24" colspan="12" align="center" class="tdbgleft">
						共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
						<asp:Label ID="Toppage" runat="server" Text="" />
						<asp:Label ID="Nextpage" runat="server" Text="" />
						<asp:Label ID="Downpage" runat="server" Text="" />
						<asp:Label ID="Endpage" runat="server" Text="" />
						页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
						<asp:Label ID="pagess" runat="server" Text="" />/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
						</asp:DropDownList>
						页
					</td>
				</tr>
			</tbody>
		</table>
</div>
</form>
</body>
</html>