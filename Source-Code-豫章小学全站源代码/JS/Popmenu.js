var StyleSheetPath = "/App_Themes/AdminDefaultTheme/";
function ShowHideLayer(val, rval) {
    for (var i = 1; i < 16; i++) {
        if (i != val) {
            if (document.getElementById('Menu_' + i.toString()) != null) {
                if (document.getElementById('Menu_' + i.toString()).style.display != "none") {
                    document.getElementById('Menu_' + i.toString()).style.display = "none";
                }
                if (document.getElementById('Main_' + i.toString()) != null) {
                    document.getElementById('Main_' + i.toString()).className = "Main_1";
                }
            }
        }
        else {
            document.getElementById('Menu_' + i.toString()).style.display = "";
            if (document.getElementById('Main_' + i.toString()) != null) {
                document.getElementById('Main_' + i.toString()).className = "Main_2";
            }
        }
        if (rval > 0) {
            document.getElementById('Main_' + rval.toString()).className = "Main_2";
        }

    }
}

function SetWinHeight(obj) {
    var win = obj;
    if (document.getElementById) {
       
        if (win && !window.opera) {
            if (win.contentDocument && win.contentDocument.body.offsetHeight) {
                win.height = win.contentDocument.body.offsetHeight + 20;
                win.width = win.contentDocument.body.offsetWidth; 
				document.getElementById("main_right").style.width=document.documentElement.clientWidth - 205;
  // document.getElementById("main_right").width = parent.document.body.scrollWidth - document.getElementById("left").offsetWidth - 10;
               
            }
            else if (win.Document && win.Document.body.scrollHeight) {
                win.height = win.Document.body.scrollHeight + 20;
                win.width = win.Document.body.scrollWidth;
 document.getElementById("main_right").style.width=document.documentElement.clientWidth - 205;
     //  document.getElementById("main_right").width = parent.document.body.scrollWidth - document.getElementById("left").scrollWidth - 10;
                
            }
        }
    }
}

function ShowMains(lefturl, righturl) {
    var objLeft = window.frames['left'];
    var objContent = window.frames['main_right'];

    if (lefturl != "") {
        objLeft.location.href = lefturl;
    }
    if (righturl != "") {
        objContent.location.href = righturl;
    }
}

var UserAgent = navigator.userAgent.toLowerCase();
var ie4 = document.all && UserAgent.indexOf("opera") == -1
var ns6 = document.getElementById && !document.all

function $(id) {
    return document.getElementById(id);
}

//菜单

var menuOffX = 0		//菜单距连接文字最左端距离
var menuOffY = 23		//菜单距连接文字顶端距离

function showmenu(e, vmenu, mod, tops) {
    if (tops == null) {
        tops = menuOffY;
    }

    if (!vmenu) { return false; } //如果空则不显示
    var which = vmenu
    menuobj = document.getElementById("popmenu")//$("")
    menuobj.innerHTML = which
    menuobj.contentwidth = menuobj.offsetWidth
    eventX = e.clientX
    eventY = e.clientY
    var rightedge = document.body.clientWidth - eventX
    var bottomedge = document.body.clientHeight - eventY
    var getlength
    if (rightedge < menuobj.contentwidth) {
        getlength = ie4 ? document.body.scrollLeft + eventX - menuobj.contentwidth + menuOffX : ns6 ? window.pageXOffset + eventX - menuobj.contentwidth : eventX - menuobj.contentwidth
    } else {
        getlength = ie4 ? ie_x(event.srcElement) + menuOffX : ns6 ? window.pageXOffset + eventX : eventX
    }
    menuobj.style.left = getlength + 'px'

    if (bottomedge < menuobj.contentheight && mod != 0) {
        getlength = ie4 ? document.body.scrollTop + eventY - menuobj.contentheight - event.offsetY + tops - 23 : ns6 ? window.pageYOffset + eventY - menuobj.contentheight - 10 : eventY - menuobj.contentheight
    }
    else {
        getlength = ie4 ? ie_y(event.srcElement) + tops : ns6 ? window.pageYOffset + eventY + 10 : eventY
    }
    menuobj.style.top = getlength + 'px'

    menuobj.style.visibility = "visible"
}

function ie_y(e) {
    var t = e.offsetTop;
    while (e = e.offsetParent) {
        t += e.offsetTop;
    }
    return t;
}
function ie_x(e) {
    var l = e.offsetLeft;
    while (e = e.offsetParent) {
        l += e.offsetLeft;
    }
    return l;
}

function highlightmenu(e, state) {
    if (document.all)
        source_el = event.srcElement
    else if (document.getElementById)
        source_el = e.target
    if (source_el.className != "menuskin" && source_el.className != "") {
        source_el.className = (state == "on") ? "mouseoverstyle" : "menuitems";
    }
    else {
        while (source_el.id != "popmenu") {
            source_el = document.getElementById ? source_el.parentNode : source_el.parentElement
            if (source_el.className != "menuskin" && source_el.className != "") {
                source_el.className = (state == "on") ? "mouseoverstyle" : "menuitems"
            }
        }
    }
}

function hidemenu() { if (window.menuobj) menuobj.style.visibility = "hidden" }

function contains_ns6(a, b) {
    while (b.parentNode)
        if ((b = b.parentNode) == a)
        return true;
    return false;
}
function dynamichide(e) {
    if (ie4 && !menuobj.contains(e.toElement))
        hidemenu()
    else if (ns6 && e.currentTarget != e.relatedTarget && !contains_ns6(e.currentTarget, e.relatedTarget))
        hidemenu()
}

document.onclick = hidemenu
document.write("<div class=menuskin id=popmenu onmouseover=highlightmenu(event,'on') onmouseout=highlightmenu(event,'off');dynamichide(event)></div>")
// 菜单END


//add area script
function ValidateTextboxAdd(box, button) {
    var buttonCtrl = $(button);
    if (buttonCtrl != null) {
        if (box.value == "" || box.value == box.Helptext) {
            buttonCtrl.disabled = true;
        }
        else {
            buttonCtrl.disabled = false;
        }
    }
}
//add area script end