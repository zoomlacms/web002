<%@ page language="C#" autoeventwireup="true" inherits="User_VideoChat_ChatRoom, App_Web_gvgo405v" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
<title>紫凝视频社区</title>
<script type="text/javascript" src="/JS/jquery.js"></script>
<style type="text/css">
*{margin:0px;padding:0px;font-size:12px;}
.clear{clear:both;}
</style>
</head>
<body style="overflow:hidden; background-color:#bbdbf3; ">
<div id="L" style="float:left;">
  <div id="L_T" style="background-color:#fff; position:relative; top:5px; left:2px; border:1px solid #4ca2e1;"></div>
  <div id="L_B" style="background-color:#fff; position:relative; top:10px; left:2px; border:1px solid #4ca2e1;">
    <div id="L_B_T" style="height:26px;background:url(images/skin/1/l_b_t.jpg) repeat-x;">
      <div id="switch" onclick="resize(this)" title="麦序展开" style=" height:8px; width:8px; background:url(images/skin/1/kai.gif) no-repeat;cursor:pointer; position:relative;"></div>
    </div>
  </div>
</div>
<div id="R" style="float:left;">
  <div id="R_T" style=" border:1px solid #4ca2e1; position:relative; top:5px; left:3px;">
  <div style="height:220px;"><iframe id="video" src="video/bin-debug/TV2.html" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%"></iframe>
  
  
  </div><div><iframe id="ContentBox" src="video/bin-debug/ContentBox.html" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%"></iframe></div>
  </div>
  <div id="R_B" style=" position:relative; top:10px; left:3px; border:1px solid #4ca2e1;">
  <iframe id="Iframe1" src="video/bin-debug/option.html" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%"></iframe>
  </div>
</div>
</body>
</html>
<script type="text/javascript">
    window.onload = PageInit;
    window.onresize = PageInit;

    var marginLeft = $("#L_T").css("left").replace("px", "");
    var marginTop = $("#L_T").css("top").replace("px", "");

    var L_W = 200;                          //左边的宽
    var L_B_W = L_W - marginLeft * 2 - 2;   //左下面的宽
    var L_B_H = 130;                        //下面的高
    var R_B_H = 130;                        //右下的高
    var L_B_T = 26;                         //左下面头部的高

    function PageInit() {
        var P_W = document.documentElement.clientWidth;
        var P_H = document.documentElement.clientHeight;
        $("#L").css("width", L_W + "px");
        $("#L").css("height", P_H + "px");
        $("#L_B").css("height", L_B_H + "px");
        $("#L_B").css("width", L_B_W + "px");
        $("#L_T").css("height", P_H - L_B_H - marginTop * 2 - 4 + "px");
        $("#L_T").css("width", L_B_W + "px");

        $("#R").css("width", P_W - L_W + "px");
        $("#R").css("height", P_H + "px");
        $("#R_B").css("height", R_B_H + "px");
        $("#R_B").css("width", P_W - L_W - marginLeft * 2 - 2 + "px");
        $("#R_T").css("height", P_H - R_B_H - marginTop * 2 - 4 + "px");
        $("#R_T").css("width", P_W - L_W - marginLeft * 2 - 2 + "px");

        $("#switch").css("top", (L_B_T - 8) / 2 + "px");
        $("#switch").css("left", L_W - 20 + "px");
    }
    function resize(obj) {
        if (obj.title == "麦序展开") {
            $("#" + obj.id).attr("title", "麦序收起");
            $("#" + obj.id).css("background", "url(images/skin/1/shou.gif) no-repeat")
            L_B_H = 240;
            $("#L_B").height(L_B_H);
        } else if (obj.title == "麦序收起") {
            $("#" + obj.id).attr("title", "麦序展开");
            $("#" + obj.id).css("background", "url(images/skin/1/kai.gif) no-repeat")
            L_B_H = 130;
            $("#L_B").height(L_B_H);
        }
        PageInit();
    }
    //    var MainPad = $(window.parent.document).contents().find("#MainPad")[0].contentWindow;
    //    var SlidePad = $(window.parent.document).contents().find("#SlidePad")[0].contentWindow;
    //    var LeftPad = $(window.parent.document).contents().find("#LeftPad")[0].contentWindow;
    //    var RightPad = $(window.parent.document).contents().find("#RightPad")[0].contentWindow;
</script>