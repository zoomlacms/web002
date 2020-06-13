<%@ page language="C#" autoeventwireup="true" inherits="BookMy, App_Web_xl1bzngw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlMy.ascx" TagName="WebUserControlMy" TagPrefix="uc1" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head>
<title>读书</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div style="margin:auto;">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent"> 会员中心</a>我的书籍
</div>
  <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc3:WebUserControlTop>
  &nbsp;&nbsp;
  <uc1:WebUserControlMy id="WebUserControlMy1" runat="server"> </uc1:WebUserControlMy>
  <br />
</div>
</body>
</html>