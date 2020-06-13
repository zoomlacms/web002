<%@ page language="C#" autoeventwireup="true" inherits="User_VideoChat_D_Rooms, App_Web_gvgo405v" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>视频大厅</title>
<link rel="stylesheet" type="text/css" href="css/global.css" />
<script type="text/javascript" src="../../js/jquery.js"></script>
</head>
<body>
<div>
<div class="m_tab"><b>视频大厅</b></div>
<div class="active_t">
<a href="#" class="m_left"></a>
<a href="#" class="m_right"></a>
<a href="#" class="m_close"></a>
<a href="#" class="m_reset"></a>
<a href="#" class="m_home"></a>
<a href="#" class="m_speak"></a>
</div>
<div id="Rooms" runat="server"></div>
</div>
</body>
</html>
<script type="text/javascript" language="javascript">
    var bgOgj;
    var msgObj;
    function alertWin(w, h, UserName, RoomID, VideoHallID) {
        var title = "房间密码";
        var msg = "请输入房间的密码:<br/><br/><input id='psd' type='text' />";
        var bottom = "<input type=\"button\" id=\"sure\" value=\"确定\" onclick='aa(" + RoomID + ",\"" + UserName + "\");window.close();'  style=\"width:70px;height:20px;background-color:#B5D7F7;\"/> <input type=\"button\" id=\"Cancel\" value=\"取消\" onclick='exit(" + VideoHallID + ");' style=\"width:70px;height:20px;background-color:#B5D7F7;\"/>";
        var titleheight = "22px"; // 提示窗口标题高度 
        var bordercolor = "#52A6E7"; // 提示窗口的边框颜色 
        var titlecolor = "#18659C"; // 提示窗口的标题颜色 
        var titlebgcolor = "#BDDFF7"; // 提示窗口的标题背景色 
        var bgcolor = "#E7F7FF"; // 提示内容的背景色 

        var iWidth = document.documentElement.clientWidth;
        var iHeight = document.documentElement.clientHeight;
        bgObj = document.createElement("div");
        bgObj.style.cssText = "position:absolute;left:0px;top:0px;width:" + iWidth + "px;height:" + Math.max(document.body.clientHeight, iHeight) + "px;filter:Alpha(Opacity=30);opacity:0.3;background-color:#ffffff;z-index:101;";
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
            document.body.removeChild(bgObj);
            document.body.removeChild(msgObj);
        }
        var msgBox = table.insertRow(-1).insertCell(-1);
        msgBox.style.cssText = "font:10pt '宋体';text-align:left;padding:5px 0 0 8px;";
        msgBox.colSpan = 2;
        msgBox.innerHTML = msg;


        var bottomB = table.insertRow(-1).insertCell(-1);
        bottomB.style.cssText = "font:10pt '宋体';";
        bottomB.style.height = "25px";
        bottomB.colSpan = 2;
        bottomB.innerHTML = bottom;

        // 获得事件Event对象，用于兼容IE和FireFox 
        function getEvent() {
            return window.event || arguments.callee.caller.arguments[0];
        }
    }
    function aa(RoomID,UserName) {
        $.ajax({
            type: "POST",
            url: "D_Rooms.aspx",
            data: "action=verify&RoomID=" + RoomID + "&psd=" + $("#psd").val(),
            success: function (msg) {
                if ($("#psd").val() == msg) {
                    window.open("/Plugins/Chat/room/ChatFrame.html?UserName=" + UserName + "&RoomID=" + RoomID, "", "");
                    document.body.removeChild(bgObj);
                    document.body.removeChild(msgObj);
                }
                else {
                    alert("密码错误,请重新输入");
                }
                $("#psd").val("");

            },
            Error: function (msg) {
                alert("aaa");
            }

        });
        //        if ($("#psd").val() == ) {
        //            window.open("/User/Chat/video/bin-debug/ChatFrame.html", "", "");
        //        }
        //        else {
        //            alert("密码错误,请重新输入");
        //        }
    }
    function exit(VideoHallID) {
        window.location = "/Plugins/chat/D_Rooms.aspx?ID=" + VideoHallID;
        //window.history.back(-1); //返回上一页 
    }
    
</script> 
