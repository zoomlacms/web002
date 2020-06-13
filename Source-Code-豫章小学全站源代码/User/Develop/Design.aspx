<%@ page language="C#" autoeventwireup="true" inherits="_Design, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
<title>首页_<%Call.Label("{ZL.Label id=\"站名\" UserID=\"1\" /}"); %></title>
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
            $("#mask").append(borderhtml);
        })
        $("#boxCover").mousemove(function (event) {
            var wd = 0;
            var hd = 0;
            if (event.pageX > startX && event.pageY > startY) {
                wd = event.pageX - startX;
                hd = event.pageY - startY;
                $("#mask").width(wd);
                $("#mask").height(hd);
            } else {
            }
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
<body onload="PageOnLoad()" ondragstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=true" onselectstart="event.returnValue=false">
    <div id="bd" runat="server">
        <div id="main" style="position: relative;" runat="server"></div>
    </div>
<div style="display:none;">
<div id="HideContent"></div>
<div id="OverflowVal"></div>
<div id="DisplayVal"></div>
<div id="txtNodeID" runat="server"></div>
</div>
</body>
</html>
<script type="text/javascript">
    function sub() {
        //var len = $("#main").children().length;
        var len = document.getElementById("main").childNodes.length;
        //alert(len)
        var strStyle = "";
        for (var i = 0; i < len; i++) {
            var top = parseInt(document.getElementById("main").childNodes[i].style.top);
            var left = parseInt(document.getElementById("main").childNodes[i].style.left);
            var width = parseInt(document.getElementById("main").childNodes[i].style.width);
            var height = parseInt(document.getElementById("main").childNodes[i].style.height);
            strStyle += document.getElementById("main").childNodes[i].getAttribute("id") + "^" + top + "," + left + "," + width + "," + height + "|";
        }
        strStyle = strStyle.substr(0, strStyle.length - 1);
        //alert(strStyle);
        tjAjax("Design.aspx?status=1&style=" + strStyle + "&NodeID=" + txtNodeID.innerHTML);
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
    function tjAjax(url) {
        if (!req) {
            createre();
        }
        req.onreadystatechange = callback; //指定回调函数
        req.open("get", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
        req.send(null); //
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
                        CreateModelCli(mid, mtop, mleft, mwidth, mheight);
                        $("#" + mid + " .popcontent").html(STemp[4]);
                        if (STemp[5] != "") {
                            $("#" + mid).css("background", "url(" + STemp[5] + ") no-repeat center");
                        }
                    }
                }
                if (strTemp[0] == "1") {
                    alert("保存成功")
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
</script>
<script type="text/javascript">
    function PageOnLoad() {
        $("#main").html("");
        tjAjax("Design.aspx?_dc=" + new Date().getTime() + "&status=0&NodeID=" + txtNodeID.innerHTML);
    }
    function AddContent() {
        //var text = escape($("#txt_content").text());
        var text = escape(ContStr);
        //var OverflowStr=
        tjAjax("Design.aspx?status=AddContent&content=" + text + "&NodeID=" + txtNodeID.innerHTML);
    }
    function AddStyle() {
        var overflowArr = document.getElementsByName("StyleOverflow");
        //alert(overflowStr)
        for (var i = 0; i < overflowArr.length; i++) {
            if (overflowArr[i].checked == true) {
                var overflowStr = overflowArr[i].value;
                document.getElementById("OverflowVal").innerHTML = overflowStr;
                //alert(overflowStr)
            }
        }
        var displayArr = document.getElementsByName("StyleDisplay");
        for (var i = 0; i < displayArr.length; i++) {
            if (displayArr[i].checked == true) {
                var displayStr = displayArr[i].value;
                document.getElementById("DisplayVal").innerHTML = displayStr;
            }
        }
        tjAjax("Design.aspx?status=AddStyle&Overflow=" + overflowStr + "&Display=" + displayStr + "&NodeID=" + txtNodeID.innerHTML);
        //alert("Design.aspx?status=AddStyle&Overflow=" + overflowStr + "&Display=" + displayStr);
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
        var len = document.getElementById("main").childNodes.length;
        //alert("len:" + len)
        var strID = "";
        var strTemp = "";
        for (var i = 0; i < len; i++) {
            strID += document.getElementById("main").childNodes[i].getAttribute("id").substr(3) + ",";
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
    var ContStr = "";
    function sel(PObj) {
        //alert(PObj.getAttribute("value"));
        if (PObj.checked) {
            ContStr += PObj.getAttribute("value");
        } else {
            var arrStr = ContStr.split(PObj.getAttribute("value"));
            ContStr = "";
            for (var i = 0; i < arrStr.length; i++) {
                ContStr += arrStr[i];
            }
        }
        //alert(ContStr)
    }
</script>