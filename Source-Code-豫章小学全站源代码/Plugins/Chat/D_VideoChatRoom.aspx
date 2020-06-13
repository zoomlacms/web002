<%@ page language="C#" autoeventwireup="true" inherits="User_VideoChat_D_VideoChatRoom, App_Web_gvgo405v" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>left</title>
<link rel="stylesheet" type="text/css" href="css/global.css" />
<script type="text/javascript" src="js/Adaptive.js"></script>
<script type="text/javascript" src="js/scroll.js"></script>
<script type="text/javascript" src="/JS/jquery.js"></script>
<style type="text/css">
    p
    {
        background-image: url(images/skin/1/bar.jpg);
        border: 1px solid #b2d1e8;
        height: 22px;
        line-height: 22px;
        margin: 1px;
    }
    a
    {
        display: block;
    }
</style>
</head>
<body>
    <div>
        <div id="search" >
        <div class="linenum"><span><a href="#">（点击刷新）</a></span>同时在线人数：376666</div>
        <div class="ssform"><form>
        <a href="#"><span class="selm"></span></a><input type="text" class="key"><input type="button" class="ss_btn" value="搜索"></form>
        </div>
        <div class="myroom"><b>我的房间</b></div>
        </div>
        <div class="leftmeu" style="padding:1px;">
            <p class="bottom_b"><a id="a" href="javascript:void();" onclick="set(this)" class="tab">综艺区</a></p>
            <div id="infoa" class="info" runat="server"><ul>
            <li><span class="jia w20"> </span> <span class="hico">1对的法国梵蒂冈</span></li>
            <li><span class="jia w20"> </span> <span class="hico">对方的鬼地方</span></li>
            <li><span class="jia w20"> </span> <span class="hico">1地方官方的</span></li>
            </ul></div>
            <div class="clear"></div>
            <p><a id="b" href="javascript:void();" onclick="set(this)" class="tab">情感区</a></p>
            <div class="clear"></div>
            <div id="infob" class="info" style="display: none" runat="server">*暂无数据*</div>
            <div class="clear"></div>
            <p><a id="c" href="javascript:void();" onclick="set(this)" class="tab">官方专区</a></p>
            <div class="clear">
            </div>
            <div id="infoc" class="info" style="display: none" runat="server">
                *暂无数据*
            </div>
            <p>
                <a id="d" href="javascript:void();" onclick="set(this)" class="tab">财经区</a></p>
            <div class="clear">
            </div>
            <div id="infod" class="info" style="display: none" runat="server">
                *暂无数据*
            </div>
            <p>
                <a id="e" href="javascript:void();" onclick="set(this)" class="tab">游戏区</a></p>
            <div class="clear">
            </div>
            <div id="infoe" class="info" style="display: none" runat="server">
                *暂无数据*
            </div>
            <p>
                <a id="f" href="javascript:void();" onclick="set(this)" class="tab">网络教育</a></p>
            <div class="clear">
            </div>
            <div id="infof" class="info" style="display: none" runat="server"> 
                *暂无数据*
            </div>
            <p>
                <a id="g" href="javascript:void();" onclick="set(this)" class="tab">VIP专区</a></p>
            <div class="clear">
            </div>
            <div id="infog" class="info" style="display: none" runat="server">
                *暂无数据*
            </div>
        </div>
    </div>
</body>
</html>
<script type="text/javascript">
    function set(obj) {
        var strID = "#info" + $(obj).attr("id");
        $(".info").css("display", "none");
        $(strID).css("display", "");
    }
</script>
<%--<script type="text/javascript">
    var FontEdit = $(document).contents().find("#FontEdit")[0].contentWindow;
    function TextObjectClk(obj) {
        FontEdit.TextObjectClk(obj);
    }
</script>--%>
