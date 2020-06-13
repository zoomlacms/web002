<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="content-Type" content="text/html; charset=utf-8" />
    <title>设计平台</title>
    <link type="text/css" rel="stylesheet" href="Css/global.css" />
    <link type="text/css" rel="stylesheet" href="Css/css.css" />
    <link type="text/css" rel="stylesheet" href="Css/temp.css" />
    <link type="text/css" rel="stylesheet" href="Css/popbox.css" />
    <script type="text/javascript" src="/JS/jquery.js"></script>
    <script type="text/javascript" src="Scripts/TempHepler.js"></script>
    <script type="text/javascript" src="Scripts/DivPrototype.js"></script>
    <script type="text/javascript">
        var countModel = 0;
        var isCrate = false;
        function add() {
            CreateboxCover(); //创建浮动层
            var startX = 0;
            var startY = 0;
            $("#boxCover").mousedown(function (event) {
                startX = event.pageX;
                startY = event.pageY;
                //alert(startX+":"+startY);
                $(this).append("<div id='mask'></div>");
                $("#mask").addClass("addBorder");
                $("#mask").css({ "background": "#ccE6cc", "opacity": "0.6" });
                $("#mask").css({ "position": "absolute", "top": startY, "left": startX, "z-index": 99 });
                //$("#mask").append(borderhtml);
            })
            $("#boxCover").mousemove(function (event) {
                var wd = 0;
                var hd = 0;
                if (event.pageX > startX && event.pageY > startY) {
                    wd = event.pageX - startX;
                    hd = event.pageY - startY;
                    $("#mask").width(wd);
                    $("#mask").height(hd);
                } else { }
            })
            $("#boxCover").mouseup(function () {
                countModel = GetcountModelID();
                //alert("countModel:" + countModel)
                var pos = $("#mask").position();
                var newmodel = CreateModel("div" + countModel, startY, startX, $("#mask").width(), $("#mask").height());
                modelArray.push("div" + countModel);
                $("#mask").remove();
                $("#boxCover").remove();
            });
        }
    </script>
</head>
<body style="overflow: hidden;" onload="SetNodeID();GaugeBrowser()" onclick="GetNodeID()">
    <div class="nav">
        <div class="menu">
            <ul>
                <li style="background: #666"><a href="javascript:tabs('.menu1')">网页设计</a></li>
                <li><a href="SiteAdmin/Default.aspx">网站管理</a></li>
                <li><a href="ShopDefault.aspx">商务平台</a></li>
                <li><a href="/columnlist.aspx?NodeID=77" target="_blank">帮助中心</a></li>
                <li><a href="Userinfo.aspx" target="_blank">个人基本资料</a></li>
                <li style="float: right"><a href="<%=ResolveUrl("~/User/logout.aspx") %>" style="width:80px">[退出登录]</a></li>
                <li style="float: right;"><a id="APre" href="PreView.html" target="_blank" style="width:80px">[浏览网站]</a></li>
                <li style="float: right;"><p style="width:400px; text-align:right; color:#aaa; line-height:30px">欢迎您，<%=AdminName%>，今天是<%=AdminDate%></p></li>
            </ul>
        </div>
        <div class="menu1">
            <ul>
                <li onclick="AddPage()"><a href="javascript:void(0);"><img alt="" src="images/xinyemian.png" />新页面</a></li>
                <li><a href="/User/Develop/RegSite/Step1.aspx"><img alt="" src="images\moban.png" />换模板</a></li>
                <li><a onclick="MakeTags(6)"><img alt="" src="images\tuceng.png" />图层</a></li>
                <li><a onclick="MakeTags(7)"><img alt="" src="images\banshi.png" />版式</a></li>
                <li><a onclick="MakeTags(8)"><img alt="" src="images\beijing.png" />背景</a></li>
                <li><a><img alt="" src="images\chexiao.png" /></a></li>
                <li><a><img alt="" src="images\chongzuo.png" /></a></li>
                <li id="kj">控件:</li>
                <li onclick="add()" title="创建层"><a href="javascript:void(0);">
                    <img alt="" src="images\pluginHtmlEditor.png" />创建层</a></li>
                <li><%--<a href="/User/UserZone/Pic/AddPicCateg.aspx" target="iframename">--%>
                     <a onclick="MakeTags(3)" target="iframename">
                    <!-- onclick="addPho()" title="创建层"-->
                    <img alt="" src="images\photoalbum_GraySidePhotoAlbum.png" />新相册</a></li>
                <li><a onclick="MakeTags(4)">
                    <img alt="" src="images\table_0.png" />布局</a></li>
                <li><a onclick="MakeTags(11)" target="iframename">
                    <img alt="系统" src="images\pluginMapabc.png" />系统</a></li>
                <li><%--<a href="/User/Pages/Default.aspx" target="iframename">--%>
                    <a onclick="MakeTags(2)" target="iframename">
                    <img alt="文章列表" src="images\article_articledoc.png" />文章列表</a></li>
                <li><%--<a href="AppStore.aspx" target="_blank">--%>
                    <a onclick="MakeTags(1)" target="_blank">
                    <img alt="" src="images\productListIcon.gif" />商品列表</a></li>
                <li><a onclick="MakeTags(9)" target="iframename">
                    <img alt="" src="images\plugindeploy_pluginMapabc.png" />在线地图</a></li>
                <li><a onclick="MakeTags(5)" target="iframename">
                    <img alt="" src="images\weather.png" />天气预报</a></li>
                <%--<li style="float: right;"><a href="PreView.html" target="_blank">
                    <img alt="浏览前请先保存" src="images/001_38.png" />浏览网页</a></li>--%>
                <li style="float: right;" onclick='sub("save")'><a href="javascript:void(0);">
                    <img alt="" src="images/fabu.png" />保存</a></li>
            </ul>
        </div>
        <div class="clear">
        </div>
    </div>
    <div id="operation" style="display: none;">
        <input type="button" value="创建层" onclick="add()" style="margin: 3px auto; cursor: pointer;" />
    </div>
    <div>
        <div id="mainL">
            <iframe id="ifL" name="ifL" src="List.aspx" width="100%" height="100%"></iframe>
        </div>
        <div id="mainr" style="float:left;" runat="server">
            <iframe id="ifr" name="iframename" width="100%" height="100%" ></iframe>
        </div>
        <div id="mainright" style="float:right; width:150px;">
            <iframe id="Ifright" name="Ifright" src="tags.aspx" width="100%" height="100%"></iframe>
        </div>
    </div>
    <div style="display: none;">
        <div id="HideContent">
        </div>
        <div id="txtNodeID" runat="server">
        </div>
    </div>
       <input type="hidden" id="htag" name="htag" />
</body>
</html>
<script type="text/javascript">
    function sub(pMark) {
        GetNodeID();
        //var len = $("#main").children().length;
        //var len = document.getElementById("main").childNodes.length;
        var po = $(window.frames["ifr"].document);
        var pobj = po.find("#main > .divbg8");
        var len = pobj.length;
        //alert(len);
        var strStyle = "";
        for (var i = 1; i <= len; i++) {
            var top = parseInt(po.find("#main > .divbg8:nth-child(" + i + ")").css("top"));
            var left = parseInt(po.find("#main > .divbg8:nth-child(" + i + ")").css("left"));
            var width = parseInt(po.find("#main > .divbg8:nth-child(" + i + ")").css("width"));
            var height = parseInt(po.find("#main > .divbg8:nth-child(" + i + ")").css("height"));
            strStyle += po.find("#main > .divbg8:nth-child(" + i + ")").attr("id") + "^" + top + "," + left + "," + width + "," + height + "|";
        }
        strStyle = strStyle.substr(0, strStyle.length - 1);
        //alert("Default.aspx?status=1&style=" + strStyle + "&NodeID=" + txtNodeID.innerHTML);
        tjAjax("Default.aspx?status=1&style=" + strStyle + "&NodeID=" + txtNodeID.innerHTML + "&mark=" + pMark);
    }
</script>
<script type="text/javascript">
    var req; var STemp;
    var AJAXflag = false;
    function createre() {
        //创建XMLHttpRequest实例
        if (window.XMLHttpRequest) {   //Mozilla 浏览器
            req = new XMLHttpRequest();
            if (req.overrideMimeType) {//设置MiME类别
                req.overrideMimeType("text/xml");
            }
        } else if (window.ActiveXObject) { // IE浏览器
            try {
                req = new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e) {
                try {
                    req = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (e) {
                }
            }
        }
        if (!req) { // 异常,创建对象实例失败
            //"不能创建XMLHttpRequest对象实例"
            window.alert("不能创建XMLHttpRequest对象实例..");
            return false;
        }
    }
    function callback() //回调函数，对服务端的响应处理，监视response状态
    {
        if (req.readyState == 4) {
            if (req.status == 200) //http状态200表示OK
            {
                AjAXflag = true;
                //alert(req.responseText);
                var strTemp = req.responseText.split('&');
                if (strTemp[0] == "0") {
                    var labelCount = strTemp[1].split('|');
                    var strDiv;
                    var mid;
                    var mtop;
                    var mleft;
                    var mwidth;
                    var mheight;
                    for (var i in labelCount) {
                        div = labelCount[i].split('^');
                        mid = div[0];
                        STemp = div[1].split(',');
                        mtop = parseInt(STemp[0]) + $("#main").offset().top;
                        mleft = parseInt(STemp[1]) + $("#main").offset().left;
                        mwidth = parseInt(STemp[2]);
                        mheight = parseInt(STemp[3]);
                        CreateModel(mid, mtop, mleft, mwidth, mheight);
                        $("#" + mid + " .popcontent").html(STemp[4]);
                    }
                }
                if (strTemp[0] == "1") {
                    alert(strTemp[1]);
                }
                if (strTemp[0] == "AddContent") {
                    $("#HideContent").html(strTemp[1]);
                }
            }
            else //http返回状态失败
            {
                alert("操作失败！");
            }
        }
        else //请求状态还没有成功，页面等待
        {
        }
    }
    function tjAjax(url) {
        if (!req) {
            createre();
        }
        req.onreadystatechange = callback; //指定回调函数
        req.open("get", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
        req.send(null); //
    }
</script>
<script type="text/javascript">
    function PageOnLoad() {
        tjAjax(window.location.href + "?_dc=" + new Date().getTime() + "&status=0");
    }
    function AddContent() {
        var text = escape($("#txt_content").text());
        tjAjax(window.location.href + "?status=AddContent&content=" + text);
    }
</script>
<script type="text/javascript">
    /*
    *
    *   判断在数组中是否含有给定的一个变量值
    *   参数：
    *   needle：需要查询的值
    *   haystack：被查询的数组
    *   在haystack中查询needle是否存在，如果找到返回true，否则返回false。
    *   此函数只能对字符和数字有效
    *
    */
    function in_array(needle, haystack) {
        // 得到needle的类型
        var type = typeof needle;
        if (type == 'string' || type == 'number') {
            for (var i in haystack) {
                if (haystack[i] == needle) { return true; }
            }
        } return false;
    }
    function GetcountModelID() {
        //var len = $("#main").children().length;
        //$("#testId", document.frames("iframename").document);
        //subwindow.getElementById(id);
        var PObj = document.getElementById("ifr").contentWindow.document.getElementById("main");
        var len = PObj.childNodes.length;
        //var len = document.getElementById("main").childNodes.length;
        //alert("len:" + len)
        var strID = "";
        var strTemp = "";
        for (var i = 0; i < len; i++) {
            strID += PObj.childNodes[i].getAttribute("id").substr(3) + ",";
        }
        strID = strID.substr(0, strID.length - 1);
        var strArray = strID.split(',');
        //alert(strID)
        for (var i = 1; i < len + 2; i++) {
            if (in_array(i, strArray)) { continue; }
            else { return i }
        }
    }
</script>
<script type="text/javascript">
    GetHeight();
    window.onresize = GetHeight;
    function GetHeight() {
        //为iframe定义高度
        var ifrHeight = document.documentElement.clientHeight - 60;
        var ifrWidth = document.documentElement.clientWidth - 311;
        $("#mainr").height(ifrHeight);
        $("#mainL").height(ifrHeight);
        $("#mainright").height(ifrHeight);
        $("#mainr").width(ifrWidth);
    }
    function SetNodeID() {
        $("#ifr").attr("src", "Design.aspx?NodeID=" + txtNodeID.innerHTML);
    }
    function GetNodeID() {
        var obj = document.getElementById("ifr").contentWindow;
        var obj1 = obj.document.getElementById("txtNodeID");
        var val = eval(obj1).innerHTML;
        txtNodeID.innerHTML = val;
    }
</script>
<script type="text/javascript">
    function AddPage() {
        CreateboxCover1(800);
        $.get("AddPage.aspx?_dc=" + new Date().getTime(), function (data) {
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
function MakeTags(obj) {
    $("#Ifright").attr("src", "tags.aspx?groupid="+obj);
}
function TakeDiv(TageTitle, backimg) {
    var objectid = $("#htag").val(); //层的名字
    if (objectid.replace(/(^\s*)|(\s*$)/g, "").length > 0) {
        var SetTitle = TageTitle.split('$');
        var Ttitle = TageTitle; //标签名字
        for (var i = 0; i < SetTitle.length; i++) {
            Ttitle = Ttitle.replace('$', '"');
        }
        $(frames["ifr"].document.getElementById("" + objectid + "popcontent")).html(Ttitle); //给相应的层赋值标签
        $(frames["ifr"].document.getElementById("" + objectid + "")).css('background-image', 'url(' + backimg + ')');
        $(frames["ifr"].document.getElementById("" + objectid + "")).css('background-repeat', 'no-repeat');
        $(frames["ifr"].document.getElementById("" + objectid + "")).css('background-position', 'center');
        var Nodelid = frames["ifr"].document.getElementById("txtNodeID").innerHTML; //节点id
        $.get('/User/Develop/ashx/UserTage.ashx?mt=' + new Date().getTime() + '&v2=updat&nodeid=' + Nodelid + '&divname=' + objectid + '&tagetitle=' + escape(Ttitle) + '&imgpath=' + escape(backimg), function (data) {
        });
    } else {
        alert("请点击您要编辑的层");
    }
}
</script>
<script type="text/javascript">
    function ClickPreView() {//获取NodeID并把，NodeID绑到预览页面界面
        var NodeID = iframename.document.getElementById("txtNodeID").innerHTML;
        $("#APre").attr("href", "/User/Develop/PreView.html?NodeID=" + NodeID);
    }
</script>