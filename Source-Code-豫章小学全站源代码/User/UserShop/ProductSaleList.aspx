<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_ProductSaleList, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function CheckAll(spanChk)//CheckBox全选
{
var oItem = spanChk.children;
var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
xState=theBox.checked;
elm=theBox.form.elements;
for(i=0;i<elm.length;i++)
if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
{
	if(elm[i].checked!=xState)
	elm[i].click();
}
}
</script>
<script src="/JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div style="width:100%">
<uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
<uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<div class="us_topinfo" style="margin-top:10px; width:98%"><a href="ProductSaleList.aspx">总体销售统计</a> <a href="ProductSale.aspx">商品销售排名</a> <a href="ProductTypeSale.aspx">商品类别销售排名</a> <a href="UserOrder.aspx">会员订单排名</a> <a href="UserShopOrder.aspx">会员购物排名</a></div>
<div class="us_topinfo" style="margin-top:10px; width:98%">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td align="center" style="height: 23px">从
	<asp:TextBox ID="toptime" runat="server" Width="109px" onclick="calendar();" />
		<asp:Image ID="Image2" runat="server" 
			ImageUrl="~/App_Themes/AdminDefaultTheme/images/Calendar.gif" />&nbsp;
	至
	<asp:TextBox ID="endtime" runat="server" Width="109px" onclick="calendar();" />&nbsp;<asp:Image
			ID="Image1" runat="server" ImageUrl="~/App_Themes/AdminDefaultTheme/images/Calendar.gif" />
	<asp:Button ID="Button1" Text="查询" runat="server" /></td>
  </tr>
</table>
<div align="center"><br />
  <br />
  客户平均订单金额<br />
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
  <tr align="center">
	<td width="33%" class="title">总订单金额</td>
	<td width="33%" class="title">总订单数</td>
	<td width="33%" class="title">客户平均订单金额</td>
  </tr>
  <tr class="">
	<td height="22" class="tdbg" align=center>
		<asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
	<td height="22" class="tdbg" align=center><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
	<td height="22" class="tdbg" align=center><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
  </tr>
</table>
<div align="center"><br />
	<br />
  每次访问平均订单金额<br />
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
  <tr align="center">
	<td width="33%" class="title">总订单金额</td>
	<td width="33%" class="title">总订单数</td>
	<td width="33%" class="title">客户平均订单金额</td>
  </tr>
  <tr class="">
	<td height="22" class="tdbg" align="center">
		<asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
	<td height="22" class="tdbg" align="center">
		<asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
	<td height="22" class="tdbg" align="center">
		<asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
  </tr>
</table>
<div align="center"><br />
	<br />
  匿名订单购买率
<br />
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
  <tr align="center">
	<td width="33%" class="title">总订单金额</td>
	<td width="33%" class="title">总订单数</td>
	<td width="33%" class="title">客户平均订单金额</td>
  </tr>
  <tr class="">
	<td height="22" class="tdbg" align="center"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
	<td height="22" class="tdbg" align="center"><asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>
	<td height="22" class="tdbg" align="center"><asp:Label ID="Label9" runat="server" Text=""></asp:Label></td>
  </tr>
</table>
<div align="center"><br />
	<br />
  注册会员购买率<br />
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
  <tr align="center">
	<td width="33%" class="title">总订单金额</td>
	<td width="33%" class="title">总订单数</td>
	<td width="33%" class="title">客户平均订单金额</td>
  </tr>
  <tr class="">
	<td class="tdbg" align="center" style="height: 22px"><asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
	<td class="tdbg" align="center" style="height: 22px"><asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
	<td class="tdbg" align="center" style="height: 22px"><asp:Label ID="Label12" runat="server" Text=""></asp:Label></td>
  </tr>
</table>
</div>
</div>
</form>
</body>
</html>