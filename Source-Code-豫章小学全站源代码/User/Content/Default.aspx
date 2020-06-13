<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Content.Default, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>内容管理</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function SetWinHeight(obj) {
	var win = obj;
	if (document.getElementById) {
		if (win && !window.opera) {
			if (win.contentDocument && win.contentDocument.body.offsetHeight) {
				win.height = win.contentDocument.body.offsetHeight;
				win.width = win.contentDocument.body.offsetWidth;
			}
			else if (win.Document && win.Document.body.scrollHeight) {
				win.height = win.Document.body.scrollHeight;
				win.width = win.Document.body.scrollWidth;
			}
		}
	}
}
function JumpToMain(val) {
	var objLeft = window.frames['main_left'];
	var objContent = window.frames['main_right'];
	switch (val) {
		default:
		case 1:
			try {
				objLeft.location.href = "NodeTree.aspx?t=1";
				objContent.location.href = "MyContent.aspx";
			} catch (Error)
	{ }
			break;
		case 2:
			try {
				objLeft.location.href = "NodeTree.aspx?t=2";
				objContent.location.href = "MyContent.aspx?type=UnAudit";
			} catch (Error)
	{ }
			break;
		case 3:
			try {
				objLeft.location.href = "NodeTree.aspx?t=3";
				objContent.location.href = "MyContent.aspx?type=Audit";
			} catch (Error)
	{ }
			break;
		case 4:
			try {
				objLeft.location.href = "NodeTree.aspx?t=4";
				objContent.location.href = "MyFavori.aspx";
			} catch (Error)
	{ }
			break;
		case 5:
			try {
				objLeft.location.href = "NodeTree.aspx?t=5";
				objContent.location.href = "MyComment.aspx"
			} catch (Error)
	 { }
			break;
		case 6:
			try {
				objLeft.location.href = "NodeTree.aspx?t=6";
				objContent.location.href = "Pub.aspx";
			} catch (Error)
	 { }
			break;
	}
}
</script>
</head>
<body style="width:100%">
<div class="us_topinfo" style="width: 98%">
<div class="us_pynews">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;
<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 投稿管理
</div>
<div class="cleardiv"> </div>
</div>
<div class="s_body" style=" width:100%">
<div class="s_bleft" style=" width:20%; float: left;">
    <iframe frameborder="0" width="100%" height="800px" src="NodeTree.aspx" scrolling="auto"
        id="I1" name="I1"></iframe>
</div>
<div style="width: 80%; float: left">
    <iframe id="I2" style="border-style: none; border-color: inherit; border-width: 0px;
        width: 100%;" height="800px" src="MyContent.aspx" frameborder="0" scrolling="no"
        name="I2"></iframe>
</div>
    </div>
</body>
</html>
