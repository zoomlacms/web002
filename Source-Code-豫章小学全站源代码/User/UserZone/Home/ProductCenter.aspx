<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Home_ProductCenter, App_Web_weykxp55" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
	function refpage(ret) {
		if (typeof (ret) != "undefined") {

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
						<asp:DataList ID="DataList2" runat="server" Width="100%" RepeatColumns="7" RepeatDirection="Horizontal">
							<ItemTemplate>
								<table border="0" cellpadding="0" cellspacing="0" height="129" width="100%">
									<tr>
										<td align="center" colspan="2">
											<asp:Image ID="Image1" runat="server" ImageUrl='<%#getpic(DataBinder.Eval(Container.DataItem,"ProductPic").ToString()) %>' />
										</td>
									</tr>
									<tr>
										<td align="center" colspan="2">
											<%#DataBinder.Eval(Container.DataItem,"ProductName") %>
										</td>
									</tr>
									<tr>
										<td align="center">
											<asp:Image ID="Image2" runat="server" ImageUrl="HomeImage/vip_icon1.gif" />
										</td>
										<td align="center">
											<font color="#ff6600">
												<%#DataBinder.Eval(Container.DataItem,"VipPrice") %><%=uname %>币</font>
										</td>
									</tr>
									<tr>
										<td align="center">
											价格:
										</td>
										<td align="center">
											<%#DataBinder.Eval(Container.DataItem,"Price") %><%=uname %>币
										</td>
									</tr>
									<tr>
										<td align="center">
											<a href="javascript:showPopWin('购买商品','ProductBuy.aspx?pID=<%#DataBinder.Eval(Container.DataItem,"ID") %>&Math.random()',400,200, refpage,true)">
												<asp:Image ID="Image3" runat="server" ImageUrl="HomeImage/button_buy.gif" /></a>
										</td>
										<td align="center">
											<a href="javascript:showPopWin('赠送商品','ProductGive.aspx?pID=<%#DataBinder.Eval(Container.DataItem,"ID") %>&Math.random()',400,400, refpage,true)">
												<asp:Image ID="Image4" runat="server" ImageUrl="HomeImage/button_give.gif" /></a>
										</td>
									</tr>
								</table>
							</ItemTemplate>
						</asp:DataList>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<script type="text/javascript" language="javascript" src="../../command/common.js"></script>
<script type="text/javascript" language="javascript" src="../../command/subModal.js"></script>
</form>
</body>
</html>