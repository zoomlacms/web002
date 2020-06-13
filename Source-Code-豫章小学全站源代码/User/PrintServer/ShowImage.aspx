<%@ page language="C#" autoeventwireup="true" inherits="User_PrintServer_ShowImage, App_Web_cmsnmuvr" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的作品 </title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="s_bright">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='/User/Default.aspx' target="_parent">会员中心</a>&gt;&gt;<a title="我的作品" href='/User/PrintServer/ImageList.aspx'>我的作品</a>
</div>
<table width="760px" border="0" cellpadding="0" cellspacing="0">
<tr>
<td align="center">
&nbsp;<table width="300px">
<tr>
<td>
	<asp:Label ID="labCount" runat="server"></asp:Label>
</td>
<td id="tdUp" runat="server" align="center">
</td>
<td id="tdDown" runat="server" align="center">
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center">
<img src="<%=ImgUrl%>"/>
</td> 
</tr>
</table>
</div>
</body>
</html>