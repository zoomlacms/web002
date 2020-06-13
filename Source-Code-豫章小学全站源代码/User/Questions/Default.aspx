<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_Default, App_Web_vlyb51rz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>我的课程</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript">
    function gotourl(url) {
        try {
            parent.MDIOpen(url); void (0);
        } catch (Error) {
            parent.frames["I2"].location = "../../" + url; void (0);
        }
    }
</script>
</head>
<body>
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; <a href="Default.aspx">我的课程</a>
</div>
<div class="s_body" style=" width:100%">
<div class="s_bleft" style=" width:20%; float: left;">
<iframe frameborder="0" width="100%" height="800px" src="TreeNode.aspx?Type=1" scrolling="auto" id="I1" name="I1"></iframe>
</div>
<div style="width: 80%; float: left">
<iframe id="I2" style="border-style: none; border-color: inherit; border-width: 0px; width: 100%;" height="800px" src="MyCoruse.aspx" frameborder="0" scrolling="no" name="I2"></iframe>
</div>
</div>
</body>
</html>