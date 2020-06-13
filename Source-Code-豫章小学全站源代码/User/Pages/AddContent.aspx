<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.User.Content.AddContent, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加内容</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="/js/Common.js" type="text/javascript"></script>
<script src="/js/RiQi.js" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_seta"><asp:Label ID="lblNodeName" runat="server" Text="Label"></asp:Label>&gt;&gt;添加内容：<asp:Label ID="lblAddContent" runat="server" Text="Label"></asp:Label> </div>
<div>
	<ul class="us_seta" style="margin-top: 10px;">
		<h1 style="text-align: center">
			<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
		<li style="width: 30%; float: left; line-height: 30px; text-align: right;">所属节点：
		</li>
		<li style="width: 70%; line-height: 30px">
			<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
		</li>
		<li style="width: 30%; float: left; line-height: 30px; text-align: right">内容标题：</li>
		<li style="width: 70%; line-height: 30px">
			<asp:TextBox ID="txtTitle" runat="server" Text='' Width="35%" MaxLength="30"></asp:TextBox>
			<span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
				runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTitle">内容标题必填</asp:RequiredFieldValidator>
		</li>
		<li style="width: 100%;">
			<asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
		</li>
		<li></li>
		<li style="width: 70%; float: left; line-height: 30px; text-align: right;">
			<asp:HiddenField ID="HdnNode" runat="server" />
			<asp:HiddenField ID="HdnModel" runat="server" />
			<asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
			<asp:Button ID="EBtnSubmit" Text="添加项目" OnClick="EBtnSubmit_Click" runat="server" />
			&nbsp;
			<asp:Button ID="BtnBack" runat="server" Text="返　回" OnClick="BtnBack_Click" UseSubmitBehavior="False"  CausesValidation="False" />
		</li>
		<li style="width: 100%; line-height: 30px"></li>
	</ul>
</div>
</form>
</body>
</html>