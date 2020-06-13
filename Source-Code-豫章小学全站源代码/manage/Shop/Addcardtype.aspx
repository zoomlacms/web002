<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_Addcardtype, App_Web_5abfvvyw" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js"></script> 
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 商城管理 &gt;&gt; 商城配置</span> &gt;&gt;<a href="CardManage.aspx">VIP卡管理</a> &gt;&gt; 卡类型</div>
<div>
	<table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
		<tr align="center">
			<td colspan="2" class="spacingtitle">
			   卡类型
			</td>
		</tr>
		<tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td height="22" class="tdbgleft" align="right" style="width: 24%">
				种类名称：</td>
			<td>
			 &nbsp;   <asp:TextBox ID="tx_typename" runat="server" class="l_input"></asp:TextBox>
			</td>
		</tr>
	   
		 <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td height="22" class="tdbgleft" align="right" style="width: 24%">
				折扣率：
			</td>
			<td>
				&nbsp;   <asp:TextBox ID="tx_count" runat="server" class="l_input"></asp:TextBox>
			 </td>
		</tr>
		
	   
		 <tr class="WebPart">
			<td height="22" class="tdbgleft" align="right" style="width: 24%">
				<strong></strong>
			</td>
			<td>  &nbsp;
				<asp:Button ID="Button1" class="C_input" runat="server"  Text="提交" onclick="Button1_Click" />
				<asp:HiddenField ID="HiddenField1" runat="server" />
				<asp:HiddenField ID="id" runat="server" />
			</td>
		</tr>
	</table>
</div>
</form>
</body>
</html>
