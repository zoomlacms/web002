//var a = new Tsinghua("menu", "addnew");

function QueryString(fieldName) {
    var urlString = document.location.search;
    if (urlString != null) {
        var typeQu = fieldName + "=";
        var urlEnd = urlString.indexOf(typeQu);
        if (urlEnd != -1) {
            var paramsUrl = urlString.substring(urlEnd + typeQu.length);
            var isEnd = paramsUrl.indexOf('&');
            if (isEnd != -1) {
                return paramsUrl.substring(0, isEnd);
            }
            else {
                return paramsUrl;
            }
        }
        else {
            return null;
        }
    }
    else {
        return null;
    }
}

function Tsinghua(id, bName) {
    this.menuObj = document.getElementById(id);  //菜单div
    var mid = QueryString('menuid');
    this.onMenuObj = null;     //当前选中项
    for (var i = 0; i < this.menuObj.getElementsByTagName("div").length; i++) {

        if (this.menuObj.getElementsByTagName("div")[i].id.replace('p_', '') == mid) //选中项
            this.onMenuObj = this.menuObj.getElementsByTagName("div")[i];  
    }

    if (this.onMenuObj == null) {
        window.location = "?menuid=" + this.menuObj.getElementsByTagName("div")[0].id.replace('p_', '');
        return;
    }
    this.onMenuObj.firstChild.onclick = function () { return false; };
    this.onMenuObj.className = "on";
    var o = this;
    this.onObj=document.getElementById(bName); //添加
    this.onObj.onclick = function () {
        o.addNew();
    }
    this.onEdit = false;  //是否在编辑菜单
}
// *********** 删除菜单 **********

Tsinghua.prototype.dele = function (e) {

    if (this.menuObj.getElementsByTagName("div").length == 1) { return alert("你不能删除最后一个页签"); }

    if (confirm("确定删除该页签么？")) {
        // alert("home.aspx?act='delemenu'&t='" + this.getTime() + "'&id=" + e.id.replace('p_', ''));
        //
        $.get("home.aspx", { act: "delemenu", t: this.getTime(), id: e.id.replace('p_', '') }, function (data) {
            var index = 0;
            var parentNodes = e.parentNode.childNodes;
            for (var i = 0; i < parentNodes.length; i++) {
                if (e == parentNodes[i] && i != 0) {
                    index = i - 1;
                }
            }
           // e.parentNode.removeChild(e);
          window.location.href = "home.aspx?menuid=" + parentNodes[index].id.replace('p_', '');
        });
    }

}

// *********** 新增菜单 **********
Tsinghua.prototype.addNew = function () {

    if (this.onEdit) return;
    if (this.menuObj.getElementsByTagName("div").length >= 10) {
        alert(" 您最多可以添加10个页签！");
        return;
    }
    var newChild = this.menuObj.childNodes[1].cloneNode(true); //克隆一个菜单
    this.onMenuObj.className = ''
    this.onMenuObj = newChild;
    newChild.id = "-1";
    var newInput = this.getInput();
    newInput.value = "新标签";
    newChild.removeChild(newChild.firstChild);  //删除第一个子节点
    newChild.insertBefore(newInput, newChild.firstChild); //将input添加到当前节点的第一个子节点之后
    if (this.menuObj.getElementsByTagName("div").length==1) {
        this.menuObj.insertBefore(newChild, this.menuObj.firstChild);
    } else {
        this.menuObj.insertBefore(newChild, this.menuObj.lastChild);  //将newChild加到最后
    }
    newInput.focus();
    newInput.select();
    this.onEdit = true;
}
// *********** 更新菜单 **********
Tsinghua.prototype.updateMenu = function (e) {
    var o = this;
    $.get("home.aspx", { act: "updatemenu", t: this.getTime(), title: e.value, id: e.parentNode.id.replace('p_', '') }, function (data) {
        //alert(1);
        o.remoreInput(e)
        //alert(data.xml);
    });
}
// ********** 提交数据 ************
Tsinghua.prototype.send = function (e, type) {
    this.onEdit = false;
    var o = this;
    $.get("home.aspx", { act: type, t: this.getTime(), title: e.value }, function (data) {
        window.location.reload(); 
        //alert($(data.xml).find("state")[0].innerHTML);
        //alert(data.xml);
    });
    if (e.parentNode.id = '-1') {

    }
}

Tsinghua.prototype.remoreInput = function (e) {
    var newtt = document.createElement("tt");
    newtt.innerHTML = e.value;
    e.parentNode.insertBefore(newtt, e);
    e.parentNode.removeChild(e);
}

Tsinghua.prototype.getInput = function () {
    var newInput = document.createElement("input");
    newInput.type = "text";
    var oo = this;
    newInput.onfocus = function () {

    }
    newInput.onblur = function () {
        if (this.value.length > 0) {
            tjAjax("homeManage.aspx?act='addmenu'&title=" + escape(this.value));
            window.location.reload(); 
            //  oo.send(this, 'addmenu'); //回传
            //$.get("homeManage.aspx", { act: 'addmenu', t: this.getTime(), title: this.value }, function (data) { });
            //刷新
            //window.location.href = window.location.href.substr(0,window.location.href.length - window.location.search.length) +"?addRefesh='1'";
        }
    }
    newInput.className = "newInput";
    return newInput;
}

Tsinghua.prototype.onSelect = function (o) {
    if (this.onMenuObj == o) {
        
        var newInput = this.getInput();
        var oo = this;
        newInput.onblur = function () { oo.updateMenu(this); }
        newInput.value = o.firstChild.innerHTML;
        o.removeChild(o.firstChild);
        o.insertBefore(newInput, o.firstChild);
        newInput.focus();
        newInput.select();
    } else {
        this.onMenuObj.className = '';
        this.onMenuObj = o;
        this.onMenuObj.className = 'on';
    }
}

Tsinghua.prototype.getTime = function () {
    var now = new Date();
    var year = now.getYear();
    var month = now.getMonth() + 1;
    var day = now.getDate();
    var hour = now.getHours();
    var minute = now.getMinutes();
    var second = now.getSeconds();
    return (year + "-" + month + "-" + day + " " + hour + ":" + ":" + minute + ":" + second);
}

// ********** AJAX回调 ************
Tsinghua.prototype.callBack = function (e) {

}


/********JS提交************/
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
function callback2() //回调函数，对服务端的响应处理，监视response状态
{
    if (req.readystate == 4) //请求状态为4表示成功
    {
        if (req.status == 200) //http状态200表示OK
        {
            //alert("成功");
            //alert(req.responseText);
            //window.location.href = window.location.href.substr(0, window.location.href.length - window.location.search.length) + "?menuid="+req.responseText;
            //AjAXflag = true;
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
    req.open("GET", url, false); //与服务端建立连接(请求方式post或get，地址,true表示异步)
    req.onreadystatechange = callback2; //指定回调函数
    req.send(null); //
}
