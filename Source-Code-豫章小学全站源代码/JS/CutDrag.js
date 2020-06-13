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

//AJAX运用
var req;
var AJAXflag = false;
function createreg() {
    if (window.XMLHttpRequest) {
        req = new XMLHttpRequest();
    }
    if (window.ActiveXObject) {
        req = new ActiveXObject("Microsoft.XMLHttp");
    }
}

function callback() //回调函数，对服务端的响应处理，监视response状态
{
    if (req.readystate == 4) //请求状态为4表示成功
    {
        if (req.status == 200) //http状态200表示OK
        {
            AjAXflag = true;
            //alert("成功");
            //所有状态成功，执行此函数，显示数据
        }
        else //http返回状态失败
        {
            alert("更新失败！" + req.statusText);
        }
    }
    else //请求状态还没有成功，页面等待
    {
    }
}

function tjAjax(url) {
    if (!req) {
        createreq();
    }
    req.open("GET", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
    req.onreadystatechange = callback; //指定回调函数
    req.send(null); //

}


 function dom(obj) { return typeof (obj) == "string" ? document.getElementById(obj) : obj }
 function oDel(obj) { if (dom(obj) != null) { dom(obj).parentNode.removeChild(dom(obj)) } }
 var h1Title = 0;
 var h = 0;

 var moveId = 0;
 var bisLast = false; //移动前是否是最后一个
 var bLastIDs = new Array();  //移动前div后面的ID集合
 var bx = 0;  //移动前横坐标
 var by = 0; //移动前纵坐标
 // 移动后
 var lisLast = false;
 var lLastIDs = new Array();
 var lx = 0;
 var ly = 0;

 dragobj.xx = new Array();

 $(document).ready(function () {
     //初始化拖动
     // var o = document.getElementsByTagName("h1");
     var o = $("h1");
     for (var i = 0; i < o.length; i++) {
         if (!o[i])
             return false;
         //删除占位
         oDel(dragobj.otemp)
         o[i].onmousedown = function (e) {

             e = e || event;
             if (dragobj.o != null)
                 return false
             dragobj.o = this.parentNode //将o[i]的父级赋给dragobj.o
             //清空
             by = 0;
             bisLast = false;
             bLastIDs.length = 0;
             //开始记录
             moveId = this.title;
             if (dragobj.o.parentNode.id == "ddCut2") {
                 bx = 2;
             }
             else if (dragobj.o.parentNode.id == "ddCut1") { bx = 1; }
             else { bx = 0; }
             var parentLength = dragobj.o.parentNode.childNodes.length;

             var zjString = dragobj.o.id; //移动DivID
             //移动前--纵向
             for (var j = 0; j < parentLength; j++) {
                 if (bisLast) {
                     // bLastIDs.push(dragobj.o.parentNode.childNodes[j].getElementsByTagName("h1")[0].title);
					 var objnc=dragobj.o.parentNode.childNodes[j];
                     bLastIDs.push($(objnc).children(["h1"]).attr("title"))
                 }
                 if (dragobj.o.parentNode.childNodes[j].id == zjString) {
                     by = j
                     if (by < parentLength - 1) {
                         bisLast = true;
                     }

                 }
             }

             //移动前调用遍历方法
             //dragobjBL(n);
             //对象左上的坐标
             dragobj.xy = getxy(dragobj.o)
             //鼠标的相对位置
             dragobj.xx = new Array((e.x - dragobj.xy[1]), (e.y - dragobj.xy[0]))
             dragobj.o.style.width = dragobj.xy[2] + "px"
             dragobj.o.style.height = dragobj.xy[3] + "px"
             dragobj.o.style.left = (e.x - dragobj.xx[0]) + "px"
            // dragobj.o.style.left1 = (e.x - dragobj.xx[0])
             dragobj.o.style.top = (e.y - dragobj.xx[1]) + "px"
           //  dragobj.o.style.top = (e.y - dragobj.xx[1])
             dragobj.o.style.position = "absolute";
             //创建临时对象用于记住其原始位置，占位
             var om = document.createElement("div")
             dragobj.otemp = om
             om.style.width = dragobj.xy[2] + "px"
             om.style.height = dragobj.xy[3] + "px"
             dragobj.o.parentNode.insertBefore(om, dragobj.o);
             return false
         }

     }

 }
);  
   //鼠标移动中
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


     $(document).ready(function () {
         var mainCount = window.document.getElementById("mainCount");
         //
         window.document.onmouseup = function () {
             if (dragobj.o != null) {
                 dragobj.o.style.width = "auto"
                 dragobj.o.style.height = "auto"
                 dragobj.otemp.parentNode.insertBefore(dragobj.o, dragobj.otemp)
                 dragobj.o.style.position = ""

                 //删除占位
                 oDel(dragobj.otemp)

                 //清空
                 ly = 0;
                 lisLast = false;
                 lLastIDs.length = 0;
                 //移动后-纵向
                 var parentLength = dragobj.o.parentNode.childNodes.length;
                 for (var j = 0; j < parentLength; j++) {
                     if (lisLast) {

                         // lLastIDs.push(dragobj.o.parentNode.childNodes[j].getElementsByTagName("h1")[0].title);
                         var objnc2 = dragobj.o.parentNode.childNodes[j];
                         lLastIDs.push($(objnc2).children(["h1"]).attr("title"))
                     }
                     if (dragobj.o.parentNode.childNodes[j].id == dragobj.o.id) {
                         ly = j;
                         if (ly < parentLength - 1) {
                             lisLast = true;
                         }

                     }
                 }
                 var ddString = dragobj.o.parentNode.id;
                 //移动后的代码--横向
                 if (ddString == "ddCut2") {
                     lx = 2;
                 }
                 else if (ddString == "ddCut1") { lx = 1; }
                 else { lx = 0; }

                 //             var allstr = "移动以前 bx=" + bx + " by=" + by + " ";

                 //             if (bisLast) {
                 //                 allstr += "length=" + bLastIDs.length + " ";
                 //                 allstr += bLastIDs.join(",");
                 //             }

                 //             allstr += "\n移动以后：lx=" + lx + " ly=" + ly + " ";
                 //             if (lisLast) {
                 //                 allstr += "length=" + lLastIDs.length + " ";
                 //                 allstr += lLastIDs.join(",");
                 //             }
                 // alert(allstr);
                 if (lx != bx || ly != by) {
                     url = "PcutUpdate.aspx?type=5&Id=" + moveId + "&lx=" + lx + "&ly=" + ly + "&bLastIDs=" + bLastIDs.join(",") + "&lLastIDs=" + lLastIDs.join(",");
                     AJAXflag = false;
                     tjAjax(url);
                 }

                 //清空所有
                 bisLast = false; //移动前是否是最后一个
                 bLastIDs.length = 0;  //移动前div后面的ID集合
                 bx = 0;  //移动前横坐标
                 by = 0; //移动前纵坐标

                 lisLast = false; // 移动后
                 lLastIDs.length = 0;
                 lx = 0;
                 ly = 0;
                 moveId = 0;
                 //停止拖放
                 dragobj = {};



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
        if (isTrue(dom("ddCut" + j).innerHTML, "div") || isTrue(dom("ddCut" + j).innerHTML, "DIV"))
            continue
        var op = getxy(dom("ddCut" + j))
        if (e.x > (op[1] + 10) && e.x < (op[1] + op[2] - 10)) {
            dom("ddCut" + j).appendChild(dragobj.otemp)
            dragobj.otemp.style.width = (op[2] - 10) + "px"
        }
    }

}
 

