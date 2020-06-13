<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.MessageSend, App_Web_4fbteau0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发送短消息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">  
<div class="us_topinfo">
	您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; <a title="短消息管理" href="/User/Message/MessageSend.aspx">发送短信</a>
</div>

<div class="us_topinfo">
<ul>
<li><a href="MessageSend.aspx">写短消息</a></li>
<li><a href="Message.aspx">收件箱</a></li>
<li><a href="MessageOutbox.aspx">发件箱</a></li>
<li><a href="MessageDraftbox.aspx">草稿箱</a></li>
<li><a href="MessageGarbagebox.aspx">垃圾箱</a></li>
<li><a href="Mobile.aspx">手机短信</a></li>
</ul>
</div>

<div style="margin-top:10px;">
	<div class="us_seta" style="margin-top:5px;">
		<h1><div align="center">发送网站短消息</div></h1>
		<table width="95%" style="line-height:25px; ">
		<tr><td align="right" width="25%">收件人：</td><td width="75%" align="left"><asp:TextBox ID="TxtInceptUser" runat="server" Width="333px" class="l_input"></asp:TextBox></td></tr>
		<tr><td  align="right">短消息主题：</td><td align="left"><asp:TextBox ID="TxtTitle" runat="server" Width="300px" class="l_input"></asp:TextBox><asp:RequiredFieldValidator ID="ValrTitle" runat="server" ControlToValidate="TxtTitle" ErrorMessage="短消息主题不能为空" Display="Dynamic">*</asp:RequiredFieldValidator></td></tr>
		<tr><td  align="right">短消息内容：</td><td align="left"><asp:TextBox  ID="EditorContent" runat="server" Rows="10" TextMode="MultiLine"      Width="100%" class="l_input" Height="300px"></asp:TextBox><asp:RequiredFieldValidator ID="ValrContent" runat="server" ControlToValidate="EditorContent"   ErrorMessage="短消息内容不能为空" Display="Dynamic">*</asp:RequiredFieldValidator></td></tr>
			<tr><td colspan="2" align="center"><asp:HiddenField ID="HdnMessageID" runat="server" />&nbsp;
			<asp:Button ID="BtnSend" runat="server" Text="发送" OnClick="BtnSend_Click"  class="C_input"/>&nbsp;
				<asp:Button ID="Button1" runat="server" Text="存草稿" class="C_input" onclick="Button1_Click"  />&nbsp; 
			<asp:Button ID="BtnReset" runat="server" Text="清除" class="C_input" OnClick="BtnReset_Click" /></td></tr>
		<tr><td colspan="2" align="center"> <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" /></td></tr>  </table>
	<div align="center"></div>
	</div>
</div>
</form>
</body>
</html>