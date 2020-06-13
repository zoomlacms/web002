<%@ page language="C#" autoeventwireup="true" inherits="User_Info_UserInfoText, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>基本信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="us_topinfo">
您好<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>！您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt;<a href="UserInfo.aspx">账户管理</a>&gt;&gt; 基本信息</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfos" runat="server">
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
	<h1 style="text-align: center">基本信息</h1>    
	<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</body>
</html>