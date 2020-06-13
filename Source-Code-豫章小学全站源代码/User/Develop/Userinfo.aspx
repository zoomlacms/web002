<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_Userinfo, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>设计模板</title>
<link type="text/css" rel="stylesheet" href="Css/global.css" />
<link type="text/css" rel="stylesheet" href="Css/css.css" />
<link type="text/css" rel="stylesheet" href="Css/temp.css" />
<link type="text/css" rel="stylesheet" href="Css/popbox.css" />
<script type="text/javascript" src="/JS/jquery.js"></script>
</head>
<body style="overflow:hidden">
    <div class="nav">
        <div class="menu">
            <ul>
                <li><a href="Default.aspx">网页设计</a></li>
                <li><a href="SiteAdmin/Default.aspx">网站管理</a></li>
                <li><a href="ShopDefault.aspx">商务平台</a></li>
                <li><a href="/columnlist.aspx?NodeID=77" target="_blank">帮助中心</a></li>
                <li><a href="Userinfo.aspx">个人基本资料</a></li>
                <li style="float: right"><a href="../logout.aspx" style="width: 80px">[退出登录]</a></li>
                <li style="float: right;"><a href="/User/Develop/PreView.html" target="_blank" style="width: 80px">[浏览网站]</a></li>
                <li style="float: right;">
                    <p style="width: 400px; text-align: right; color: #aaa; line-height: 30px">欢迎您，<%=AdminName%>，今天是<%=AdminDate%></p>
                </li>
            </ul>
        </div>
        <div class="menu3" style="display: block;">
            <ul>
                <li style="width: 60px"><a href="/user/info/UserInfo.aspx" target="iframename">
                    <img alt="" src="images/homepage.png" />基本信息</a></li>
                <li style="width: 60px"><a href="/User/Info/UserBase.aspx" target="iframename">
                    <img alt="" src="images/basicmanguage.png" />资料设置</a></li>
                <li style="width: 60px"><a href="/user/Info/MoneyInfo.aspx" target="iframename">
                    <img alt="" src="images/money.png" />财务管理</a></li>
                <li style="width: 60px"><a href="/User/Content/MyFavori.aspx?type=1" target="iframename">
                    <img alt="" src="images/money.png" />网址收藏</a></li>
                <li style="width: 60px"><a href="/User/Message/Message.aspx" target="iframename">
                    <img alt="" src="/User/Develop/images/Colleagues.png" />用户消息</a></li>
                <li style="width: 60px"><a href="/User/UserZone/Cut/" target="_blank">
                    <img alt="" src="/App_Themes/AdminDefaultTheme/images/clipWeb.gif" />网页剪刀</a></li>
            </ul>
        </div>
    </div>
    <div id="mainr" runat="server" style="width:980px; margin:auto; clear:both;">
        <iframe id="ifr" name="iframename" src="/User/Info/UserInfo.aspx" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%" ></iframe>
    </div>
</body>
</html>
<script type="text/javascript">
    SetIfrSize();
    window.onresize = SetIfrSize; 
    function SetIfrSize() {
        var ifrHeight = document.documentElement.clientHeight - 90;
        $("#mainr").height(ifrHeight);
    }
</script>