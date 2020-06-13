<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteAdmin_Default, App_Web_2r0iyaqk" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
<title>网站管理</title>
<link href="../Css/css.css" rel="stylesheet" type="text/css" />
<link href="../Css/global.css" rel="stylesheet" type="text/css" />
<link href="../Css/popbox.css" rel="stylesheet" type="text/css" />
<script src="/JS/jquery.js" type="text/javascript"></script>
<script src="../Scripts/DivPrototype.js" type="text/javascript"></script>
<script src="../Scripts/TempHepler.js" type="text/javascript"></script>
</head>
<body style="overflow: hidden;" onload="GetHeight();GaugeBrowser()">
    <div class="nav">
        <div class="menu">
            <ul>
                <li><a href="../Default.aspx">网页设计</a></li>
                <li style=" background:#666"><a href="Default.aspx">网站管理</a></li>
                <li><a href="../ShopDefault.aspx">商务平台</a></li>
                <li><a href="/columnlist.aspx?NodeID=77" target="_blank">帮助中心</a></li> 
                <li><a href="../Userinfo.aspx">个人基本资料</a></li>
                <li style="float:right"><a href="<%=ResolveUrl("~/User/logout.aspx") %>" style="width:80px">[退出登录]</a></li>
                <li style="float: right;"><a href="/User/Develop/PreView.html" target="_blank" style="width:80px">[浏览网站]</a></li>
                <li style="float: right;"><p style="width:400px; text-align:right; color:#aaa; line-height:30px">欢迎您，<%=AdminName%>，今天是<%=AdminDate%></p></li>
            </ul>
        </div>
        <div haslayout="ture" class="menu2" style="display: block">
            <ul>
                <li><a href="Default.aspx">
                    <img alt="" src="../images/homepage.png" /><span>首页</span></a></li>
                <li><a href="#">
                    <img alt="" src="../images/webmanguage.png" />网页管理</a></li>
                <li><a href="../Model/siteinfobase.aspx" target="ifra">
                    <img alt="" src="../images/basicmanguage.png" />基本设置</a></li>
                       <li><a href="/ColumnList.aspx?NodeID=227" target="ifra">
                    <img alt="" src="../images/basicmanguage.png" />语言版本 </a></li>
                <li><a href="/user/Develop/InsertUrlRewr.aspx" target="ifra">
                    <img alt="" src="../images/bindname.png" />绑定域名</a></li>
                <li><a href="Counter.aspx" target="ifra">
                    <img alt="" src="../images/TrafficStatistics.png" />流量统计</a></li>
                <li><a href="BackupSite.aspx" target="ifra">
                    <img alt="" src="../images/webbackup.png" />网站备份</a></li>
                <li><a href="/ColumnList.aspx?NodeID=193" target="ifra">
                    <img alt="" src="../images/state.png" />网站状态</a></li>
                <li><a href="SEOIntro.html" target="ifra">
                    <img alt="" src="../images/seoIntroduction.png" />SEO介绍</a></li>
                <li><a href="SEOCenter.aspx" target="ifra">
                    <img alt="" src="../images/seomanage.png" />SEO设置</a></li>
                <li><a href="SEOTool.html" target="ifra">
                    <img alt="" src="../images/seotools.png" />SEO工具</a></li>
                <li><a href="../wap/Default.aspx" target="ifra">
                    <img alt="" src="../images/mphone_0.png" />手机网站</a></li>
                <li><a href="../Model/MyMap.aspx" target="ifra">
                    <img alt="" src="../images/map_icon.gif" />地图管理</a></li>
                <li><a href="UploadFile.aspx" target="ifra">
                    <img alt="" src="../images/article.png" />文件管理</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
    <div id="operation" style="display: none;">
        <input type="button" value="创建层" onclick="add()" style="margin: 3px auto; cursor: pointer;" />
    </div>
    <%--******************top1**************************--%>
    <div id="mainr">
        <iframe id="ifra" name="ifra" src="../SiteManagement.aspx" width="100%" height="100%" frameborder="0"></iframe>
    </div>
</body>
</html>
<script type="text/javascript">
    function GetHeight() {
        //为iframe定义高度
        var ifrHeight = document.documentElement.clientHeight - 90;
        $("#mainr").height(ifrHeight);
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
        if (isIE6 || isIE7 || isIE8 || isIE9) {}
        else { AddPage1(); }
    }
</script>