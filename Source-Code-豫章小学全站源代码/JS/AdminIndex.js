var displaymode = 0;
var StyleSheetPath, _BasePath, _adminPath, _adminName;
function setStyleSheetPath(path) { StyleSheetPath = path; }
function setBasePath(basepath, adminpath) { _BasePath = basepath; _adminPath = adminpath; }
function setAdminName(adminname) { _adminName = adminname; };
//修改IE下document.getElementById在id和name同名时的bug
if (/msie/i.test(navigator.userAgent)) //根据userAgent确定用户使用IE浏览器
{
    document.nativeGetElementById = document.getElementById;
    document.getElementById = function (id) {
        var elem = document.nativeGetElementById(id);
        if (elem) {              //修改后的确认能得到id属性方法 
            if (elem.attributes['id'].value == id) {
                return elem;
            } else {                  //如果没有ID相同的,那么就遍历所有元素的集合找到id相同的元素
                for (var i = 1; i < document.all[id].length; i++) {
                    if (document.all[id][i].attributes['id'].value == id) {
                        return document.all[id][i];
                    }
                }
            }
        }
        return null;
    };
}

//存储菜单
function setCookie(name, value, expires, path, domain, secure) {
    var today = new Date();
    today.setTime(today.getTime());
    if (expires) {
        expires = expires * 1000 * 60 * 60 * 24;
    }
    var expires_date = new Date(today.getTime() + (expires)); 
    document.cookie = name + '=' + escape(value) + ((expires) ? ';expires=' + expires_date.toGMTString() : '') + ((path) ? ';path=' + path : '') + ((domain) ? ';domain=' + domain : '') + ((secure) ? ';secure' : '');
}

//读取菜单
function getCookie(name) {
    if (document.cookie.length > 0) {
        cookieStart = document.cookie.indexOf(name+"=")
        if (cookieStart != -1) {
            cookieStart = cookieStart + name.length + 1
            cookieEnd = document.cookie.indexOf(";", cookieStart)
            if (cookieEnd == -1) cookieEnd = document.cookie.length
            return unescape(document.cookie.substring(cookieStart, cookieEnd))
        }
    }
    return "";
}

//初始化菜单
function frameSizeSet() {
    var width = document.documentElement.clientWidth - 205;
    var lHeight = document.documentElement.clientHeight - 130;
    var rHeight = lHeight - (jQuery("#FrameTabs").height() || 0);
    document.getElementById("main_right").style.width = width > 0 ? width : 0;
    document.getElementById("left").style.height = lHeight > 0 ? lHeight : 0;
}

function jumpto(inputurl) {
    if (document.getElementById && displaymode == 0)
        document.getElementById("main_right").src = inputurl
    else if (document.all && displaymode == 0)
        document.all.external.src = inputurl;
    else {
        if (!window.win2 || win2.closed)
            win2 = window.open(inputurl);
        else {
        }
    }
}

//创建菜单缓存
function CreateSideBarCookie() {
    var SideBarKey = document.getElementById("left").src.substring(document.getElementById("left").src.lastIndexOf('/') + 1, document.getElementById("left").src.lastIndexOf('.'));
    var SideBarValue;
    if (document.getElementById("frmTitle")) {
        if (document.getElementById("frmTitle").style.display == "") {
            SideBarValue = "block";
        }
        else {
            SideBarValue = document.getElementById("frmTitle").style.display;
        }
    }
    try {
        var existentSideBarCookie = getCookie("SideBarCookie");
        if (SideBarKey.length != 0 && SideBarValue.length != 0) {
            var temp = "";
            var SideBarKV = existentSideBarCookie;
            if (existentSideBarCookie.length != 0) {
                if (SideBarKV.indexOf(SideBarKey) != -1) {
                    var arrKV = existentSideBarCookie.split("&");
                    for (var v in arrKV) {
                        if (arrKV[v].indexOf(SideBarKey) != -1) {
                            temp = existentSideBarCookie.replace(arrKV[v], SideBarKey + "=" + SideBarValue);
                        }
                    }
                }
                else {
                    temp = SideBarKey + "=" + SideBarValue + "&" + existentSideBarCookie;
                }
            }
            else {
                temp = SideBarKey + "=" + SideBarValue;
            }
            setCookie("SideBarCookie", temp, 300, "/", "", false);
        }
        else {
            return "";
        }
    }
    catch (Error) { }
}

//恢复菜单
function InitSideBarState() {
    try {
        var existentSideBarCookie = getCookie("SideBarCookie");
        var SideBarKey = document.getElementById("left").src.substring(document.getElementById("left").src.lastIndexOf('/') + 1, document.getElementById("left").src.lastIndexOf('.'));
        if (existentSideBarCookie.length != '' && SideBarKey.length != '' && existentSideBarCookie.indexOf(SideBarKey) != -1) {
            var arrKV = existentSideBarCookie.split("&");
            for (var v in arrKV) {
                if (arrKV[v].indexOf(SideBarKey) != -1) {
                    var currentValue = arrKV[v].split("=");
                    ChangeSideBarState(currentValue[1]);
                }
            }
        }
        else {
            var obj = document.getElementById("switchPoint");
            obj.alt = "关闭左栏";
            obj.src = "/Images/butClose.gif";
            document.getElementById("frmTitle").style.display = "block";
            frameSizeSet();
            resizeFrame();
        }
    }
    catch (Error) { }
}

//显示或隐藏菜单
function ChangeSideBarState(temp) {
    var obj = document.getElementById("switchPoint");
    if (temp == "none") {
        obj.alt = "打开左栏";
        obj.src = "Images/butOpen.gif";
        document.getElementById("frmTitle").style.display = "none";
        var width, height;
        width = document.body.clientWidth - 12;
        height = document.body.clientHeight - 70;
       // document.getElementById("main_right").style.height = height;
        document.getElementById("main_right").style.width = width;
        document.getElementById("FrameTabs").style.width = width;
        if (CheckFramesScroll) { CheckFramesScroll(); }
    }
    else {
        obj.alt = "关闭左栏";
        obj.src = "Images/butClose.gif";
        document.getElementById("frmTitle").style.display = "block";
        frameSizeSet();
    }
}

//显示菜单及内容
function ShowMain(FileName_Left, FileName_Right) {
    var temp;
    if (FileName_Left != "") {
        var checkLeftUrl = CheckCurrentLeftUrl(FileName_Left);
        if (checkLeftUrl == "false") {
            temp = document.getElementById("left");
            temp.src = FileName_Left + GetUrlParm(FileName_Left);
            temp.contentWindow.window.name = "left";
            frames["left"] = temp.contentWindow.window;
        }
    }
    if (FileName_Right != "") {
        temp = document.getElementById("main_right");
        temp.src = FileName_Right + GetUrlParm(FileName_Right);
        temp.contentWindow.window.name = "main_right";
        frames["main_right"] = temp.contentWindow.window;
    }
    InitSideBarState();
}

function CheckCurrentLeftUrl(leftUrl) {
    var src = document.getElementById("left").src;
    var regex = /\s*[\?&]{1,1}x=[0-9]{1,}$/;
    var currentLeftUrl = src.replace(regex, '');
    if (currentLeftUrl.lastIndexOf(leftUrl) >= 0) {
        if (currentLeftUrl.lastIndexOf(leftUrl) == (currentLeftUrl.length - leftUrl.length)) {
            return "true";
        }
    }
    return "false";
}

function GetUrlParm(url) {
    return ""; //20111107
    var urlparm = "?";
    if (url.indexOf('?') >= 0) {
        urlparm = "&";
    }
    urlparm = urlparm + "x=" + GetRandomNum();
    return urlparm;
}

function GetRandomNum() {
    var Range = 1000;
    var Rand = Math.random();
    return (Math.round(Rand * Range));
}

function switchSysBar() {
    var obj = document.getElementById("switchPoint");
    if (obj.alt == "关闭左栏") {
        obj.alt = "打开左栏";
        obj.src = "/Images/butOpen.gif";
        document.getElementById("frmTitle").style.display = "none";
        var width, height;
        width = document.body.clientWidth - 12;
        height = document.body.clientHeight - 70;
       // document.getElementById("main_right").style.height = height;
        document.getElementById("main_right").style.width = width;
        document.getElementById("FrameTabs").style.width = width;
        if (CheckFramesScroll) { CheckFramesScroll(); }
    }
    else {
        obj.alt = "关闭左栏";
        obj.src = "/Images/butClose.gif";
        document.getElementById("frmTitle").style.display = "";
        frameSizeSet();
    }
    CreateSideBarCookie();
}