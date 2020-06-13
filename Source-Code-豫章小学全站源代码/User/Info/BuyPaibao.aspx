<%@ page language="C#" autoeventwireup="true" inherits="User_Info_BuyPaibao, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>购买拍宝套餐</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
 <span class="us_showinfo1">您好<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>！</span>您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a> &gt;&gt; <a href="UserInfo.aspx">账户管理</a> &gt;&gt; </span><span>购买拍宝套餐 </span> 
</div>
<div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
	<h1 style="text-align:center">购买拍宝套餐</h1>
	<table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
		<tr class="tdbg">
			<td style="width:30%; float:left;line-height:30px; text-align:right">
			   我的资金：
			</td>
			<td style="width:70%;line-height:30px">
				&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
			</td>
		</tr>
		<tr class="tdbg">
			<td style="width:30%; float:left;line-height:30px; text-align:right">
			   我的拍宝：
			</td>
			<td style="width:70%;line-height:30px">
				&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
			</td>
		</tr>

		<tr class="tdbg">
			<td style="width:100%; float:left; text-align:center" colspan="2">
				<asp:Literal ID="txt_Timg" runat="server"></asp:Literal>
			</td>
		</tr>
		<tr class="tdbg">
			<td style="width:30%; float:left;line-height:30px; text-align:right">
			   套餐名称：
			</td>
			<td style="width:70%;line-height:30px">
				&nbsp;<asp:Label ID="txt_Tname" runat="server" Text=""></asp:Label>
			</td>
		</tr>
		<tr class="tdbg">
			<td style="width:30%; float:left;line-height:30px; text-align:right">
				兑换比例(金钱/宝点)：
			</td>
			<td style="width:70%;line-height:30px">
				&nbsp;<asp:Label ID="txt_bili" runat="server" Text=""></asp:Label>
			</td>
		</tr>
		<tr class="tdbg">
			<td style="width:30%; float:left;line-height:30px; text-align:right">
				套餐说明：
			</td>
			<td style="width:70%;line-height:30px">
				&nbsp;<asp:Label ID="txt_Tinfo" runat="server" Text=""></asp:Label>
			</td>
		</tr>
		<tr class="tdbg">
			<td style="width:30%; float:left;line-height:30px; text-align:right">
				购买数量：
			</td>
			<td style="width:70%;line-height:30px">
				<asp:TextBox ID="Bnum" runat="server">1</asp:TextBox> 个
			</td>
		</tr>
		<asp:HiddenField ID="hiden" runat="server" />
		<tr class="tdbgbottom">
			<td colspan="2" align="center">
				<asp:Button ID="EBtnSubmit" Text="购买" OnClick="EBtnSubmit_Click" runat="server" /> &nbsp;&nbsp;
				<input id="Button1" type="button" value="返回" onclick="javascript:location.href='MyPaibao.aspx'" />
			</td>
		</tr>
	</table>
</div>
</form>
</body>
</html>