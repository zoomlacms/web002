var w3c = (document.getElementByIdx) ? true : false;
var agt = navigator.userAgent.toLowerCase();
var ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1) && (agt.indexOf("omniweb") == -1));

function IeTrueBody() {
    return (document.compatMode && document.compatMode != "BackCompat") ? document.documentElement : document.body;
}

function GetScrollTop() {
    return ie ? IeTrueBody().scrollTop : window.pageYOffset;
}

function GetScrollLeft() {
    return ie ? IeTrueBody().scrollLeft : window.pageXOffset;
}

var req;
var AjAXflag = false;
function createreq() {
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
    //  alert(url);
    if (!req) {
        createreq();
    }

    req.open("GET", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
    req.onreadystatechange = callback; //指定回调函数
    req.send(null); //

}


var mousex = 0;
var mousey = 0;
function blockORnone(i, aid, divid) {
    var a = document.getElementById(aid);
    var div = document.getElementById(divid);
		var ss=document.getElementById("ss");

    if (div.style.display == "block") {
        AjAXflag = false;
        tjAjax("PcutUpdate.aspx?type=1&&isVisble=0&&id=" + i);
        //if (AjAXflag) {
        div.style.display = "none";
        a.title = "展开内容";
        a.className = " aPic bgImg5";
        //}

    } else {
        AjAXflag = false;
        tjAjax("PcutUpdate.aspx?type=1&&isVisble=1&&id=" + i);
        //if (AjAXflag) {
        div.style.display = "block";
        a.title = "收起内容";
        a.className = " aPic bgImg4";
        //}
    }

}





function editCut(id, atitle, aedit) {
    //mouseUp(window.event);
    var title = document.getElementById(atitle);
    var edit = document.getElementById(aedit);
    //var drlist = document.getElementById(drlist);
    var editDiv = document.getElementById("editDiv");
    var inputTitle = document.getElementById("inputTitle");
    var top = 0;
    var left = 0;
    var width = 0;
    var height = 0;

    width = editDiv.style.width.substr(0, editDiv.style.width.length - 2);
    height = editDiv.style.height.substr(0, editDiv.style.height.length - 2);

    top = mousey - height / 2;
    left = mousex - width / 2;
    //alert(top+":"+left+title.innerText);
    inputTitle.innerText = title.innerText;
    document.getElementById("editxtId").value = id;
    document.getElementById("titleaid").value = atitle;

    editDiv.style.display = "block";
    editDiv.style.top = top + "px";
    editDiv.style.left = left + "px"

}
function editOK() {
    var txtid = document.getElementById("editxtId").value;
    var txttitle = document.getElementById("ediText").value;
    if (txttitle == null || (txttitle != null && txttitle.lenth == 0)) {
        txttitle = "请输入标题";
    }

    url = "PcutUpdate.aspx?type=2&&id=" + txtid + "&&menuid=" + QueryString("menuid") + "&&title=" + escape(txttitle);
    AjAXflag = false;
    tjAjax(url);
    //if (AjAXflag) {
    var atitle = document.getElementById("titleaid").value;
    hiddendiv("editDiv");
    document.getElementById(atitle).innerText = txttitle;
    //}
}

function mouseUp() {
    mousex = window.event.x;
    mousey = window.event.y;

}
function closeDiv(i, divid) {

    if (confirm("你确定要删除吗？")) {
        AjAXflag = false;
        tjAjax("PcutUpdate.aspx?type=3&&id=" + i);
        //if (AjAXflag) {
        hiddendiv(divid)
        // }
        //return true;
    } else {
        //return false;
    }
}
function maxCut(atitle, iframecut, cuthidden) {
    var maxTitle = document.getElementById("maxTitle");
    var title = document.getElementById(atitle);
    var iframecut = document.getElementById(iframecut);
    var iframemax = document.getElementById("iframemax");
    var maxCut = document.getElementById("maxCut");
    var cuthidden = document.getElementById(cuthidden);
    var maxcuthidden = document.getElementById("maxcuthidden");
    var maxdivtitle = document.getElementById("maxdivtitle");
    var width = 0;
    var height = 0;
    //alert(window.screen.availWidth+":"+window.screen.availHeight+"\n"+window.screen.width+":"+window.screen.height+"\n"
    //+window.screen.availTop+":"+window.screen.availLeft);
    width = window.screen.availWidth - 40;
    height = window.screen.availHeight - 160;

    maxTitle.innerText = title.innerText;
    maxdivtitle.style.width = width;
    maxcuthidden.style.width = cuthidden.style.width;
    maxcuthidden.style.height = cuthidden.style.height;
    iframemax.src = iframecut.src;
    iframemax.style.marginTop = iframecut.style.marginTop;
    iframemax.style.marginLeft = iframecut.style.marginLeft;
    maxCut.style.width = width;
    maxCut.style.height = height;
    maxCut.style.top = "0";
    maxCut.style.left = "0";
    maxCut.style.display = "block";

}
function hiddendiv(divid) {
    var div = document.getElementById(divid);
    div.style.display = "none";
}
function showdiv(divid) {
    var div = document.getElementById(divid);
    div.style.display = "block";
}
function addcut() {
    showdiv("CutUrl");
    var main = document.getElementById('CutIframe');
    //main.style.width = screen.availWidth;
    //document.getElementById("CutUrl").style.width = screen.availWidth;
    var url = document.getElementById('txtUrl').value;
    main.src = "Pcuting.aspx?menuid=" + QueryString("menuid") + "&&url=" + url;
}
function resetcut() {

    document.getElementById('txtUrl').value = "";
}
function resetadd() {

    document.getElementById('ass').value = "";
    document.getElementById('address_title').value = "";
}	


