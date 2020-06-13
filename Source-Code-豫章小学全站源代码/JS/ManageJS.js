function $(Id) { return (document.getElementById(Id)) }
var Ie = /msie/i.test(navigator.userAgent);
function SetBg(o, Img, Color) {
    o.style.background = "url('/Images/style3D/" + Img + ".gif')";
    o.style.color = "#" + Color;
}

function moveNull(oo) {
    for (var i = 0; i < oo.childNodes.length; ) {
        if (oo.childNodes[i].tagName == undefined)
            oo.removeChild(oo.childNodes[i]);
        else
            i++;
    }
}

var Winid = 0;
var zIndex = 0;
var xmlHttp;
function showInfo(S_ID) {
    MyWin.Create('0', '1', '客服窗口', '<form id=form1 name=form1  method=post action=><div id=div_' + S_ID + ' style=width:100%;height:100%><div id=tdmsg_' + S_ID + ' style=overflow-y:scroll;width:100%;height:260px;></div><hr><div style=height:27px;margin-left: 4px;><select name=\"onuser\" id=\"onuser\" onchange=\"GoContent();\"><option value=\"-1\">暂无人员</option></select><input name=Msginfo_' + S_ID + ' type=text style=width:60% id=Msginfo_' + S_ID + '   onpaste=return false; /><input type=button name=button id=button value=发送 onkeydown=\"SubmitKeyClick();\" onclick=subminBUT(' + S_ID + ') />是否滚屏<input id=\"yango\" type=\"checkbox\" value=\"true\" /></div></div></form>');
}

var ajax = new AJAXRequest();

function opchane() {
    createXMLHttpRequest();
    var onusers = document.getElementById("onuser").value;
    var oid = document.getElementById("onuser").value;
    var url = "User/Customer.aspx?type=onuser&oid=" + oid;
    xmlHttp.open("get", url, true);
    xmlHttp.onreadystatechange = submintCallback;
    xmlHttp.send(null);
    clearTimeout("GoContent()", 5000);
}

function SubmitKeyClick() {
    if (event.keyCode == 13) {
        subminBUT("1");
    }
}

function subminBUT(uid) {
    createXMLHttpRequest();
    var tempcontent = document.getElementById("Msginfo_" + uid).value;
    var oid = document.getElementById("onuser").value;
    var url = "User/Customer.aspx?type=answer&tempcontent=" + escape(tempcontent) + "&uid=" + oid;
    xmlHttp.open("get", url, true);
    xmlHttp.onreadystatechange = submintCallback;
    xmlHttp.send(null);
    if (document.getElementById("Msginfo_" + 1) != null) {
        document.getElementById("Msginfo_" + 1).value = "";
    }
}

function GoContent() {
    createXMLHttpRequest();
    var oid = 0;
    if (document.getElementById("onuser") != null) {
        oid = document.getElementById("onuser").value;
    }
    var url = "User/Customer.aspx?type=GoContent&oid=" + oid;
    xmlHttp.open("GET", url, true);
    xmlHttp.onreadystatechange = submintCallback;
    xmlHttp.send(null);
    if (document.getElementById("tdmsg_" + 1) != null) {
        setTimeout("GoContent()", 5000);
    }
}

function submintCallback() {
    if (xmlHttp.readyState == 4) {
        if (xmlHttp.status == 200) {
            var str = xmlHttp.responseText;
            if (document.getElementById("tdmsg_" + 1) != null) {
                document.getElementById("tdmsg_" + 1).innerHTML = str;
                if (document.getElementById("yango").checked == true) {
                    document.getElementById("tdmsg_" + 1).scrollTop = document.getElementById("tdmsg_" + 1).scrollHeight + 21;
                }
            }
        }
    }
}

function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}

function openwindow() {
    showInfo(1);
    doStart();
    if (document.getElementById("tdmsg_" + 1) != null) {
        setTimeout("GoContent()", 3000);
    }
}

function doStart() {
    if (document.getElementById("divStayTopleft").style.display == "") {
        createXMLHttpRequest();
        var url = "User/Customer.aspx?type=OnlineUsers";
        xmlHttp.open("GET", url, true);
        xmlHttp.onreadystatechange = startCallback;
        xmlHttp.send(null);
    }
}

function startCallback() {
    if (xmlHttp.readyState == 4) {
        if (xmlHttp.status == 200) {
            updatezaixian();
            setTimeout("doStart()", 2000);
        }
    }
}

function updatezaixian() {
    var models = document.getElementById("zaixian");
    var results = xmlHttp.responseXML.getElementsByTagName("uID");
    var resultss = xmlHttp.responseXML.getElementsByTagName("uname");
    var resultsss = xmlHttp.responseXML.getElementsByTagName("cstype")[0].firstChild.data;
    var option = null;
    var str = "";
    if (resultsss == 1) {
        str += "<span style='color:red'>有信息</span><br />";
    }
    if (results.length > 0) {
        for (var i = 0; i < results.length; i++) {
            str += "<a href='javascript:void(0);' onclick='getonid2(" + results[i].firstChild.data + ")'>" + resultss[i].firstChild.data + "</a><br />"
        }
        document.getElementById("zaixian").innerHTML = str;
    }
}

function doStart2() {
    if (document.getElementById("divStayTopleft").style.display == "") {
        createXMLHttpRequest();
        var url = "user/Customer.aspx?type=OnlineUserss";
        xmlHttp.open("GET", url, true);
        xmlHttp.onreadystatechange = startCallback2;
        xmlHttp.send(null);
    }
}

function startCallback2() {
    if (xmlHttp.readyState == 4) {
        if (xmlHttp.status == 200) {
            updateModelsList();
        }
    }
}

function updateModelsList() {
    clearModelsList();
    var models = document.getElementById("onuser");
    var results = xmlHttp.responseXML.getElementsByTagName("uID");
    var resultss = xmlHttp.responseXML.getElementsByTagName("uname");
    var option = null;
    if (results.length > 0) {
        for (var i = 0; i < results.length; i++) {
            option = document.createElement("option");
            option.setAttribute("value", results[i].firstChild.data);
            option.appendChild(document.createTextNode(resultss[i].firstChild.data));
            models.appendChild(option);
        }
    }

    var option2 = document.createElement("option");
    option2.setAttribute("value", "0");
    option2.appendChild(document.createTextNode("全部"));
    models.appendChild(option2);
}

function clearModelsList() {
    var models = document.getElementById("onuser");
    while (models.childNodes.length > 0) {
        models.removeChild(models.childNodes[0]);
    }
}

function getonid(onid) {
    var models = document.getElementById("onuser");
    models.value = onid;

}

function getonid2(onid) {
    if (document.getElementById("onuser") == null) {
        openwindow();
    }
    doStart2();
    setTimeout("getonid(" + onid + ")", 1000);
}

function pollServer() {
    document.getElementById("lblonlineuser").innerHTML = xmlHttp.responseText;
}

function URLEncode(clearString) {
    var output = '';
    var x = 0;
    clearString = clearString.toString();
    var regex = /(^[a-zA-Z0-9_.]*)/;
    while (x < clearString.length) {
        var match = regex.exec(clearString.substr(x));
        if (match != null && match.length > 1 && match[1] != '') {
            output += match[1];
            x += match[1].length;
        } else {
            if (clearString[x] == ' ')
                output += '+';
            else {
                var charCode = clearString.charCodeAt(x);
                var hexVal = charCode.toString(16);
                output += '%' + (hexVal.length < 2 ? '0' : '') + hexVal.toUpperCase();
            }
            x++;
        }
    }
    return output;
}

var keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
function encode64(input) {
    var output = "";
    var chr1, chr2, chr3 = "";
    var enc1, enc2, enc3, enc4 = "";
    var i = 0;
    do {
        chr1 = input.charCodeAt(i++);
        chr2 = input.charCodeAt(i++);
        chr3 = input.charCodeAt(i++);
        enc1 = chr1 >> 2;
        enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
        enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
        enc4 = chr3 & 63;
        if (isNaN(chr2)) {
            enc3 = enc4 = 64;
        } else if (isNaN(chr3)) {
            enc4 = 64;
        }
        output = output +
            keyStr.charAt(enc1) +
            keyStr.charAt(enc2) +
            keyStr.charAt(enc3) +
            keyStr.charAt(enc4);
        chr1 = chr2 = chr3 = "";
        enc1 = enc2 = enc3 = enc4 = "";
    } while (i < input.length);
    return output;
}

function strUnicode2Ansi(asContents) {
    var len1 = asContents.length;
    var temp = "";
    for (var i = 0; i < len1; i++) {
        var varasc = asContents.charCodeAt(i);
        if (varasc < 0)
            varasc += 65536;
        if (varasc > 127)
            varasc = UnicodeToAnsi(varasc);
        if (varasc > 255) {
            var varlow = varasc & 65280;
            varlow = varlow >> 8;
            var varhigh = varasc & 255;
            temp += String.fromCharCode(varlow) + String.fromCharCode(varhigh);
        }
        else {
            temp += String.fromCharCode(varasc);
        }
    }
    return temp;
}

function UnicodeToAnsi(chrCode) {
    var chrHex = chrCode.toString(16);
    chrHex = "000" + chrHex.toUpperCase();
    chrHex = chrHex.substr(chrHex.length - 4);
    var i = UnicodeChr().indexOf(chrHex);
    if (i != -1) {
        chrHex = AnsicodeChr().substr(i, 4);
    }
    return parseInt(chrHex, 16)
}

function adstyle() {
    document.getElementById("divStayTopleft").style.display = "";
}

function adnone() {
    document.getElementById("divStayTopleft").style.display = "none";
}


String.prototype.Trim = function() { return this.replace(/(^\s*)|(\s*$)/g, ""); }
String.prototype.toDate = function() { return eval('new Date(' + this.replace(/\d+(?=-[^-]+$)/, function($0) { return parseInt($0, 10) - 1; }).match(/\d+/g) + ')'); };
var logPath = '';
var lAt = 0;
var NewMail = 0;
var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
var isOpera = navigator.userAgent.indexOf('Opera') != -1;
var fuckAlexa = false;
var bFirst = true;

var CSKey;
var xmlhttp = false;
var delayCount = 0;

var OnlineFriend = 0;
var lUserId = 0;
var sel = (lUserId > 0) ? 1 : 0;

function onClubClick(id, str, url, isNode) {
    MDIOpen(url);
}

function onclickH(e) { return onclickHook(e ? e : menuContent); }
function onclickME(e) { return onclickHook(e ? e : window); }

var nowWindow = -1;
var nowStyle = "max";
var starTab = 0;
var maxWindow = 0;
var ocs = new Array();
var ocs_tab = new Array();
var wl = 80;

function onresizeH(e) {
    if (nowWindow == -1) return;
    var w = tabs.document.body.offsetWidth;
    var tabLists = tabs.document.getElementById("FrameTabs").childNodes;
    var nowStyle1 = "";

    if (w - 26 < tabLists.length * wl) {
        nowStyle1 = "min";
        if (document.getElementById("tab_left").className == "hidden") {
            w = w - 26;
        }
    } else {
        if (w > tabLists.length * 132) {
            nowStyle1 = "max";
        } else {
            nowStyle1 = "";
        }
    }

    var n = Math.floor(w / wl);
    var n1 = 0;
    for (var i = 0; i < tabLists.length; i++) {
        if (tabLists[i].id == "tab_" + nowWindow) {
            n1 = i;
            break;
        }
    }

    if (nowStyle1 == "min") {
        
        if (starTab + n < n1 + 1) {
            for (var i = starTab; i < n1 + 1 - n; i++) {
                tabLists[i].style.display = "none";
                tabLists[i].className = "min"
            }
            starTab = n1 + 1 - n;
        } else if (starTab > tabLists.length - n && starTab > 0) {
            for (var i = tabLists.length - n; i <= starTab; i++) {
                tabLists[i].style.display = "";
                tabLists[i].className = "min"
            }
            starTab = tabLists.length - n;
        }
        else if (starTab > n1) {
            for (var i = n1; i < starTab; i++) {
                tabLists[i].style.display = "";
                tabLists[i].className = "min";
            }
            starTab = n1;
        }
        tabLists[starTab].className = (tabLists[starTab].id == "tab_" + nowWindow) ? "min1 here" : "min1";

        var tabStyle = tabs.document.styleSheets[0][(tabs.document.all) ? 'rules' : 'cssRules'];
        try {
            tabStyle[tabStyle.length - 1].style.width = Math.floor(w / n) + "px";
            tabStyle[tabStyle.length - 2].style.width = (Math.floor(w / n) + w % n) + "px";
        } catch (e) { }
    }

    if (nowStyle != nowStyle1) {
        nowStyle = nowStyle1;
        for (var i = 0; i < tabLists.length; i++) {
            if (nowStyle1 != "min") if (tabLists[i].style.display != "")
                tabLists[i].style.display = "";

            if (nowStyle1 != "min" || (nowStyle1 == "min" && i != starTab))
                tabLists[i].className = (tabLists[i].id == "tab_" + nowWindow) ? nowStyle + " here" : nowStyle;
        }
        if (nowStyle != "min") starTab = 0;
    }
}

onresize = onresizeH;

function onLefttab() {
    var tabLists = tabs.document.getElementById("tab_list").childNodes;
    MDISwitch(((starTab > 0) ? tabLists[starTab - 1].id : tabLists[0].id).substr(4));
}

function onRighttab() {
    var n = Math.floor(tabs.document.body.offsetWidth / wl);
    var tabLists = tabs.document.getElementById("tab_list").childNodes;
    MDISwitch(((starTab + n + 1 > tabLists.length) ? tabLists[tabLists.length - 1].id : tabLists[starTab + n].id).substr(4));
}

function onTabDblClock() {
    setTimeout("MDIClose();", 0);
}

function MDISwitch(i) {
    if (nowWindow == i) return false;

    var ow, nw;

    if (nowWindow != -1) {
        tabs.document.getElementById("iFrameTab" + nowWindow).className = nowStyle;//tab_
        ow = main_right.document.getElementById("main_right");//_" + nowWindow

        ow.scrollPos = 0;
        if (ow.Attached && ow.contentWindow) if (ow.contentWindow.document) if (ow.contentWindow.document.body)
            ow.scrollPos = ow.contentWindow.document.body.scrollTop;

        ow.LastAccess = (new Date()).getTime();
        ow.style.display = "none";
    }

    nw = main_right.document.getElementById("main_right");//_" + i

    nw.style.display = "";

    try {
        if (nw.scrollPos)
            nw.contentWindow.scrollTo(0, nw.scrollPos);
    } catch (e) { };

    nowWindow = i;
    tabs.document.getElementById("iFrameTab" + nowWindow).className = nowStyle + " here";//tab_

    onresizeH();

    return false;
}

function MDIClose() {
    var i, f, la = 0, lw;
    var tabLists = tabs.document.getElementById("FrameTabs").childNodes;//tab_list

    if (nowWindow != -1) {
        for (i = 0; i < tabLists.length; i++) {
            if (tabLists[i].id == "iFrameTab" + nowWindow)//tab_
                break;
        }

        tabs.document.getElementById("FrameTabs").removeChild(tabs.document.getElementById("iFrameTab" + nowWindow));//tab_list tab_

        try {
            main_right.document.body.removeChild(main_right.document.getElementById("main_right"));//_" + nowWindow
        } catch (Error)
        { }
        nowWindow = -1;
        if (tabLists.length) {
            var n = Math.floor(tabs.document.body.offsetWidth / wl);
            lw = ((i < tabLists.length) ? tabLists[i].id : tabLists[tabLists.length - 1].id).substr(4);
            
            MDISwitch(lw);
        }
    }
    return false;
}

function MDIRefresh() {
    var f;
    var l;
    f = main_right.document.getElementById("main_right");//_" + nowWindow
    l = "";
    try {
        if (f)
            if (f.contentDocument)
            f.contentDocument.location = f.contentDocument.location;
        else eval("main_right.main_right").document.location = eval("main_right.main_right").document.location;//_" + nowWindow _" + nowWindow
    } catch (e) { }
}

function MDILoad(n, url) {

    var f;
    var l;
    f = main_right.document.getElementById("main_right");//_" + n
    l = "";
    try {
        if (f)
            if (f.contentDocument)
            l = f.contentDocument.location = url;
        else l = eval("main_right.main_right").document.location = url;//_" + n
    } catch (e) { }
}

function MDIOpen(url, nActiveMode) {
    if (typeof nActiveMode == 'undefined') nActiveMode = 1;
    if (nowWindow == -1) nActiveMode = 1;

    if (url.search(/http:\/\/[bu][0-9]+\.xici\.net\//i) == 0)
        url = "/" + url.substr(7, url.search(/\./i) - 7) + "/";

    if (url.charAt(0) == "/")
        url = "http://" + location.host + url;

    var i, f, l, l1, n;
    var url1 = url.toLowerCase();

    for (i = 0; i < maxWindow; i++) {
        f = main_right.document.getElementById("main_right");//_" + i
        l = "";
        l1 = "";
        try {
            if (f)
                if (f.contentDocument)
                l = '' + f.contentDocument.location;
            else l = '' + eval("main_right.main_right").document.location;//_" + i
        } catch (e) { }

        n = l.indexOf('?');
        if (n != -1) l1 = l.substr(0, n);

        if (l.toString().toLowerCase() == url1 || l1.toString().toLowerCase() == url1) {
            if (nowWindow != i) {
                if (nActiveMode) {
                    MDISwitch(i);
                    if (nActiveMode == 2)
                        setTimeout("main_right.document.getElementById(\"main_right\").src=\"" + url + "\"", 0);//_" + i + "
                }
            } else { setTimeout("main_right.document.getElementById(\"main_right\").src=\"" + url + "\"", 0); } //_" + i + "
            return;
        }
    }

    if (maxWindow > main_right.frames.length) {
        for (i = 0; i < maxWindow; i++)
            if (!main_right.document.getElementById("main_right"))//_" + i
            break;
    } else {
        i = maxWindow;
        maxWindow++;

        ocs[i] = new Function("return onclickHook(main_right.main_right);");//_" + i + "
        ocs_tab[i] = new Function("MDISwitch(" + i + ");");
    }

    var nw = main_right.document.createElement("iframe")
    nw.width = "100%";
    nw.height = "100%";
    nw.frameBorder = 0;
   
    nw.id = "main_right";//_" + i
    nw.LastAccess = (new Date()).getTime();
    nw.src = "loading.htm";
    nw.style.display = "none";
    if (isMSIE) {
        var ifHtml = nw.outerHTML;
        nw = main_right.document.createElement("div")
        nw.id = "main_right_" + i;
        main_right.document.body.appendChild(nw);
        main_right.document.getElementById("main_right_" + i).outerHTML = ifHtml;
    } else {
        main_right.document.body.appendChild(nw);
    }
    

    var td = tabs.document.createElement("td")
    td.className = nowStyle;
    //td.width = wl;
    td.id = "tab_" + i;
    td.onmousedown = ocs_tab[i];
    td.ondblclick = onTabDblClock;
    td.onmouseover = function() { this.className1 = this.className; if (this.className.indexOf("here") == -1) this.className += " over"; }
    td.onmouseout = function() { if (this.className.indexOf("here") == -1) { this.className = this.className1; } this.className1 = ""; }
    if (isOpera)
        td.innerHTML = "<a href='javascript:void(0);'>　加载中…</a>";
    else
        td.innerHTML = '<div class="ch_m_l"><div class="ch_m_r"><span>加载中…</span><a href="javascript:parent.MDIRefresh();void(0);" title="刷新" class="ch_f5">刷新</a><a href="javascript:parent.MDIClose();void(0);" title="关闭" class="ch_close">关闭</a></div></div>';

    try {
        tabs.document.getElementById("tab_list").insertBefore(td, tabs.document.getElementById("tab_" + nowWindow).nextSibling);
    } catch (e) {
        tabs.document.getElementById("tab_list").appendChild(td);
    }

    if (nActiveMode) MDISwitch(i);
    else onresizeH();

    setTimeout('MDILoad(' + i + ',"' + url + '");', 0);
}

function HtmlEncode(s) {
    var s1;

    s1 = s.replace(new RegExp('&', 'g'), '&amp;');
    s1 = s1.replace(new RegExp('<', 'g'), '&lt;');
    s1 = s1.replace(new RegExp('>', 'g'), '&gt;');

    return s1;
}

function MDIonload(w, title) {
    if (typeof title != 'undefined') {
        var s = new String(title);
        var l, n;

        l = 0;
        n = 0;
        while (l < 10 && n < s.length) {
            if (s.charCodeAt(n) > 128) {
                l++;
                if (l == 10) break;
            }
            l++;
            n++;
        }

        if (n > 0) {
            if (isOpera)
                tabs.document.getElementById("tab_" + w).innerHTML = "<a href='javascript:void(0);'>　" + HtmlEncode(s.substr(0, n)) + "..</a>";
            else
                tabs.document.getElementById("tab_" + w).innerHTML = '<div class="ch_m_l"><div class="ch_m_r"><span>' + HtmlEncode(s) + '</span><a href="javascript:parent.MDIRefresh();void(0);" title="刷新" class="ch_f5">刷新</a><a href="javascript:parent.MDIClose();void(0);" title="关闭" class="ch_close">关闭</a></div></div>';
            tabs.document.getElementById("tab_" + w).title = s;
            main_right.document.getElementById("main_right_" + w).Attached = true;
        };
    }
}

var oca = new Array();

function MDILoop() {
    if (fuckAlexa)
        try {
        var i, o, path;

        for (i = 0; i < oca.length; i++) {
            o = oca[i];
            path = o.getAttribute("path");
            if (path) {
                o.href = path;
                o.target = "_blank";
                o.setAttribute("path", '');
            }
        }

        oca = new Array();
    } catch (e) { }
    else if (isMSIE && document.onclick && document.onclick != onclickME)
        fuckAlexa = true;

    var f, f1;

    for (i = 0; i < maxWindow; i++) {
        f = main_right.document.getElementById("main_right_" + i)
        try {
            if (f)
                if (f.contentDocument) {
                if (!f.contentDocument.clickhook) {
                    f.contentDocument.onclick = onclickHook;
                    f.contentDocument.clickhook = true;
                    f.Attached = false;
                }
                if (!f.Attached)
                    MDIonload(i, f.contentDocument.title);
            } else {
                f1 = eval("main_right.main_right_" + i)
                if (f1) if (f1.document) {
                    if (!f1.document.clickhook) {
                        if (fuckAlexa && f1.document.onclick)
                            f1.document.oldclick = f1.document.onclick;
                        f1.document.onclick = ocs[i];
                        f1.document.clickhook = true;
                        f.Attached = false;
                    }
                    if (!f.Attached)
                        MDIonload(i, f1.document.title);
                }
            }
        } catch (e) { }
    }
}

setInterval("MDILoop()", 10);

function onclickStatHook(e, srcElement) {
    var x = 0;
    var y = 0;
    var StatTag = "";
    var StatBlock = "";
    var CSKey, surl, elementtemp;
    var n = document.cookie.indexOf("SessionID");

    try {
        if ((typeof (e.lATimes) == 'undefined' && typeof (e.view.lATimes) == 'undefined') || n == -1)
            return;
    } catch (e) { return; }

    var IEorFF = (typeof (e.lATimes) != 'undefined') ? e.window.document : e.currentTarget;
    var Url = IEorFF.URL;

    CSKey = document.cookie.substr(n + 10, 16);
    if (srcElement.tagName.toLowerCase() == "input") {
        elementtemp = srcElement;
        while (elementtemp && elementtemp.tagName.toLowerCase() != "form" && elementtemp.parentNode != (e.document ? e.document : e.currentTarget))
            elementtemp = elementtemp.parentNode;
        if (elementtemp.tagName.toLowerCase() == "form")
            surl = elementtemp.action;
        else surl = "";
    }
    else {
        surl = srcElement.href.replace(";", "").replace("#", "");
    }
    while (srcElement && srcElement.parentNode != e.document && srcElement.tagName != "BODY") {
        if (srcElement.getAttribute("StatTag") && StatTag == "")
            StatTag = srcElement.getAttribute("StatTag");
        if (srcElement.getAttribute("StatBlock"))
            StatBlock += srcElement.getAttribute("StatBlock") + "_";
        srcElement = srcElement.parentNode;
    }
    if (document.cookie.indexOf("uid=") != -1 && document.cookie.indexOf("uid=0") == -1)
        Url = Url.substr(0, 12).replace("www", "user") + Url.substr(12);
}

function onclickHook(e) {
    try {
        var srcElement = e.target ? e.target : e.event.srcElement;
        while (srcElement && srcElement.tagName.toLowerCase() != "a" && srcElement.tagName.toLowerCase() != "area" && srcElement.tagName.toLowerCase() != "input" && srcElement.parentNode != (e.document ? e.document : e.currentTarget))
            srcElement = srcElement.parentNode;

        if ((srcElement.tagName.toLowerCase() == "input" && srcElement.getAttribute("type") != "submit") || !srcElement || srcElement.parentNode == e.document)
            return true;

        if (srcElement.onclick)
            if (srcElement.onclick.toString().indexOf("return") > -1)
            return;

        if (srcElement.getAttribute("bizinfo")) {
            try {
                var s = (typeof (e.lATimes) != 'undefined') ? e.window.document.createElement('script') : e.currentTarget.createElement('script');
                s.type = "text/javascript";
                //s.src = '/biz/click.asp?' + srcElement.getAttribute("bizinfo") + "&a=" + (new Date()).getTime();
                if (typeof (e.lATimes) != 'undefined')
                    e.window.document.getElementsByTagName("HEAD").item(0).appendChild(s);
                else
                    e.currentTarget.getElementsByTagName("HEAD").item(0).appendChild(s);
            } catch (e) { }
        }
        onclickStatHook(e, srcElement);

        var hrefUrl = srcElement.href;
        var path = srcElement.getAttribute("path");

        if (typeof hrefUrl != 'undefined') {
            if (!path) {
                if (hrefUrl.substr(0, 11).toLowerCase() == "javascript:") return true;
                if (fuckAlexa && hrefUrl.search(/\.htm/i) > 0) {
                    if (e.document.oldclick)
                        e.document.oldclick();

                    return true;
                }

                path = hrefUrl;
                hrefUrl = '';
            } else {
                if (path.substr(0, 7) != "http://" && path.substr(0, 1) != "/") {
                    if (!e.location)
                        path = this.location.pathname.substring(0, this.location.pathname.lastIndexOf("/") + 1) + path;
                    else
                        path = e.location.pathname.substring(0, e.location.pathname.lastIndexOf("/") + 1) + path;
                }
            }

            if (path.search(/http:\/\/[bu][0-9]+\.xici\.net\//i) == 0)
                path = "/" + path.substr(7, path.search(/\./i) - 7) + "/";


            if (!srcElement.target || (srcElement.target.toLowerCase() != "_blank" && srcElement.target.toLowerCase() != "_self")) {
                if (srcElement.target.toLowerCase() == "_top") {
                    //document.cookie = "xicifrmact=1; domain=zoomla.cn; path=/;";
                    top.location = path;
                    return false;
                }

                if (e.document.oldclick)
                    e.document.oldclick();

                if (srcElement.target != "") {
                    window.open(path);
                    return false;
                }

                return true;
            }

            if (fuckAlexa && hrefUrl == '') {
                srcElement.href = 'javascript:void(0);';
                srcElement.target = "_self";
                srcElement.setAttribute("path", path);
                oca.push(srcElement);
            }
            MDIOpen(path);

            return false;
        }
    } catch (e) { }

    return true;
}

function onFrameLoad() {
    main_right.document.charset = "utf-8";
    main_right.openWindow = function(url, nActiveMode) { MDIOpen(url, nActiveMode) };
    main_right.closeWindow = function() { MDIClose() };

    if (lAt != 1) MDIOpen('/');

    if (logPath != '') setTimeout("MDIOpen(logPath);", 0);
}

var pageLoad = 0;

function onContentLoad() {
    pageLoad++;
    if (pageLoad > 1) onFrameLoad();
}


function newHttpRequest() {
    var http = false;

    try {
        http = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            http = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            http = false;
        }
    }

    if (!http && typeof XMLHttpRequest != 'undefined') {
        try {
            http = new XMLHttpRequest();
        } catch (E) {
            http = false;
        }
    }
    return http;
}

function OnReadyStateChange() {
    if (xmlhttp.readyState == 4) {
        if (xmlhttp.status != 200) {
            delayCount = 100;
        } else {
            delayCount = 400;
        }
        xmlhttp = false;
    }
}

var grp = new Array();
var flist = new Array();


//String.prototype.Trim = function() { return this.replace(/(^\s*)|(\s*$)/g, ""); }
//String.prototype.toDate = function() { return eval('new Date(' + this.replace(/\d+(?=-[^-]+$)/, function($0) { return parseInt($0, 10) - 1; }).match(/\d+/g) + ')'); };
var logPath = '';
var lAt = 0;
var NewMail = 0;
var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
var isOpera = navigator.userAgent.indexOf('Opera') != -1;
var fuckAlexa = false;
var bFirst = true;

var CSKey;
var xmlhttp = false;
var delayCount = 0;

var OnlineFriend = 0;
var lUserId = 0;
var sel = (lUserId > 0) ? 1 : 0;

function onClubClick(id, str, url, isNode) {
    MDIOpen(url);
}

function onclickH(e) { return onclickHook(e ? e : menuContent); }
function onclickME(e) { return onclickHook(e ? e : window); }

var nowWindow = -1;
var nowStyle = "max";
var starTab = 0;
var maxWindow = 0;
var ocs = new Array();
var ocs_tab = new Array();
var wl = 80;

function onresizeH(e) {
    if (nowWindow == -1) return;
    var w = tabs.document.body.offsetWidth;
    var tabLists = tabs.document.getElementById("tab_list").childNodes;
    var nowStyle1 = "";

    if (w - 26 < tabLists.length * wl) {
        nowStyle1 = "min";
    } else {
        if (w > tabLists.length * 132) {
            nowStyle1 = "max";
        } else {
            nowStyle1 = "";
        }
    }

    var n = Math.floor(w / wl);
    var n1 = 0;
    for (var i = 0; i < tabLists.length; i++) {
        if (tabLists[i].id == "tab_" + nowWindow) {
            n1 = i;
            break;
        }
    }

    if (nowStyle1 == "min") {
        //alert("starTab=" + starTab + "\n" + "n=" + n + "\n" + "n1=" + n1 + "\n" + "tabLists.length=" + tabLists.length + "\n");
        if (starTab + n < n1 + 1) {
            for (var i = starTab; i < n1 + 1 - n; i++) {
                tabLists[i].style.display = "none";
                tabLists[i].className = "min"
            }
            starTab = n1 + 1 - n;
        } else if (starTab > tabLists.length - n && starTab > 0) {
            for (var i = tabLists.length - n; i <= starTab; i++) {
                tabLists[i].style.display = "";
                tabLists[i].className = "min"
            }
            starTab = tabLists.length - n;
        }
        else if (starTab > n1) {
            for (var i = n1; i < starTab; i++) {
                tabLists[i].style.display = "";
                tabLists[i].className = "min";
            }
            starTab = n1;
        }
        tabLists[starTab].className = (tabLists[starTab].id == "tab_" + nowWindow) ? "min1 here" : "min1";

        var tabStyle = tabs.document.styleSheets[0][(tabs.document.all) ? 'rules' : 'cssRules'];
        try {
            tabStyle[tabStyle.length - 1].style.width = Math.floor(w / n) + "px";
            tabStyle[tabStyle.length - 2].style.width = (Math.floor(w / n) + w % n) + "px";
        } catch (e) { }
    }

    if (nowStyle != nowStyle1) {
        nowStyle = nowStyle1;
        for (var i = 0; i < tabLists.length; i++) {
            if (nowStyle1 != "min") if (tabLists[i].style.display != "")
                tabLists[i].style.display = "";

            if (nowStyle1 != "min" || (nowStyle1 == "min" && i != starTab))
                tabLists[i].className = (tabLists[i].id == "tab_" + nowWindow) ? nowStyle + " here" : nowStyle;
        }
        if (nowStyle != "min") starTab = 0;
    }
}

onresize = onresizeH;

function onLefttab() {
    var tabLists = tabs.document.getElementById("tab_list").childNodes;
    MDISwitch(((starTab > 0) ? tabLists[starTab - 1].id : tabLists[0].id).substr(4));
}

function onRighttab() {
    var n = Math.floor(tabs.document.body.offsetWidth / wl);
    var tabLists = tabs.document.getElementById("tab_list").childNodes;
    MDISwitch(((starTab + n + 1 > tabLists.length) ? tabLists[tabLists.length - 1].id : tabLists[starTab + n].id).substr(4));
}

function onTabDblClock() {
    setTimeout("MDIClose();", 0);
}

function MDISwitch(i) {
    if (nowWindow == i) return false;

    var ow, nw;

    if (nowWindow != -1) {
        tabs.document.getElementById("tab_" + nowWindow).className = nowStyle;
        ow = main_right.document.getElementById("main_right_" + nowWindow);

        ow.scrollPos = 0;
        if (ow.Attached && ow.contentWindow) if (ow.contentWindow.document) if (ow.contentWindow.document.body)
            ow.scrollPos = ow.contentWindow.document.body.scrollTop;

        ow.LastAccess = (new Date()).getTime();
        ow.style.display = "none";
    }

    nw = main_right.document.getElementById("main_right_" + i);

    nw.style.display = "";

    try {
        if (nw.scrollPos)
            nw.contentWindow.scrollTo(0, nw.scrollPos);
    } catch (e) { };

    nowWindow = i;
    tabs.document.getElementById("tab_" + nowWindow).className = nowStyle + " here";

    onresizeH();

    return false;
}

function MDIClose() {
    var i, f, la = 0, lw;
    var tabLists = tabs.document.getElementById("tab_list").childNodes;

    if (nowWindow != -1) {
        for (i = 0; i < tabLists.length; i++) {
            if (tabLists[i].id == "tab_" + nowWindow)
                break;
        }

        tabs.document.getElementById("tab_list").removeChild(tabs.document.getElementById("tab_" + nowWindow));
        main_right.document.body.removeChild(main_right.document.getElementById("main_right_" + nowWindow));

        nowWindow = -1;
        if (tabLists.length) {
            var n = Math.floor(tabs.document.body.offsetWidth / wl);
            lw = ((i < tabLists.length) ? tabLists[i].id : tabLists[tabLists.length - 1].id).substr(4);
            //if (la)
            MDISwitch(lw);
        }
        else {
            onFrameLoad();
        }
    }
    return false;
}

function MDIRefresh() {
    var f;
    var l;

    f = main_right.document.getElementById("main_right_" + nowWindow);
    l = "";
    //alert(nowWindow);
    try {
        if (f)
            if (f.contentDocument)
            f.contentDocument.location = f.contentDocument.location;
        else eval("main_right.main_right_" + nowWindow).document.location = eval("main_right.main_right_" + nowWindow).document.location;
    } catch (e) { }
}

function MDILoadurl(url) {
    var f;
    var l;
    if (url.indexOf('http://') != 0) {
        if (url.indexOf('/') != 0) {
            url = "../" + url;
        }
    }
    f = main_right.document.getElementById("main_right_" + nowWindow);
    l = "";
    try {
        if (f)
            if (f.contentDocument)
            f.contentDocument.location = url;
        else l = eval("main_right.main_right_" + nowWindow).document.location = url;
    } catch (e) { }
}

function MDILoad(n, url) {
    var f;
    var l;

    f = main_right.document.getElementById("main_right_" + n);
    l = "";
    try {
        if (f)
            if (f.contentDocument)
            l = f.contentDocument.location = url;
        else l = eval("main_right.main_right_" + n).document.location = url;
    } catch (e) { }
}

function MDIOpen(url, nActiveMode) {
    if (typeof nActiveMode == 'undefined') nActiveMode = 1;
    if (nowWindow == -1) nActiveMode = 1;

    if (url.search(/http:\/\/[bu][0-9]+\.xici\.net\//i) == 0)
        url = "/" + url.substr(7, url.search(/\./i) - 7) + "/";

    if (url.charAt(0) == "/")
        url = "http://" + location.host + url;

    var i, f, l, l1, n;
    var url1 = url.toLowerCase();

    for (i = 0; i < maxWindow; i++) {
        f = main_right.document.getElementById("main_right_" + i);
        l = "";
        l1 = "";
        try {
            if (f)
                if (f.contentDocument)
                l = '' + f.contentDocument.location;
            else l = '' + eval("main_right.main_right_" + i).document.location;
        } catch (e) { }

        n = l.indexOf('?');
        if (n != -1) l1 = l.substr(0, n);

        if (l.toString().toLowerCase() == url1 || l1.toString().toLowerCase() == url1) {
            if (nowWindow != i) {
                if (nActiveMode) {
                    MDISwitch(i);
                    if (nActiveMode == 2)
                        setTimeout("main_right.document.getElementById(\"main_right_" + i + "\").src=\"" + url + "\"", 0);
                }
            } else setTimeout("main_right.document.getElementById(\"main_right_" + i + "\").src=\"" + url + "\"", 0);

            return;
        }
    }

    if (maxWindow > main_right.frames.length) {
        for (i = 0; i < maxWindow; i++)
            if (!main_right.document.getElementById("main_right_" + i))
            break;
    } else {
        i = maxWindow;
        maxWindow++;

        ocs[i] = new Function("return onclickHook(main_right.main_right_" + i + ");");
        ocs_tab[i] = new Function("MDISwitch(" + i + ");");
    }


    var nw = main_right.document.createElement("iframe");
    nw.width = "100%";
    nw.height = document.body.offsetHeight - 142;

    nw.frameBorder = 0;
    //	nw.scrolling = "yes"
    nw.id = "main_right_" + i;
    nw.LastAccess = (new Date()).getTime();
    //	nw.Attached = true;
    //nw.src = "Profile/Worktable.aspx";//<---
    nw.src = "loading.htm";
    nw.style.display = "none";


    if (isMSIE) {
        var ifHtml = nw.outerHTML;
        nw = main_right.document.createElement("div");
        nw.id = "main_right_" + i;
        main_right.document.body.appendChild(nw);
        main_right.document.getElementById("main_right_" + i).outerHTML = ifHtml;
    } else main_right.document.body.appendChild(nw);


    var td = tabs.document.createElement("td");
    td.className = nowStyle;
    //td.width = wl;
    td.id = "tab_" + i;
    td.onmousedown = ocs_tab[i];
    td.ondblclick = onTabDblClock;
    td.onmouseover = function() { this.className1 = this.className; if (this.className.indexOf("here") == -1) this.className += " over"; }
    td.onmouseout = function () { if (this.className.indexOf("here") == -1) { this.className = this.className1; } this.className1 = ""; }



    if (isOpera) {
        td.innerHTML = "<a href='javascript:void(0);'>　加载中…</a>";
    }
    else {
        td.innerHTML = '<div class="ch_m_l"><div class="ch_m_r"><span>加载中…</span><a href="javascript:parent.MDIRefresh();void(0);" title="刷新" class="ch_f5">刷新</a><a href="javascript:parent.MDIClose();void(0);" title="关闭" class="ch_close">关闭</a></div></div>';
    }

    try {
        if (document.getElementById("tab_" + nowWindow)) {
            tabs.document.getElementById("tab_list").insertBefore(td, tabs.document.getElementById("tab_" + nowWindow).nextSibling);
        }
        else {
            abs.document.getElementById("tab_list").appendChild(td);
        }
    } catch (e) {
        tabs.document.getElementById("tab_list").appendChild(td);
    }
    
    if (nActiveMode) MDISwitch(i);
    else onresizeH();
    setTimeout('MDILoad(' + i + ',"' + url + '");', 0);
}

function HtmlEncode(s) {
    var s1;
    s1 = s.replace(new RegExp('&', 'g'), '&amp;');
    s1 = s1.replace(new RegExp('<', 'g'), '&lt;');
    s1 = s1.replace(new RegExp('>', 'g'), '&gt;');

    return s1;
}


function onclickStatHook(e, srcElement) {
    var x = 0;
    var y = 0;
    var StatTag = "";
    var StatBlock = "";
    var CSKey, surl, elementtemp;
    var n = document.cookie.indexOf("SessionID");

    try {
        if ((typeof (e.lATimes) == 'undefined' && typeof (e.view.lATimes) == 'undefined') || n == -1)
            return;
    } catch (e) { return; }

    var IEorFF = (typeof (e.lATimes) != 'undefined') ? e.window.document : e.currentTarget;
    var Url = IEorFF.URL;

    CSKey = document.cookie.substr(n + 10, 16);

    if (srcElement.tagName.toLowerCase() == "input") {
        elementtemp = srcElement;
        while (elementtemp && elementtemp.tagName.toLowerCase() != "form" && elementtemp.parentNode != (e.document ? e.document : e.currentTarget))
            elementtemp = elementtemp.parentNode;
        if (elementtemp.tagName.toLowerCase() == "form")
            surl = elementtemp.action;
        else surl = "";
    }
    else {
        surl = srcElement.href.replace(";", "").replace("#", "");
    }
    while (srcElement && srcElement.parentNode != e.document && srcElement.tagName != "BODY") {
        if (srcElement.getAttribute("StatTag") && StatTag == "")
            StatTag = srcElement.getAttribute("StatTag");
        if (srcElement.getAttribute("StatBlock"))
            StatBlock += srcElement.getAttribute("StatBlock") + "_";
        srcElement = srcElement.parentNode;
    }
    if (document.cookie.indexOf("uid=") != -1 && document.cookie.indexOf("uid=0") == -1)
        Url = Url.substr(0, 12).replace("www", "user") + Url.substr(12);
}

function onclickHook(e) {
    try {
        var srcElement = e.target ? e.target : e.event.srcElement;
        while (srcElement && srcElement.tagName.toLowerCase() != "a" && srcElement.tagName.toLowerCase() != "area" && srcElement.tagName.toLowerCase() != "input" && srcElement.parentNode != (e.document ? e.document : e.currentTarget))
            srcElement = srcElement.parentNode;

        if ((srcElement.tagName.toLowerCase() == "input" && srcElement.getAttribute("type") != "submit") || !srcElement || srcElement.parentNode == e.document)
            return true;

        if (srcElement.onclick)
            if (srcElement.onclick.toString().indexOf("return") > -1)
            return;

        if (srcElement.getAttribute("bizinfo")) {
            try {
                var s = (typeof (e.lATimes) != 'undefined') ? e.window.document.createElement('script') : e.currentTarget.createElement('script');
                s.type = "text/javascript";
                if (typeof (e.lATimes) != 'undefined')
                    e.window.document.getElementsByTagName("HEAD").item(0).appendChild(s);
                else
                    e.currentTarget.getElementsByTagName("HEAD").item(0).appendChild(s);
            } catch (e) { }
        }
        onclickStatHook(e, srcElement);

        var hrefUrl = srcElement.href;
        var path = srcElement.getAttribute("path");

        if (typeof hrefUrl != 'undefined') {
            if (!path) {
                if (hrefUrl.substr(0, 11).toLowerCase() == "javascript:") return true;
                if (fuckAlexa && hrefUrl.search(/\.htm/i) > 0) {
                    if (e.document.oldclick)
                        e.document.oldclick();

                    return true;
                }

                path = hrefUrl;
                hrefUrl = '';
            } else {
                if (path.substr(0, 7) != "http://" && path.substr(0, 1) != "/") {
                    if (!e.location)
                        path = this.location.pathname.substring(0, this.location.pathname.lastIndexOf("/") + 1) + path;
                    else
                        path = e.location.pathname.substring(0, e.location.pathname.lastIndexOf("/") + 1) + path;
                }
            }

            if (path.search(/http:\/\/[bu][0-9]+\.xici\.net\//i) == 0)
                path = "/" + path.substr(7, path.search(/\./i) - 7) + "/";

            if (!srcElement.target || (srcElement.target.toLowerCase() != "_blank" && srcElement.target.toLowerCase() != "_self")) {
                if (srcElement.target.toLowerCase() == "_top") {
                    //document.cookie = "xicifrmact=1; domain=zoomla.cn; path=/;";
                    top.location = path;
                    return false;
                }

                if (e.document.oldclick)
                    e.document.oldclick();

                if (srcElement.target != "") {
                    window.open(path);
                    return false;
                }
                return true;
            }

            if (fuckAlexa && hrefUrl == '') {
                srcElement.href = 'javascript:void(0);';
                srcElement.target = "_self";
                srcElement.setAttribute("path", path);
                oca.push(srcElement);
            }
            MDIOpen(path);
            return false;
        }
    } catch (e) { }

    return true;
}

function onFrameLoad() {
    url = "Profile/Worktable.aspx";
    main_right.document.charset = "utf-8";
    main_right.openWindow = function(url, nActiveMode) { MDIOpen(url, nActiveMode) };
    main_right.closeWindow = function() { MDIClose() };

    if (lAt != 1) MDIOpen(url);

    if (logPath != '') setTimeout("MDIOpen(logPath);", 0);
}

var pageLoad = 0;

function onContentLoad() {
    pageLoad++;
    if (pageLoad > 1) onFrameLoad();
}

function newHttpRequest() {
    var http = false;
    try {
        http = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            http = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            http = false;
        }
    }

    if (!http && typeof XMLHttpRequest != 'undefined') {
        try {
            http = new XMLHttpRequest();
        } catch (E) {
            http = false;
        }
    }
    return http;
}


window.onload = function () {
    tipMes();
    document.getElementById("seled").selectedIndex = 0;
    javascript: SelectIndexChange('Content');

    if (document.getElementById(showtype + "Ico")) {
        SelectConfig(showtype + "Ico");
    }
    if (document.getElementById("oDIV1")) {
        switch (showtype) {
            case "All":
                var c = value1;
                var s = value2;
                var p = value3;
                var f = value4;
                var o = value5;
                var d = value6;
                for (var ii = 0; ii < c.length; ii++) {
                    document.getElementById("c" + (ii + 1)).checked = (c.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < s.length; ii++) {
                    document.getElementById("s" + (ii + 1)).checked = (s.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < p.length; ii++) {
                    document.getElementById("p" + (ii + 1)).checked = (p.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < f.length; ii++) {
                    document.getElementById("f" + (ii + 1)).checked = (f.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < o.length; ii++) {
                    document.getElementById("o" + (ii + 1)).checked = (o.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < d.length; ii++) {
                    document.getElementById("d" + (ii + 1)).checked = (d.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                break;
            case "Content":
                var cd = value1;
                var cn = value2;
                var cu = value3;
                var ck = value4;
                var cx = value5;
                for (var ii = 0; ii < cd.length; ii++) {
                    document.getElementById("cd" + (ii + 1)).checked = (cd.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < cn.length; ii++) {
                    document.getElementById("cn" + (ii + 1)).checked = (cn.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < cu.length; ii++) {
                    document.getElementById("cu" + (ii + 1)).checked = (cu.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < ck.length; ii++) {
                    document.getElementById("ck" + (ii + 1)).checked = (ck.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < cx.length; ii++) {
                    document.getElementById("cx" + (ii + 1)).checked = (cx.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                break;
            case "Shop":
                var sd = value1;
                var ss = value2;
                var su = value3;
                var sk = value4;
                var sx = value5;
                var sbi = value6;
                for (var ii = 0; ii < sd.length; ii++) {
                    document.getElementById("sd" + (ii + 1)).checked = (sd.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < ss.length; ii++) {
                    document.getElementById("ss" + (ii + 1)).checked = (ss.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < su.length; ii++) {
                    document.getElementById("su" + (ii + 1)).checked = (su.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < sk.length; ii++) {
                    document.getElementById("sk" + (ii + 1)).checked = (sk.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < sx.length; ii++) {
                    document.getElementById("sx" + (ii + 1)).checked = (sx.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < sbi.length; ii++) {
                    document.getElementById("sbi" + (ii + 1)).checked = (sbi.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                break;
            case "Page":
                var pd = value1;
                var pp = value2;
                var pu = value3;
                var pb = value4;
                var ps = value5;
                var pbi = value6;
                for (var ii = 0; ii < pd.length; ii++) {
                    document.getElementById("pd" + (ii + 1)).checked = (pd.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < pp.length; ii++) {
                    document.getElementById("pp" + (ii + 1)).checked = (pp.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < pu.length; ii++) {
                    document.getElementById("pu" + (ii + 1)).checked = (pu.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < pb.length; ii++) {
                    document.getElementById("pb" + (ii + 1)).checked = (pb.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < ps.length; ii++) {
                    document.getElementById("ps" + (ii + 1)).checked = (ps.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < pbi.length; ii++) {
                    document.getElementById("pbi" + (ii + 1)).checked = (pbi.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                break;
            case "Forum":
                var fpd = value1;
                var fb = value2;
                var ff = value3;
                var fbi = value4;

                for (var ii = 0; ii < fpd.length; ii++) {
                    document.getElementById("fpd" + (ii + 1)).checked = (fpd.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < fb.length; ii++) {
                    document.getElementById("fb" + (ii + 1)).checked = (fb.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < ff.length; ii++) {
                    document.getElementById("ff" + (ii + 1)).checked = (ff.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < fbi.length; ii++) {
                    document.getElementById("fbi" + (ii + 1)).checked = (fbi.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                break;
            case "OA":
                var od = value1;
                var ou = value2;
                var obi = value3;
                for (var ii = 0; ii < od.length; ii++) {
                    document.getElementById("od" + (ii + 1)).checked = (od.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < ou.length; ii++) {
                    document.getElementById("ou" + (ii + 1)).checked = (ou.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < obi.length; ii++) {
                    document.getElementById("obi" + (ii + 1)).checked = (obi.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                break;
            case "Config":
                var ccu = value1;
                var cp = value2;
                var ccx = value3;
                for (var ii = 0; ii < ccu.length; ii++) {
                    document.getElementById("ccu" + (ii + 1)).checked = (ccu.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < cp.length; ii++) {
                    document.getElementById("cp" + (ii + 1)).checked = (cp.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < ccx.length; ii++) {
                    document.getElementById("ccx" + (ii + 1)).checked = (ccx.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                break;
            case "Safe":
                var ccu = value1;
                var cp = value2;
                var ccx = value3;
                for (var ii = 0; ii < ccu.length; ii++) {
                    document.getElementById("Sacu" + (ii + 1)).checked = (ccu.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < cp.length; ii++) {
                    document.getElementById("sap" + (ii + 1)).checked = (cp.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                for (var ii = 0; ii < ccx.length; ii++) {
                    document.getElementById("sacx" + (ii + 1)).checked = (ccx.toString().substring(ii, ii + 1)) == "1" ? true : false;
                }
                break;

            //SelectConfig  
        }
    }
}

function OpenNewWin(url) {
    window.open(url);
}

function openurls(url) {
    Dialog.open({ URL: url });
}

function open_title(url, title) {
    var diag = new Dialog();
    diag.Width = 800;
    diag.Height = 600;
    diag.Title = title + "[ESC键退出当前操作]";
    diag.URL = url;
    diag.show();
}

function closdlg() {
    Dialog.close();
}

var NowImg = 1;
var bStart = 0;
var bStop = 0;


// ShowendAD('true');
function ShowendAD() {
    var ajax = new AJAXRequest;
    ajax.get("default.aspx?menu=ShowendAD", function(obj) {
    });
}

function gotourl(url) {
   // MDILoadurl(url); void (0);
	frames["main_right"].location=url; void (0);
}

function SelectConfig(sId) {
    var arraystr = ["AllIco", "ContentIco", "ShopIco", "PageIco", "ForumIco", "OAIco", "ConfigIco", "SafeIco"];
    for (var pi = 0; pi < arraystr.length; pi++) {
        var sstop = arraystr[pi].toString().substring(0, arraystr[pi].toString().length - 3);
        //alert(sId);
        if (sId == arraystr[pi]) {
            document.getElementById(sstop + 'radio').checked = true;
            document.getElementById(arraystr[pi]).src = "../App_Themes/AdminDefaultTheme/images/ControlPanel/" + sId + "/Show0.png";
        }
        else {

            document.getElementById(sstop + 'radio').checked = false;
            document.getElementById(arraystr[pi]).src = "../App_Themes/AdminDefaultTheme/images/ControlPanel/" + arraystr[pi] + "/Show1.png";
        }
    }
}
function Showtoolsup(vasto) {
    switch (vasto) {
        case 1:
            document.getElementById("oDIV2").style.display = "none";
            document.getElementById("oDIV1").style.display = "";
            break;
    }
}

function Showtools(vasto) {
    switch (vasto) {
        case 0:
            var lengthstr = document.getElementsByName("Radio1").length;
            for (var i = 0; i < lengthstr; i++) {
                if (document.getElementsByName("Radio1").item(i).checked) {
                    var selectradro = document.getElementsByName("Radio1").item(i).id;
                }
            }
            document.getElementById("oDIV1").style.display = "none";
            document.getElementById("oDIV2").style.display = "";

            if (document.getElementById("noshow").checked) {
                document.getElementById("noshow2").checked = true;
            }
            else {
                document.getElementById("noshow2").checked = false;
            }
            if (document.getElementById("Allradio").checked) {
                document.getElementById("ScanName").innerText = "[全部显示]";
                document.getElementById("AllTable").style.display = "";
                document.getElementById("ContentShow").style.display = "none";
                document.getElementById("ShopShow").style.display = "none";
                document.getElementById("PageShow").style.display = "none";
                document.getElementById("ForumShow").style.display = "none";
                document.getElementById("OAShow").style.display = "none";
                document.getElementById("ConfigShow").style.display = "none";
                document.getElementById("SafeShow").style.display = "none";
            }
            if (document.getElementById("Contentradio").checked) {
                document.getElementById("ScanName").innerText = "[内容管理]";
                document.getElementById("AllTable").style.display = "none";
                document.getElementById("ContentShow").style.display = "";
                document.getElementById("ShopShow").style.display = "none";
                document.getElementById("PageShow").style.display = "none";
                document.getElementById("ForumShow").style.display = "none";
                document.getElementById("OAShow").style.display = "none";
                document.getElementById("ConfigShow").style.display = "none";
                document.getElementById("SafeShow").style.display = "none";
            }
            if (document.getElementById("Shopradio").checked) {
                document.getElementById("ScanName").innerText = "[商城管理]";
                document.getElementById("AllTable").style.display = "none";
                document.getElementById("ContentShow").style.display = "none";
                document.getElementById("ShopShow").style.display = "";
                document.getElementById("PageShow").style.display = "none";
                document.getElementById("ForumShow").style.display = "none";
                document.getElementById("OAShow").style.display = "none";
                document.getElementById("ConfigShow").style.display = "none";
                document.getElementById("SafeShow").style.display = "none";
            }
            if (document.getElementById("Pageradio").checked) {
                document.getElementById("ScanName").innerText = "[黄页系统]";
                document.getElementById("AllTable").style.display = "none";
                document.getElementById("ContentShow").style.display = "none";
                document.getElementById("ShopShow").style.display = "none";
                document.getElementById("PageShow").style.display = "";
                document.getElementById("ForumShow").style.display = "none";
                document.getElementById("OAShow").style.display = "none";
                document.getElementById("ConfigShow").style.display = "none";
                document.getElementById("SafeShow").style.display = "none";
            }
            if (document.getElementById("Forumradio").checked) {
                document.getElementById("ScanName").innerText = "[教育教学]";
                document.getElementById("AllTable").style.display = "none";
                document.getElementById("ContentShow").style.display = "none";
                document.getElementById("ShopShow").style.display = "none";
                document.getElementById("PageShow").style.display = "none";
                document.getElementById("ForumShow").style.display = "";
                document.getElementById("OAShow").style.display = "none";
                document.getElementById("ConfigShow").style.display = "none";
                document.getElementById("SafeShow").style.display = "none";
            }
            if (document.getElementById("OAradio").checked) {
                document.getElementById("ScanName").innerText = "[智能办公]";
                document.getElementById("AllTable").style.display = "none";
                document.getElementById("ContentShow").style.display = "none";
                document.getElementById("ShopShow").style.display = "none";
                document.getElementById("PageShow").style.display = "none";
                document.getElementById("ForumShow").style.display = "none";
                document.getElementById("OAShow").style.display = "";
                document.getElementById("ConfigShow").style.display = "none";
                document.getElementById("SafeShow").style.display = "none";
            }
            if (document.getElementById("Configradio").checked) {
                document.getElementById("ScanName").innerText = "[配置场景]";
                document.getElementById("AllTable").style.display = "none";
                document.getElementById("ContentShow").style.display = "none";
                document.getElementById("ShopShow").style.display = "none";
                document.getElementById("PageShow").style.display = "none";
                document.getElementById("ForumShow").style.display = "none";
                document.getElementById("OAShow").style.display = "none";
                document.getElementById("ConfigShow").style.display = "";
                document.getElementById("SafeShow").style.display = "none";
            }
            if (document.getElementById("Saferadio").checked) {
                document.getElementById("ScanName").innerText = "[安全配置]";
                document.getElementById("AllTable").style.display = "none";
                document.getElementById("ContentShow").style.display = "none";
                document.getElementById("ShopShow").style.display = "none";
                document.getElementById("PageShow").style.display = "none";
                document.getElementById("ForumShow").style.display = "none";
                document.getElementById("OAShow").style.display = "none";
                document.getElementById("ConfigShow").style.display = "none";
                document.getElementById("SafeShow").style.display = "";
            }
            break;
        case 1:
            var urltxt = "";
            if (document.getElementById("Allradio").checked) {//所有
                var alltopvaluec = "";
                var alltopvalues = "";
                var alltopvaluep = "";
                var alltopvaluef = "";
                var alltopvalueo = "";
                var alltopvalued = "";
                for (var i = 1; i <= 5; i++) {
                    if (document.getElementById("c" + i + "").checked) {
                        alltopvaluec = alltopvaluec + 1;
                    }
                    else {
                        alltopvaluec = alltopvaluec + 0;
                    }
                }

                for (var i = 1; i <= 6; i++) {
                    if (document.getElementById("s" + i + "").checked) {
                        alltopvalues = alltopvalues + 1;
                    }
                    else {
                        alltopvalues = alltopvalues + 0;
                    }
                }

                for (var i = 1; i <= 6; i++) {
                    if (document.getElementById("p" + i + "").checked) {
                        alltopvaluep = alltopvaluep + 1;
                    }
                    else {
                        alltopvaluep = alltopvaluep + 0;
                    }
                }

                for (var i = 1; i <= 4; i++) {
                    if (document.getElementById("f" + i + "").checked) {
                        alltopvaluef = alltopvaluef + 1;
                    }
                    else {
                        alltopvaluef = alltopvaluef + 0;
                    }
                }

                for (var i = 1; i <= 3; i++) {
                    if (document.getElementById("o" + i + "").checked) {
                        alltopvalueo = alltopvalueo + 1;
                    }
                    else {
                        alltopvalueo = alltopvalueo + 0;
                    }
                }

                for (var i = 1; i <= 3; i++) {
                    if (document.getElementById("d" + i + "").checked) {
                        alltopvalued = alltopvalued + 1;
                    }
                    else {
                        alltopvalued = alltopvalued + 0;
                    }
                }

                urltxt = "action=All&c=" + alltopvaluec + "&s=" + alltopvalues + "&p=" + alltopvaluep + "&f=" + alltopvaluef + "&o=" + alltopvalueo + "&d=" + alltopvalued;

            }

            if (document.getElementById("Contentradio").checked) {//内容管理
                var alltopvaluecd = "";
                var alltopvaluecn = "";
                var alltopvaluecu = "";
                var alltopvalueck = "";
                var alltopvaluecx = "";

                if (document.getElementById("cd1").checked) {
                    alltopvaluecd = alltopvaluecd + 1;
                }
                else {
                    alltopvaluecd = alltopvaluecd + 0;
                }

                for (var i = 1; i <= 10; i++) {
                    if (document.getElementById("cn" + i + "").checked) {
                        alltopvaluecn = alltopvaluecn + 1;
                    }
                    else {
                        alltopvaluecn = alltopvaluecn + 0;
                    }
                }

                for (var i = 1; i <= 10; i++) {
                    if (document.getElementById("cu" + i + "").checked) {
                        alltopvaluecu = alltopvaluecu + 1;
                    }
                    else {
                        alltopvaluecu = alltopvaluecu + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("ck" + i + "").checked) {
                        alltopvalueck = alltopvalueck + 1;
                    }
                    else {
                        alltopvalueck = alltopvalueck + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("cx" + i + "").checked) {
                        alltopvaluecx = alltopvaluecx + 1;
                    }
                    else {
                        alltopvaluecx = alltopvaluecx + 0;
                    }
                }
                urltxt = "action=Content&cd=" + alltopvaluecd + "&cn=" + alltopvaluecn + "&cu=" + alltopvaluecu + "&ck=" + alltopvalueck + "&cx=" + alltopvaluecx;
            }


            if (document.getElementById("Shopradio").checked) {//商城管理
                var alltopvaluesd = "";
                var alltopvaluess = "";
                var alltopvaluesu = "";
                var alltopvaluesk = "";
                var alltopvaluesx = "";
                var alltopvaluesbi = "";

                if (document.getElementById("sd1").checked) {
                    alltopvaluesd = alltopvaluesd + 1;
                }
                else {
                    alltopvaluesd = alltopvaluesd + 0;
                }

                for (var i = 1; i <= 14; i++) {
					if(document.getElementById("ss" + i + ""))
					{
						if (document.getElementById("ss" + i + "").checked) {
							alltopvaluess = alltopvaluess + 1;
						}
						else {
							alltopvaluess = alltopvaluess + 0;
						}
					}
					else
					{
						alltopvaluess = alltopvaluess + 0;
					}
                }
                for (var i = 1; i <= 10; i++) {
                    if (document.getElementById("su" + i + "").checked) {
                        alltopvaluesu = alltopvaluesu + 1;
                    }
                    else {
                        alltopvaluesu = alltopvaluesu + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("sk" + i + "").checked) {
                        alltopvaluesk = alltopvaluesk + 1;
                    }
                    else {
                        alltopvaluesk = alltopvaluesk + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("sx" + i + "").checked) {
                        alltopvaluesx = alltopvaluesx + 1;
                    }
                    else {
                        alltopvaluesx = alltopvaluesx + 0;
                    }
                }
                for (var i = 1; i <= 7; i++) {
					if(document.getElementById("sbi" + i + ""))
					{
						if (document.getElementById("sbi" + i + "").checked) {
							alltopvaluesbi = alltopvaluesbi + 1;
						}
						else {
							alltopvaluesbi = alltopvaluesbi + 0;
						}
					}else
					{
					    alltopvaluesbi = alltopvaluesbi + 0;
					}
                }
                urltxt = "action=Shop&sd=" + alltopvaluesd + "&ss=" + alltopvaluess + "&su=" + alltopvaluesu + "&sk=" + alltopvaluesk + "&sx=" + alltopvaluesx + "&sbi=" + alltopvaluesbi;
            }


            if (document.getElementById("Pageradio").checked) {//黄页系统
                var alltopvaluepd = "";
                var alltopvaluepp = "";
                var alltopvaluepu = "";
                var alltopvaluepb = "";
                var alltopvalueps = "";
                var alltopvaluepbi = "";
                var alltopvalueff = "";
                if (document.getElementById("pd1").checked) {
                    alltopvaluepd = alltopvaluepd + 1;
                }
                else {
                    alltopvaluepd = alltopvaluepd + 0;
                }

                for (var i = 1; i <= 7; i++) {
                    if (document.getElementById("pp" + i + "").checked) {
                        alltopvaluepp = alltopvaluepp + 1;
                    }
                    else {
                        alltopvaluepp = alltopvaluepp + 0;
                    }
                }
                for (var i = 1; i <= 10; i++) {
                    if (document.getElementById("pu" + i + "").checked) {
                        alltopvaluepu = alltopvaluepu + 1;
                    }
                    else {
                        alltopvaluepu = alltopvaluepu + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("pb" + i + "").checked) {
                        alltopvaluepb = alltopvaluepb + 1;
                    }
                    else {
                        alltopvaluepb = alltopvaluepb + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("ps" + i + "").checked) {
                        alltopvalueps = alltopvalueps + 1;
                    }
                    else {
                        alltopvalueps = alltopvalueps + 0;
                    }
                }

                for (var i = 1; i <= 5; i++) {
                    if (document.getElementById("pbi" + i + "").checked) {
                        alltopvaluepbi = alltopvaluepbi + 1;
                    }
                    else {
                        alltopvaluepbi = alltopvaluepbi + 0;
                    }
                }

                urltxt = "action=Page&pd=" + alltopvaluepd + "&pp=" + alltopvaluepp + "&pu=" + alltopvaluepu + "&pb=" + alltopvaluepb + "&ps=" + alltopvalueps + "&pbi=" + alltopvaluepbi;
            }
            if (document.getElementById("Forumradio").checked) {//教育教学
                var alltopvaluefpd = "";
                var alltopvaluefb = "";

                var alltopvaluefbi = "";

                var alltopvalueff = "";
                if (document.getElementById("fpd1").checked) {
                    alltopvaluefpd = alltopvaluefpd + 1;
                }
                else {
                    alltopvaluefpd = alltopvaluefpd + 0;
                }

                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("fb" + i + "").checked) {
                        alltopvaluefb = alltopvaluefb + 1;
                    }
                    else {
                        alltopvaluefb = alltopvaluefb + 0;
                    }
                }

                for (var i = 1; i <= 5; i++) {
                    if (document.getElementById("fbi" + i + "").checked) {
                        alltopvaluefbi = alltopvaluefbi + 1;
                    }
                    else {
                        alltopvaluefbi = alltopvaluefbi + 0;
                    }
                }



                for (var i = 1; i <=7; i++) {

                    if (document.getElementById("ff" + i).checked) {
                        alltopvalueff = alltopvalueff + 1;
                    }
                    else {
                        alltopvalueff = alltopvalueff + 0;
                    }

                }

                urltxt = "action=Forum&fpd=" + alltopvaluefpd + "&ff=" + alltopvalueff + "&fb=" + alltopvaluefb + "&fbi=" + alltopvaluefbi;

            }
            if (document.getElementById("OAradio").checked) {//智能办公
                var alltopvalueod = "";
                var alltopvalueou = "";
                var alltopvalueobi = "";

                if (document.getElementById("od1").checked) {
                    alltopvalueod = alltopvalueod + 1;
                }
                else {
                    alltopvalueod = alltopvalueod + 0;
                }

                for (var i = 1; i <= 10; i++) {
                    if (document.getElementById("ou" + i + "").checked) {
                        alltopvalueou = alltopvalueou + 1;
                    }
                    else {
                        alltopvalueou = alltopvalueou + 0;
                    }
                }
                for (var i = 1; i <= 7; i++) {
                    if (document.getElementById("obi" + i + "").checked) {
                        alltopvalueobi = alltopvalueobi + 1;
                    }
                    else {
                        alltopvalueobi = alltopvalueobi + 0;
                    }
                }
                urltxt = "action=OA&od=" + alltopvalueod + "&ou=" + alltopvalueou + "&obi=" + alltopvalueobi;

            }
            if (document.getElementById("Configradio").checked) {//配置场景
                var alltopvalueccu = "";
                var alltopvaluecp = "";
                var alltopvalueccx = "";

                for (var i = 1; i <= 10; i++) {
                    if (document.getElementById("ccu" + i + "").checked) {
                        alltopvalueccu = alltopvalueccu + 1;
                    }
                    else {
                        alltopvalueccu = alltopvalueccu + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("cp" + i + "").checked) {
                        alltopvaluecp = alltopvaluecp + 1;
                    }
                    else {
                        alltopvaluecp = alltopvaluecp + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("ccx" + i + "").checked) {
                        alltopvalueccx = alltopvalueccx + 1;
                    }
                    else {
                        alltopvalueccx = alltopvalueccx + 0;
                    }
                }
                urltxt = "action=Config&ccu=" + alltopvalueccu + "&cp=" + alltopvaluecp + "&ccx=" + alltopvalueccx;
            }
            if (document.getElementById("Saferadio").checked) {//配置场景
                var alltopvalueccu = "";
                var alltopvaluecp = "";
                var alltopvalueccx = "";

                for (var i = 1; i <= 10; i++) {
                    if (document.getElementById("Sacu" + i + "").checked) {
                        alltopvalueccu = alltopvalueccu + 1;
                    }
                    else {
                        alltopvalueccu = alltopvalueccu + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("sap" + i + "").checked) {
                        alltopvaluecp = alltopvaluecp + 1;
                    }
                    else {
                        alltopvaluecp = alltopvaluecp + 0;
                    }
                }
                for (var i = 1; i <= 9; i++) {
                    if (document.getElementById("sacx" + i + "").checked) {
                        alltopvalueccx = alltopvalueccx + 1;
                    }
                    else {
                        alltopvalueccx = alltopvalueccx + 0;
                    }
                }
                urltxt = "action=Safe&SacUser=" + alltopvalueccu + "&SaPlub=" + alltopvaluecp + "&sacSystem=" + alltopvalueccx;
            }

            var noshow = 0;
            if (document.getElementById("noshow2").checked) {
                noshow = 1;
            }
            if (noshow == 1) {
                location.href = "default.aspx?menu=ShowendAD&noshow=" + noshow + "&" + urltxt;
            }
            else {
                location.href = "default.aspx?menu=ShowAD&noshow=" + noshow + "&" + urltxt;
            }
            break;
    }
}

//var MSG = new CLASS_MSN_MESSAGE("aa", 200, 120, "短消息提示：", "您有1封消息", "今天请我吃饭哈");
//MSG.show()

/*  
*    消息构造  
*/
function CLASS_MSN_MESSAGE(id, width, height, caption, title, message, target, action) {
    this.id = id;
    this.title = title;
    this.caption = caption;
    this.message = message;
    this.target = target;
    this.action = action;
    this.width = width ? width : 200;
    this.height = height ? height : 120;
    this.timeout = 150;
    this.speed = 20;
    this.step = 1;
    this.right = screen.width - 1;
    this.bottom = screen.height;
    this.left = this.right - this.width;
    this.top = this.bottom - this.height;
    this.timer = 0;
    this.pause = false;
    this.close = false;
}

/*  
*    隐藏消息方法  
*/
CLASS_MSN_MESSAGE.prototype.hide = function() {
    if (this.onunload()) {

        var offset = this.height > this.bottom - this.top ? this.height : this.bottom - this.top;
        var me = this;

        if (this.timer > 0) {
            window.clearInterval(me.timer);
        }

        var fun = function() {
            if (me.pause == false || me.close) {
                var x = me.left;
                var y = 0;
                var width = me.width;
                var height = 0;
                if (me.offset > 0) {
                    height = me.offset;
                }

                y = me.bottom - height;

                if (y >= me.bottom) {
                    window.clearInterval(me.timer);
                    me.Pop.hide();
                } else {
                    me.offset = me.offset - me.step;
                }
                me.Pop.show(x, y, width, height);
            }
        }

        this.timer = window.setInterval(fun, this.speed)
    }
}

/*  
*    消息卸载事件，可以重写  
*/
CLASS_MSN_MESSAGE.prototype.onunload = function() {
    return true;
}
/*  
*    消息命令事件，要实现自己的连接，请重写它  
*  
*/
CLASS_MSN_MESSAGE.prototype.oncommand = function() {
    this.hide();
}

/*  
*    消息显示方法  
*/
CLASS_MSN_MESSAGE.prototype.show = function() {

    var oPopup = window.createPopup(); //IE5.5+  

    this.Pop = oPopup;

    var w = this.width;
    var h = this.height;
    var str = "<DIV style='BORDER-RIGHT: #455690 1px solid; BORDER-TOP: #a6b4cf 1px solid; Z-INDEX: 99999; LEFT: 0px; BORDER-LEFT: #a6b4cf 1px solid; WIDTH: " + w + "px; BORDER-BOTTOM: #455690 1px solid; POSITION: absolute; TOP: 0px; HEIGHT: " + h + "px; BACKGROUND-COLOR: #c9d3f3'>"
    str += "<TABLE style='BORDER-TOP: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid' cellSpacing=0 cellPadding=0 width='100%' bgColor=#E0F7E5 border=0>"
    str += "<TR>"
    str += "<TD style='FONT-SIZE: 12px;COLOR: #0f2c8c' width=30 height=24></TD>"
    str += "<TD style='PADDING-LEFT: 4px; FONT-WEIGHT: normal; FONT-SIZE: 12px; COLOR: #1f336b; PADDING-TOP: 4px' vAlign=center width='100%'>" + this.caption + "</TD>"
    str += "<TD style='PADDING-RIGHT: 2px; PADDING-TOP: 2px' vAlign=center align=right width=19>"
    str += "<SPAN title=关闭 style='FONT-WEIGHT: bold; FONT-SIZE: 12px; CURSOR: hand; COLOR: red; MARGIN-RIGHT: 4px' id='btSysClose' >×</SPAN></TD>"
    str += "</TR>"
    str += "<TR>"
    str += "<TD style='PADDING-RIGHT: 1px;PADDING-BOTTOM: 1px' colSpan=3 height=" + (h - 28) + ">"
    str += "<DIV style='BORDER-RIGHT: #89F376 1px solid; PADDING-RIGHT: 8px; BORDER-TOP: #1E860B 1px solid; PADDING-LEFT: 8px; FONT-SIZE: 12px; PADDING-BOTTOM: 8px; BORDER-LEFT: #1E860B 1px solid; WIDTH: 100%; COLOR: #1E860B; PADDING-TOP: 8px; BORDER-BOTTOM: #89F376 1px solid; HEIGHT: 100%'>" + this.title + "<BR><BR>"
    str += "<DIV style='WORD-BREAK: break-all' align=left>" + this.message + "</DIV>"
    str += "</DIV>"
    str += "</TD>"
    str += "</TR>"
    str += "</TABLE>"
    str += "</DIV>"

    oPopup.document.body.innerHTML = str;


    this.offset = 0;
    var me = this;

    oPopup.document.body.onmouseover = function() { me.pause = true; }
    oPopup.document.body.onmouseout = function() { me.pause = false; }

    var fun = function() {
        var x = me.left;
        var y = 0;
        var width = me.width;
        var height = me.height;

        if (me.offset > me.height) {
            height = me.height;
        } else {
            height = me.offset;
        }

        y = me.bottom - me.offset;
        if (y <= me.top) {
            me.timeout--;
            if (me.timeout == 0) {
                window.clearInterval(me.timer);
                me.hide();
            }
        } else {
            me.offset = me.offset + me.step;
        }
        me.Pop.show(x, y, width, height);

    }

    this.timer = window.setInterval(fun, this.speed)

    var btClose = oPopup.document.getElementById("btSysClose");

    btClose.onclick = function() {
        me.close = true;
        me.hide();
    }

    var btCommand = oPopup.document.getElementById("btCommand");
    btCommand.onclick = function() {
        me.oncommand();
    }
}
/* 
** 设置速度方法 
**/
CLASS_MSN_MESSAGE.prototype.speed = function(s) {
    var t = 20;
    try {
        t = praseInt(s);
    } catch (e) { }
    this.speed = t;
}
/* 
** 设置步长方法 
**/
CLASS_MSN_MESSAGE.prototype.step = function(s) {
    var t = 1;
    try {
        t = praseInt(s);
    } catch (e) { }
    this.step = t;
}

CLASS_MSN_MESSAGE.prototype.rect = function(left, right, top, bottom) {
    try {
        this.left = left != null ? left : this.right - this.width;
        this.right = right != null ? right : this.left + this.width;
        this.bottom = bottom != null ? (bottom > screen.height ? screen.height : bottom) : screen.height;
        this.top = top != null ? top : this.bottom - this.height;
    } catch (e) { }
}