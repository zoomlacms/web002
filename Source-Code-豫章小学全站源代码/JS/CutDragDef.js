/**  **/
var dragobj = {};

function isTrue(s_agent, s_name) {
    var result = s_agent.toString().indexOf(s_name.toString()) > -1 ? true : false;
    return result;
}

$(document).ready( function () {   //
    var agent = navigator.userAgent;
    var isopr = agent.indexOf("opera")>-1 ? true: false;
    var isIE = (agent.indexOf("IE") > -1 ? true : false) && !isopr;
    var isMoz = (agent.indexOf("Mozilla") > -1 ? true : false) && !isopr && !isIE;
    if (isMoz) {
        Event.prototype.__defineGetter__("x", function () { return this.clientX + 2 })
        Event.prototype.__defineGetter__("y", function () { return this.clientY + 2 })
    }
}
)

 function dom(obj) { return typeof (obj) == "string" ? document.getElementById(obj) : obj }
 function oDel(obj) { if (dom(obj) != null) { dom(obj).parentNode.removeChild(dom(obj)) } }

$(document).ready(function () {
     //初始化拖动
    // var o = document.getElementsByTagName("h1");
    var o = $("h1");
     for (var i = 0; i < o.length; i++) {
         if (!o[i])
             return false;

         o[i].onmousedown = function (e) {
             e = e || event;

             if (dragobj.o != null)   
                 return false
             dragobj.o = this.parentNode //将o[i]的父级赋给dragobj.o
             //对象左上的坐标
             dragobj.xy = getxy(dragobj.o)
             //鼠标的相对位置
             dragobj.xx = new Array((e.x - dragobj.xy[1]), (e.y - dragobj.xy[0]))
             dragobj.o.style.width = dragobj.xy[2] + "px"
             dragobj.o.style.height = dragobj.xy[3] + "px"
             dragobj.o.style.left = (e.x - dragobj.xx[0]) + "px"
             dragobj.o.style.top = (e.y - dragobj.xx[1]) + "px"
             dragobj.o.style.position = "absolute"
             //创建临时对象用于记住其原始位置，占位
             var om = document.createElement("div")
             dragobj.otemp = om
             om.style.width = dragobj.xy[2] + "px"
             om.style.height = dragobj.xy[3] + "px"
             dragobj.o.parentNode.insertBefore(om, dragobj.o)
             return false
         }
      
     }
 }
)

$(document).ready(function () {
    var mainCount = window.document.getElementById("ho");
    //
    window.document.onmouseup = function () {
        if (dragobj.o != null) {
            dragobj.o.style.width = "auto"
            dragobj.o.style.height = "auto"
            dragobj.otemp.parentNode.insertBefore(dragobj.o, dragobj.otemp)
            dragobj.o.style.position = ""
            //删除占位
            oDel(dragobj.otemp)
            //停止拖放
            dragobj = {}
        }
    }
    //
    window.document.onmousemove = function (e) {
        e = e || event
        //window.status = "mouse.x:"+e.x+";mouse.y:"+e.y
        if (dragobj.o != null) {
            dragobj.o.style.left = (e.x - dragobj.xx[0]) + "px"
            dragobj.o.style.top = (e.y - dragobj.xx[1]) + "px"
            //自动调整布局，显示拖放效果
            createtmpl(e)
        }
    }
}
)
//取得鼠标的坐标
function mouseCoords(ev) {
    if (ev.pageX || ev.pageY) {
        return { x: ev.pageX, y: ev.pageY };
    }
    return {
        x: ev.clientX + document.body.scrollLeft - document.body.clientLeft,
        y: ev.clientY + document.body.scrollTop - document.body.clientTop
    };
}
//取得位置分别为上，左，宽，高,所有元素必须在同一容器内
function getxy(e) {
    var a = new Array()
    var t = e.offsetTop;
    var l = e.offsetLeft;
    var w = e.offsetWidth;
    var h = e.offsetHeight;
    while (e = e.offsetParent) {
        t += e.offsetTop;
        l += e.offsetLeft;
    }
    a[0] = t; a[1] = l; a[2] = w; a[3] = h
    return a;
}
//判断e与o的位置
function inner(o, e) {
    var a = getxy(o)
    //鼠标是否在o的内部
    if (e.x > a[1] && e.x < (a[1] + a[2]) && e.y > a[0] && e.y < (a[0] + a[3])) {
        if (e.y < (a[0] + a[3] / 2))
        //上半部分
            return 1;
        else
            return 2;
    } else
        return 0;
}
//
function createtmpl(e) {
    for (var i = 0; i < 16; i++) {
        if (!dom("divCut" + i) || dom("divCut" + i) == dragobj.o)
            continue
        //修正鼠标坐标
        var mousePos = mouseCoords(e);
        var b = inner(dom("divCut" + i), mousePos)
        if (b == 0)
            continue
        dragobj.otemp.style.width = dom("divCut" + i).offsetWidth
        if (b == 1) {
            dom("divCut" + i).parentNode.insertBefore(dragobj.otemp, dom("divCut" + i))
        }
        else {
            if (dom("divCut" + i).nextSibling == null) {
                dom("divCut" + i).parentNode.appendChild(dragobj.otemp)
            } else {
                dom("divCut" + i).parentNode.insertBefore(dragobj.otemp, dom("divCut" + i).nextSibling)
            }
        }
    }
    //处理拖放至边界外的情况
    for (var j = 0; j < 3; j++) {
        if (isTrue(dom("home" + j).innerHTML, "div") || isTrue(dom("home" + j).innerHTML, "DIV"))
            continue
        var op = getxy(dom("home" + j))
        if (e.x > (op[1] + 10) && e.x < (op[1] + op[2] - 10)) {
            dom("home" + j).appendChild(dragobj.otemp)
            dragobj.otemp.style.width = (op[2] - 10) + "px"
        }
    }
}
