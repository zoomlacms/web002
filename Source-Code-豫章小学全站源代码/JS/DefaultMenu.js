
$(function () { var menus = new Menu("pcut_mm", "addnew"); })

function Menu(objId, addId) {
    this.menuObj = document.getElementById(objId);
    //this.selectNodeId = this.menuObj.getElementsByTagName("div").firstChild.id.replace('p_', '');  //当前选项卡选中的子项
    var addMenuNode = document.getElementById(addId); //添加控件
    var base = this;
    addMenuNode.onclick = function () { base.addNode(); }

}

Menu.prototype.addNode = function () //添加子项
{
    if (this.menuObj.getElementsByTagName("div").length >= 10) {
        alert("最多只能添加8个页签");
        return
    }
    //下标
    var nodeId = this.menuObj.getElementsByTagName("div").length;
    var nodeName = "新标签";
    var type = 0;
    //var newNode = getNode(this, nodeId, nodeName, type);

    this.menuObj.insertBefore(getNode(this, nodeId, nodeName, type), this.menuObj.lastChild);  //将newChild加到倒数第二

    var objdiv = document.getElementById("p_" + nodeId);
    document.getElementById("input_" + nodeId).select(); //选中文本框

}

Menu.prototype.delNode = function (node) //删除子项
{
    this.menuObj.removeChild(node);
    var menuId = this.menuObj.getElementsByTagName("div").firstChild.id.replace('p_', '')
    //绑定数据
    this.bindSource(menuId);
    this.cutSource(menuId);
}

function getNode(base, nodeId, nodeName, type) {
    var node = base.menuObj.firstChild.cloneNode(false);
    // var node = document.createElement("div");
    node.id = "p_" + nodeId;
    node.innerHTML = "<input type='text' id='input_" + nodeId + "' value='" + nodeName + "'  maxlength='8' onblur='inputBlur(" + nodeId + ")'  />" +
    "<img title='删除' onclick='removeMenu(" + nodeId + ")' src='../../../App_Themes/AdminDefaultTheme/images/close2.gif'  />";
    return node;
}
//文本框失去焦点事件
function inputBlur(nodeId) {
    var objdiv = document.getElementById("p_" + nodeId);
    var title = objdiv.getElementsByTagName("input")[0].value;
    var url = "Handle.aspx?id=" + nodeId + "&title=" + escape(title) + "&type=" + 0 ;
   
    if (nodeId != QueryString("menuid")) {
        url += "&handle=add";
        tjAjax(url); //添加
    } else {
        url += "&handle=update" //修改
        tjAjax(url); //
    }
    if (nodeId != QueryString("menuid")) {
        window.location.href = "?menuid=" + nodeId;
    } else {
        objdiv.innerHTML = "<a href='javascript:singleClick(" + nodeId + ");' ondblclick='dblClick(" + nodeId + ")' >" + title + "</a>" +
    "<img title='删除' onclick='removeMenu(" + nodeId + ")' src='../../../App_Themes/AdminDefaultTheme/images/close2.gif'  />";
    }

   
}

function singleClick(nodeId) {
    var objdiv = document.getElementById("p_" + nodeId);
    if (QueryString("menuid") != nodeId) {
        window.location.href = "?menuid=" + nodeId;
    }
}
function dblClick(nodeId) {
    var objdiv = document.getElementById("p_" + nodeId);
    var title = objdiv.getElementsByTagName('a')[0].innerText;
    objdiv.innerHTML = "<input type='text' id='input_" + nodeId + "' value='" + title + "'  maxlength='8' onblur='inputBlur(" + nodeId + ")'  />" +
    "<img title='删除' onclick='removeMenu(" + nodeId + ")' src='../../../App_Themes/AdminDefaultTheme/images/close2.gif'  />";
    document.getElementById("p_" + nodeId).getElementsByTagName('input')[0].focus();
    document.getElementById("p_" + nodeId).getElementsByTagName('input')[0].select();
}
function removeMenu(nodeId) {
    if (confirm("您确定要删除该页签吗！")) {
        var objdiv = document.getElementById("p_" + nodeId);
        var beforeId = objdiv.previousSibling.id.replace('p_', ''); //前一个对像的ID
        var parent = objdiv.parentNode;
        parent.removeChild(objdiv);
        var url = "Handle.aspx?id=" + nodeId + "&handle=del";
        tjAjax(url); //删除
        window.location.href = "?menuid=" + (nodeId-1);
    }
}
function updateMenu(nodeId) {
    var parent = document.getElementById("p_" + nodeId);

    baseNodes = document.getElementById("pcut_mm").getElementsByTagName("div");

    for (var i = 2; i < baseNodes.length; i++) {
        //alert(baseNodes[i].id.replace('p_', '') + "==" + nodeId)
        if (baseNodes[i].childNodes.length >= 2 && baseNodes[i].id.replace('p_', '') != nodeId) {
            baseNodes[i].removeChild(baseNodes[i].childNodes[1]);
        }
    }
}



