//JavaScript Document
//模型辅助js
var borderhtml = "<span class='rleftUp' title='单击后拖动鼠标改变大小'><img  src='/User/Develop/Images/round.gif'></span><span class='rleftDown' title='单击后拖动鼠标改变大小'><img src='/User/Develop/Images/round.gif'></span><span class='rrightUp' title='单击后拖动鼠标改变大小'><img  src='/User/Develop/Images/round.gif'></span><span class='rrightDown'  title='单击后拖动鼠标改变大小' ><img  src='/User/Develop/Images/round.gif'></span>";
//创建浮动层
function CreateboxCover() {
    $("body").append("<div id='boxCover'></div>");
        var dw = $(document).width();
        var dh = $(document).height();
//    var dw = "0px";
//    var dh = "0px";
    $("#boxCover").css("width", dw);
    $("#boxCover").css("height", dh);
    $("#boxCover").css({ "position": "absolute", "top": "0px", "left": "0px", "z-index": 999, "cursor": "crosshair" });
}
function CreateboxCover1(pWidth) {
    $("body").append("<div id='boxCover'></div>");
//    var dw = $(document).width();
//    var dh = $(document).height();
    var dw = "0px";
    var dh = "0px";
    $("#boxCover").css("width", dw);
    $("#boxCover").css("height", dh);
    $("#boxCover").css({ "position": "absolute", "top": "100px", "left": (document.body.offsetWidth - pWidth) / 2 + "px", "z-index": 999 });
    $("body").append("<div id='boxCoverBG' style='left: 0px; top: 0px; width: 100%; height:" + document.body.offsetHeight + "px; position: absolute; z-index: 900;opacity:0.5;filter:alpha(opacity=50);background-color: rgb(51, 51, 51);'></div>");
}
function getEvent() //同时兼容ie和ff的写法
{
    if (document.all) return window.event;
    func = getEvent.caller;
    while (func != null) {
        var arg0 = func.arguments[0];
        if (arg0) {
            if ((arg0.constructor == Event || arg0.constructor == MouseEvent) || (typeof (arg0) == "object" && arg0.preventDefault && arg0.stopPropagation)) {
                return arg0;
            }
        }
        func = func.caller;
    }
    return null;
}
function CreateBoxMsg(msg, btop, bleft) {
    $("body").append("<div id='boxMsg' class='boxMsg'>" + msg + "</div>");
    $(".boxMsg").css("top", btop + 20);
    $(".boxMsg").css("left", bleft);
    $(".boxMsg").css("z-index", 1000);
}
function MoveBoxMsg(msg, btop, bleft) {
    $(".boxMsg").css("top", btop + 20);
    $(".boxMsg").css("left", bleft);
    $(".boxMsg").html(msg);
}
function ClearBoxMsg() {
    $(".boxMsg").remove();
}