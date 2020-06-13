<%@ page language="C#" autoeventwireup="true" inherits="User_Content_IRelease, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE>
<html>
<head>
<title>我的发布</title>
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
<script type="text/javascript">
    var status = 1000;
    var surl = "../../User/Content/MyContent.aspx?aa=a";
 
    function MDIOpen(url) {
        surl = url;
        b = true;
        surl = "../../" + surl;
        status = 1000;
        document.getElementById("content").src = surl;
    }
    function ShowStatus(num) {
        status = num;
        if (status == 1000) {
            document.getElementById("content").src = surl;
        } else {
            document.getElementById("content").src = surl + "&status=" + status;
        }
    }
</script>

</head>
<body style="width:100%">
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
<div class="us_pynews">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;
<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 竞标管理&nbsp;&nbsp;
</div>
<div class="cleardiv"></div>
</div>
<div class="s_body" style=" width:100%">
<div class="s_bleft" style=" width:20%; float: left;">
    <iframe frameborder="0" width="100%" height="800px" src="ReleaseNodeTree.aspx" scrolling="auto" id="I1" name="I1"></iframe>
</div>
<div style="width: 80%; float: left">
    <iframe id="content" style="border-style: none; border-color: inherit; border-width: 0px;  width: 100%;" height="800px" src="ReleaseManager.aspx" frameborder="0" scrolling="auto" name="I2"></iframe>
</div>
</div>
</form>
</body>
</html>
