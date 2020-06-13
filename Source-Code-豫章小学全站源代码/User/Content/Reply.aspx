<%@ page language="C#" autoeventwireup="true" inherits="User_Content_Reply, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>信息回复</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<ul class="us_seta" style="margin-top: 10px;">
<h1 style="text-align: center">
<asp:Label ID="Label2" runat="server" Text="信息回复"></asp:Label></h1>
<table>
<tr>
	<td style="width: 120px; float: left; line-height: 30px; text-align: right">
		标题：
	</td>
	<td>
		<asp:TextBox ID="txtTitle" runat="server" Width="200px"></asp:TextBox>
	</td>
</tr>
<tr>
	<td style="width: 120px; float: left; line-height: 30px; text-align: right">
		内容：
	</td>
	<td>
		<asp:TextBox ID="txtContent" runat="server" Width="400px" Height="100px" TextMode="MultiLine"></asp:TextBox>
	</td>
</tr>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<tr>
	<td colspan="2" align="center">
		<asp:Button ID="Button1" runat="server" Text="提 交" OnClick="Button1_Click" />
	</td>
</tr>
</table>
</ul>
</form>
</body>
</html>
