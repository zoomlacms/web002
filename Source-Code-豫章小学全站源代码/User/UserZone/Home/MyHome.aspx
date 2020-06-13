<%@ page language="C#" autoeventwireup="true" inherits="FreeHome.Home.MyHome, App_Web_weykxp55" enableviewstate="False" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
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
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a><a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a>
</div>
<div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
</div>
</div>
<div class="us_topinfo" style="margin-top: 10px;">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
	<td valign="top">
	</td>
	<td valign="top">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td>
					<a href="homeset.aspx" target="_blank">布置我的小屋</a> <a href="ProductCenter.aspx">商品中心</a>
				</td>
			</tr>
			<tr>
				<td>
					<iframe scrolling="no" frameborder="0" src="Homeshow.aspx?shid=<%=uid %>" width="100%"
						height="600"></iframe>
				</td>
			</tr>
		</table>
	</td>
</tr>
</table>
<script type="text/javascript" language="javascript" src="../command/common.js"></script>
<script type="text/javascript" language="javascript" src="../command/subModal.js"></script>
</form>
</body>
</html>