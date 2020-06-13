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
    this.menuObj = document.getElementById(id);
    var mid = QueryString('menuid');
    this.onMenuObj = null;
    for (var i = 0; i < this.menuObj.getElementsByTagName("div").length; i++) {
        
        if (this.menuObj.getElementsByTagName("div")[i].id.replace('p_','')==mid) this.onMenuObj = this.menuObj.getElementsByTagName("div")[i];
    }

    if (this.onMenuObj == null) {
        window.location = "?menuid=" + this.menuObj.getElementsByTagName("div")[0].id.replace('p_', '');
        return;

    }

    this.onMenuObj.firstChild.onclick = function () { return false; };
    this.onMenuObj.className = "on";
    var o = this;
    this.onObj=document.getElementById(bName);
    this.onObj.onclick = function () {
        o.addNew();
    }
    this.onEdit = false;
    
}
// *********** 删除菜单 **********

Tsinghua.prototype.dele = function (e) {

    if (this.menuObj.getElementsByTagName("div").length == 1) { return alert("你不能删除最后一个页签"); }

    if (confirm("确定删除该页签么？")) {
        $.get("default.aspx", { act: "delemenu", t: this.getTime(), id: e.id.replace('p_', '') }, function (data) {
            e.parentNode.removeChild(e);
            //alert(data.xml);
        });
    }
    
    //alert(e);
}


// *********** 新增菜单 **********
Tsinghua.prototype.addNew = function () {
    
    if (this.onEdit) return;
    var newChild = this.menuObj.childNodes[1].cloneNode(true);
    this.onMenuObj.className = ''
    this.onMenuObj = newChild;
    newChild.id = "-1";
    var newInput = this.getInput();
    newInput.value = "新标签";
    newChild.removeChild(newChild.firstChild);
    //alert(this.menuObj.childNodes[3].innerHTML);//[2].parentNode.innerHTML);
    newChild.insertBefore(newInput, newChild.firstChild);
    //alert(this.menuObj.childNodes[parseInt(this.menuObj.childNodes.length / 2)].innerHTML);
    this.menuObj.insertBefore(newChild, this.onObj);
    newInput.focus();
    newInput.select();
    this.onEdit = true;

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
        if (this.value.length > 0) oo.send(this, 'addmenu');
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