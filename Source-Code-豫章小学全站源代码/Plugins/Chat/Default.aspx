<%@ page language="C#" autoeventwireup="true" inherits="User_VideoChat_Default, App_Web_gvgo405v" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title><%Call.Label("{$SiteName/}");%>_视频社区</title>
<link rel="stylesheet" type="text/css" href="css/global.css" />
<script type="text/javascript" src="/JS/jquery.js"></script>
<style type="text/css">

</style>
</head>
<body style="overflow:hidden; background:#BBDBF3;">   
<div id="T" runat="server"><iframe id="T_Pad" src="TopPage.aspx" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%" runat="server"></iframe></div>
<div id="M" style="background-color:#bbdbf3;">
    <div id="M_L" style="float:left;height:100%;">
        <div id="M_L_L" style=" background-color:#fff; position:relative; top:5px;left:4px; border:1px solid #4ca2e1;">
            <iframe id="LeftPad" src="D_VideoChatRoom.aspx" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%"></iframe>
        </div>
    </div>
    <div id="M_M" style="float:left;height:100%;"><div id="switch" onclick="resize(this)" title="关闭" style="position:relative;height:79px;background:url(images/skin/1/open.jpg);cursor:pointer;"></div></div>
    <div id="M_R" style="float:left;height:100%;">
       <div id="M_R_R" style=" position:relative; top:5px; border:1px solid #4ca2e1; background-color:#fff;">
            <iframe id="Rooms" name="Rooms" src="D_Rooms.aspx" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%"></iframe>
       </div>
    </div>
</div>
<div id="B" style="display:none;"><iframe id="B_Pad" src="BottomPage.aspx" frameborder="0" marginheight="0" marginwidth="0" width="200" height="100%"></iframe><iframe id="Iframe1" src="BottomPage.aspx" frameborder="0" marginheight="0" marginwidth="0" width="200" height="100%"></iframe></div>
</body>
</html>
<script type="text/javascript">
    window.onload = PageInit;
    window.onresize = PageInit;

    var marginLeft = $("#M_L_L").css("left").replace("px", "");
    var marginTop = $("#M_L_L").css("top").replace("px", "");

    var T_H = 114;       //top的高
    var B_H = 24;       //bottom的高
    var M_L_W = 266;    //左边的宽
    var m_L_L_W = 260;  //左边的小宽
    var M_M_W = 10;     //打开、关闭钮的宽
    function PageInit() {
        var P_W = document.documentElement.clientWidth;
        var P_H = document.documentElement.clientHeight;

        $("#T").css("height", T_H + "px");
        $("#B").css("height", B_H + "px");
        $("#M").css("height", P_H - T_H - B_H + "px");

        $("#M_L").css("width", M_L_W + "px");
        $("#M_L_L").css("width", m_L_L_W + "px");
        $("#M_L_L").css("height", P_H - T_H - B_H - marginTop * 2 - 2 + "px");

        $("#M_R").css("width", P_W - M_L_W - M_M_W + "px");
        $("#M_R_R").css("width", P_W - M_L_W - M_M_W - marginLeft - 4 + "px");
        $("#M_R_R").css("height", P_H - T_H - B_H - marginTop * 2 - 2 + "px");

        $("#switch").css("top", (($("#M").height() - 79) / 2));
        $("#switch").css("width", M_M_W + "px");
    }

    function resize(obj) {
        if (obj.title == "关闭") {
            $("#" + obj.id).attr("title", "打开");
            $("#" + obj.id).css("background", "url(images/skin/1/close.jpg)")
            $("#M_L").css("display", "none");
            M_L_W = 0;
            $("#M_L").width(M_L_W);
        } else if (obj.title == "打开") {
            $("#" + obj.id).attr("title", "关闭");
            $("#" + obj.id).css("background", "url(images/skin/1/open.jpg)")
            $("#M_L").css("display", "");
            M_L_W = 266;
            $("#M_L").width(M_L_W);
        }
        PageInit();
    }
    //    var MainPad = $(window.parent.document).contents().find("#MainPad")[0].contentWindow;
    //    var SlidePad = $(window.parent.document).contents().find("#SlidePad")[0].contentWindow;
    //    var LeftPad = $(window.parent.document).contents().find("#LeftPad")[0].contentWindow;
    //    var RightPad = $(window.parent.document).contents().find("#RightPad")[0].contentWindow;
</script>
<script language="javascript" type="text/javascript">
    var bgOgj;
    var msgObj;
    function alertWin(w, h) {
        var title = "用户登陆";
        var error = "<p id='error' style='color:red;'></p>";
        var msg = "用户名:<input id='UserName' style='width:120px;'  type='text' /><br/>";
        var pwd = "密　码:<input id='PassWord' style='width:120px;'  type='PassWord' />";
        var bottom = "<input type=\"button\" id=\"sure\" value=\"确定\" onclick='aa();'  style=\"width:70px;height:20px;background-color:#B5D7F7;\"/> <input type=\"button\" id=\"Cancel\" value=\"取消\" onclick='exit()' style=\"width:70px;height:20px;background-color:#B5D7F7;\"/>";
        var titleheight = "22px"; // 提示窗口标题高度 
        var bordercolor = "#52A6E7"; // 提示窗口的边框颜色 
        var titlecolor = "#18659C"; // 提示窗口的标题颜色 
        var titlebgcolor = "#BDDFF7"; // 提示窗口的标题背景色 
        var bgcolor = "#E7F7FF"; // 提示内容的背景色 

        var iWidth = document.documentElement.clientWidth;
        var iHeight = document.documentElement.clientHeight;
        bgObj = document.createElement("div");
        bgObj.style.cssText = "position:absolute;left:0px;top:0px;width:" + iWidth + "px;height:" + Math.max(document.body.clientHeight, iHeight) + "px;filter:Alpha(Opacity=70);opacity:0.7;background-color:#ffffff;z-index:101;";
        document.body.appendChild(bgObj);

        msgObj = document.createElement("div");
        msgObj.style.cssText = "position:absolute;font:11px '宋体';top:" + (iHeight - h) / 2 + "px;left:" + (iWidth - w) / 2 + "px;width:" + w + "px;height:" + h + "px;text-align:center;border:1px solid " + bordercolor + ";background-color:" + bgcolor + ";padding:1px;line-height:22px;z-index:102;";
        document.body.appendChild(msgObj);

        var table = document.createElement("table"); //www.divcss5.com divcss5
        msgObj.appendChild(table);
        table.style.cssText = "margin:0px;border:0px;padding:0px;";
        table.cellSpacing = 0;
        var tr = table.insertRow(-1);
        var titleBar = tr.insertCell(-1);
        titleBar.style.cssText = "width:100%;height:" + titleheight + "px;text-align:left;padding:3px;margin:0px;font:bold 13px '宋体';color:" + titlecolor + ";cursor:move;background-color:" + titlebgcolor;
        titleBar.style.paddingLeft = "10px";
        titleBar.innerHTML = title;
        var moveX = 0;
        var moveY = 0;
        var moveTop = 0;
        var moveLeft = 0;
        var moveable = false;
        var docMouseMoveEvent = document.onmousemove;
        var docMouseUpEvent = document.onmouseup;
        titleBar.onmousedown = function () {
            var evt = getEvent();
            moveable = true;
            moveX = evt.clientX;
            moveY = evt.clientY;
            moveTop = parseInt(msgObj.style.top);
            moveLeft = parseInt(msgObj.style.left);

            document.onmousemove = function () {
                if (moveable) {
                    var evt = getEvent();
                    var x = moveLeft + evt.clientX - moveX; //www.divcss5.com divcss5
                    var y = moveTop + evt.clientY - moveY;
                    if (x > 0 && (x + w < iWidth) && y > 0 && (y + h < iHeight)) {
                        msgObj.style.left = x + "px";
                        msgObj.style.top = y + "px";
                    }
                }
            };
            document.onmouseup = function () {
                if (moveable) {
                    document.onmousemove = docMouseMoveEvent; //www.divcss5.com divcss5
                    document.onmouseup = docMouseUpEvent;
                    moveable = false;
                    moveX = 0;
                    moveY = 0;
                    moveTop = 0;
                    moveLeft = 0;
                }
            };
        }

        var closeBtn = tr.insertCell(-1);
        closeBtn.style.cssText = "cursor:pointer; padding:2px;background-color:" + titlebgcolor;
        closeBtn.innerHTML = "<span style='font-size:15pt; color:" + titlecolor + ";'>×</span>";
        closeBtn.onclick = function () {
            window.close();
        }

        var errorBox = table.insertRow(-1).insertCell(-1);
        errorBox.style.cssText = "font:10pt '宋体';text-align:left;padding:5px 0 0 30px; height:12px;";
        errorBox.colSpan = 2;
        errorBox.innerHTML = error;

        var msgBox = table.insertRow(-1).insertCell(-1);
        msgBox.style.cssText = "font:10pt '宋体';text-align:left;padding:5px 0 0 30px;";
        msgBox.colSpan = 2;
        msgBox.innerHTML = msg;



        var pwdBox = table.insertRow(-1).insertCell(-1);
        pwdBox.style.cssText = "font:10pt '宋体';text-align:left;padding:5px 0 0 30px;";
        pwdBox.colSpan = 2;
        pwdBox.innerHTML = pwd;


        var bottomB = table.insertRow(-1).insertCell(-1);
        bottomB.style.cssText = "font:10pt '宋体';padding:7px 0 0 0;";
        bottomB.style.height = "25px";
        bottomB.colSpan = 2;
        bottomB.innerHTML = bottom;

        // 获得事件Event对象，用于兼容IE和FireFox 
        function getEvent() {
            return window.event || arguments.callee.caller.arguments[0];
        }
    }
    function aa() {
        $.ajax({
            type: "POST",
            url: "Default.aspx",
            data: "action=verify&UserName=" + $("#UserName").val() + "&PassWord=" + $("#PassWord").val(),
            success: function (msg) {
                if (msg == "Success") {
                    window.location = window.location.href;
                    document.body.removeChild(bgObj);
                    document.body.removeChild(msgObj);
                    //alert("登陆成功");
                }
                else {
                    $("#error").html("用户名或密码错误，请重新输入");
                    //alert("用户名或密码错误，请重新输入");
                }
            },
            Error: function (msg) {
            }
        });
        $("#UserName").val("");
        $("#PassWord").val("");
    }
    function exit() {
        window.close();
        //document.body.removeChild(bgObj);
        //document.body.removeChild(msgObj);
    }
</script> 