<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_ShopDefault, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商务平台</title>
<link type="text/css" rel="stylesheet" href="Css/global.css" />
<link type="text/css" rel="stylesheet" href="Css/css.css" />
<link type="text/css" rel="stylesheet" href="Css/temp.css" />
<link type="text/css" rel="stylesheet" href="Css/popbox.css" />
<script type="text/javascript" src="Scripts/TempHepler.js"></script>
</head>
<body onload="GetHeight();GaugeBrowser()" style="overflow: hidden;">
    <div class="nav">
        <div class="menu">
            <ul>
                <li><a href="Default.aspx">网页设计</a></li>
                <li><a href="SiteAdmin/Default.aspx">网站管理</a></li>
                <li style=" background:#666"><a href="ShopDefault.aspx">商务平台</a></li>
                <li><a href="/columnlist.aspx?NodeID=77" target="_blank">帮助中心</a></li>
                <li><a href="Userinfo.aspx">个人基本资料</a></li>
                <li style="float:right"><a href="../logout.aspx" style="width:80px">[退出登录]</a></li>
                <li style="float: right;"><a href="/User/Develop/PreView.html" target="_blank" style="width:80px">[浏览网站]</a></li>
                <li style="float: right;"><p style="width:400px; text-align:right; color:#aaa; line-height:30px">欢迎您，<%=AdminName%>，今天是<%=AdminDate%></p></li>
            </ul>
        </div>
        <div class="menu3" style="display: block;">
            <ul>
                <li style="width: 60px"><a href="busiDefault.html" target="iframename">
                    <img alt="" src="images\homepage.png" />首页</a></li>
                <li style="width: 60px;display:none;" id="l1" runat="server"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=2" target="iframename">
                    <img alt="" src="images\article.png" />文章</a></li>
                <li style="width: 60px;display:none;" id="l2" runat="server"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=6" target="iframename">
                    <img alt="" src="images\goods.png" />商品</a></li>
                <li style="width: 60px;display:none;" id="l3" runat="server"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=3" target="iframename">
                    <img alt="" src="images\photograllypng.png" />相册</a></li>
                <li style="width: 60px;display:none;" id="l4" runat="server"><a href="#">
                    <img alt="" src="images\formlist.png" />表单</a></li>
                <li style="width: 60px;display:none;" id="l5" runat="server"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=95" target="iframename">
                    <img alt="" src="images\message.png" />留言</a></li>
                <li style="width: 60px;display:none;" id="l6" runat="server"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=96" target="iframename">
                    <img alt="" src="images\bbs.png" />论坛</a></li>
                <li style="width: 60px;display:none;" id="l7" runat="server"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=97" target="iframename">
                    <img alt="" src="images\orderist.png" />订单</a></li>
                <li style="width: 60px;display:none;" id="l8" runat="server"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=98" target="iframename">
                    <img alt="" src="images\shoping.png" />购物</a></li>
                <li style="width: 60px"><a href="/User/Develop/SiteAdmin/Member.aspx" target="iframename">
                    <img alt="" src="images\guest.png" />会员</a></li>
                <li style="width: 60px"><a href="/User/Develop/Business/Administrator.aspx" target="iframename">
                    <img alt="" src="images\Colleagues.png" />权限设置</a></li>
			   <li style="width: 60px"><a href="/User/Develop/AppStore.aspx" target="iframename">
                    <img alt="" src="images\shoping.png" />应用商城</a></li>	
            </ul>
        </div>
    </div>
    <div id="siteadmin_content">
        <iframe src="busiDefault.html" name="iframename" id="iframename" width="100%" height="100%" frameborder="0"></iframe>
    </div>
</body>
</html>
<script type="text/javascript">
    function GetHeight() {
        //为iframe定义高度
        var ifrHeight = document.documentElement.clientHeight - 90;
        document.getElementById("siteadmin_content").style.height = ifrHeight + "px";
    }
</script>
<script type="text/javascript">
    function AddPage1() {
        CreateboxCover1(400);
        $.get("BrowserPrompt.htm?_dc=" + new Date().getTime(), function (data) {
            $("#boxCover").html(data);
            $("#boxCover .floatbox").css({ "position": "absolute" });
            $("#boxCover .ftclose").click(function () { $("#boxCover").remove(); $("#boxCoverBG").remove(); });
            $("#boxCover #btncancel").click(function () { $("#boxCover").remove(); $("#boxCoverBG").remove(); });
            var pt = 0;
            var pl = 0;
            var ftobj;
            $("#boxCover .ftitle").mousedown(function (event) {
                ftobj = $("#boxCover .floatbox"); //移动对象
                ftobj.css({ "z-index": 1000 });
                pt = event.pageY - ftobj.position().top;
                pl = event.pageX - ftobj.position().left;
                $("#boxCover").bind("mousemove", function (event) {
                    ftobj = $("#boxCover .floatbox");
                    var nt = event.pageY - pt;
                    var nl = event.pageX - pl;
                    ftobj.css({ "top": nt, "left": nl });
                });
            });
            $("#boxCover").mouseup(function () {
                $(this).unbind("mousemove");
            });
        });
    }
</script>
<script type="text/javascript">
    function GaugeBrowser() {
        var sUsrAgent = navigator.userAgent;
        var isIE = sUsrAgent.indexOf("MSIE") != -1;
        var isIE6 = isIE && sUsrAgent.indexOf("MSIE 6.0") != -1;
        var isIE7 = isIE && sUsrAgent.indexOf("MSIE 7.0") != -1;
        var isIE8 = isIE && sUsrAgent.indexOf("MSIE 8.0") != -1;
        var isIE9 = isIE && sUsrAgent.indexOf("MSIE 9.0") != -1;
        var isFF = sUsrAgent.indexOf("Firefox") != -1;
        var isOP = sUsrAgent.indexOf("Opera") != -1;
        var isSF = sUsrAgent.indexOf("Safari") != -1
    && sUsrAgent.indexOf("Chrome") == -1;
        var isCH = sUsrAgent.indexOf("Chrome") != -1;
        if (isIE6 || isIE7 || isIE8 || isIE9) { }
        else { AddPage1(); }
    }
</script>