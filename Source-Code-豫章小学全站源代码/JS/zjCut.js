

 var ZJnodes;

function   JZLoad() {
    var con_zjAdd_lc = document.getElementById("con_zjAdd_lc");
    var nodes = con_zjAdd_lc.getElementsByTagName("li");
    ZJnodes = new Array(nodes.length);
    ZJnodes[0] = "/User/UserZone/LogManage/SelfLogManage.aspx";
    ZJnodes[1] = "/User/UserZone/Pic/CategList.aspx";
    ZJnodes[2] = "/User/Info/UserInfo.aspx";
     ZJnodes[3] ="http://www.jiayuan.com/";
     ZJnodes[4] = "http://www.hao123.com/";
     ZJnodes[5] = "http://www.tudou.com/";
     ZJnodes[6] = "/login.aspx";
     ZJnodes[7] = "http://www.baidu.com/";
     ZJnodes[8] = "http://www.google.com.hk/";
     ZJnodes[9] = "/User/userzone/cut/ModulePut.aspx";
     ZJnodes[10] = "/User/userzone/cut/ModuleTerrace.aspx";
     ZJnodes[11] = "http://www.qq.com/";
     ZJnodes[12] = "http://www.kugou.com/";
     ZJnodes[13] = "http://mail.sina.com.cn/";
     ZJnodes[14] = "http://weibo.com/";
    ZJnodes[15] = "http://www.weather.com.cn/weather/101240101.shtml";
    
}



var xmlhttpobj;
function zjdbAdd(index, str) {
    var reqUrl = "HandCut.ashx?url=" + index + "&title=" + escape(str);
    if (window.XMLHttpRequest) {
        xmlhttpobj = new XMLHttpRequest();
    }
    if (window.ActiveXObject) {
        xmlhttpobj = new ActiveXObject("Microsoft.XMLHttp");
    }
    xmlhttpobj.open("GET", reqUrl, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
    xmlhttpobj.onreadystatechange = callbackAdd; //指定回调函数
    xmlhttpobj.send(null); //
}
function callbackAdd() //回调函数，对服务端的响应处理，监视response状态
{
    if (xmlhttpobj.readystate == 4) //请求状态为4表示成功
    {
        if (xmlhttpobj.status == 200) //http状态200表示OK
        {
            var menuID = xmlhttpobj.responseText;
            if (menuID > 0) {
                window.location.href = window.location.href.substr(0, window.location.href.length - window.location.search.length) + '?menuid=' + menuID;
            }
        }
        else //http返回状态失败
        {
            alert("更新失败！" + xmlhttpobj.statusText);
        }
    }
    else //请求状态还没有成功，页面等待
    {
    }
}
function zjAddclick(index, str) {
    var iframeZJ = document.getElementById("iframeZJ");
    iframeZJ.src = index;
    document.getElementById("zjAdd_url").value = index + "|" + str;
    document.getElementById("zjAdd_bt").style.display = "block";
}

function zjAdd_add() {

    var zl = document.getElementById("zjAdd_url").value;
    
    var sArray = zl.split("|");
    var pageId = 1;
    if(sArray!=null && sArray.length >0){
    var url = "Pcutmanage.aspx?top=80&menuid=" + QueryString("menuid") + "&left=0&width=400&height=250&title=" + escape(sArray[1]) + "&url=" + escape(sArray[0]) + "&pageId=" + pageId;
    window.open(url, "_top");
    }
}