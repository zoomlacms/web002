<%@ page language="C#" autoeventwireup="true" inherits="User_AlipayInfo, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>成功登录</title>
</head>
<body>
<form id="form1" runat="server">
<div>
	<table style="font-size:12px">
	<tr><td>您的用户名为：<font color=red><%=user.UserName%></font></td></tr>
	<tr><td>您的密码为：<font color=red>123456</font></td></tr>
	<tr><td><br>您可以用此账号直接登陆本系统哦！</font></td></tr>
	</table>
</div>
</form>
</body>
</html>