var ajax = new AJAXRequest;
////////  关注与取消关注 type:0为收听，1为取消收听,2为拉黑  friendid:要被收听或取消收听的人 gid分组 uid用户ID  //////////
function Attion(type, friendid, gid, uid) {
    ajax.get(
		"/t/DataCommon.aspx?oper=friend&type=" + type + "&userid=" + friendid + "&grounp=" + gid + "&uid=" + uid,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "-1") {
		        alert("添加失败!");
		    }
		    location.href = url;
		    if (res == "3") {
		        alert("不能关注自己");
		    }
		    if (res == "2") {
		        alert("对方已经把你列为黑名单,你关注他");
		    }
		}
	);
}

////////  关注与取消关注 type:0为收听，1为取消收听,2为拉黑 friendid:要被收听或取消收听的人 gid分组 uid用户ID  //////////
function Attions(type, friendid, gid, uid) {
    ajax.get(
		"/t/DataCommon.aspx?oper=friend&type=" + type + "&userid=" + friendid + "&grounp=" + gid + "&uid=" + uid,
		function (obj) {
		    var res = obj.responseText;
		    var btn = document.getElementById("btn" + friendid);
		    var cbtn = document.getElementById("cbtn" + friendid);
		    if (res == "-1") {
		        alert("添加失败!");
		    }
		    if (res == "0" && type == "0") {
		        btn.style.display = "none";
		        cbtn.style.display = "";
		        location.href = location.href;
		    }
		    if (res == "0" && type == "1") {
		        btn.style.display = "";
		        cbtn.style.display = "none";
		        location.href = location.href;
		    }
		    if (res == "3" && type == "0") {
		        alert("不能关注自己");
		    }
		    if (res == "2" && type == "0") {
		        alert("对方已经把你列为黑名单,你关注他");
		    }
		}
	);
}

//移除粉丝
function DelFans(friendid, userid,friid) {
    ajax.get(
		"/t/DataCommon.aspx?oper=DelFans&userid=" + userid + "&friendid=" + friendid+"&friId="+friid,
		function (obj) {
        
		    var res = obj.responseText;
		    if (res == "-1") {
		        alert("移除失败!");
		    }
		    if (res == "0") {
		        alert("移除成功!");
		        location.reload();
		    }
		}
	);
}

function Attionss(type, friendid, gid, uid) {
    ajax.get(
		"/t/DataCommon.aspx?oper=friend&type=" + type + "&userid=" + friendid + "&grounp=" + gid + "&uid=" + uid,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "-1") {
		        alert("添加失败!");
		    }
		    if (res == "0" && type == "0") {
		        location.reload();
		    }
		    if (res == "0" && type == "1") {
		        location.reload();
		    }
		    if (res == "3" && type == "0") {
		        alert("不能关注自己");
		    }
		    if (res == "2" && type == "0") {
		        alert("对方已经把你列为黑名单,你关注他");
		    }
		}
	);
}

///收听话题
function Listen(tid, type) {
    ajax.get(
		"/t/DataCommon.aspx?oper=theme&themeid=" + tid + "&type=" + type,
		function (obj) {
		    var res = obj.responseText;
		    var followedNum_1 = document.getElementById("followedNum_1").innerText;
		    if (res == "true" && type == "0") { //收听
		        document.getElementById("slis").innerHTML = "<a href='javascript:void(0)' class='btnCancel' onclick=\"Listen('" + tid + "',1)\">取消收听</a>";
		        followedNum_1 = parseInt(followedNum_1) + 1;
		    }
		    if (res = "true" && type == "1") {  //取消收听
		        document.getElementById("slis").innerHTML = "<a href='javascript:void(0)' class='btnCollect' onclick=\"Listen('" + tid + "',0)\">收听此话题</a>";
		        followedNum_1 = parseInt(followedNum_1) - 1;
		    }
		    document.getElementById("followedNum_1").innerText=followedNum_1;
		}
    );
}

////删除微博帖子
var ajax = new AJAXRequest;
function g_dels(id,url) {   //删除
    ajax.get(
		"/t/DataCommon.aspx?oper=del&id=" + id,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "True") {
		        window.location.href = url;
		    }
		}
	);
}

///添加微博帖子
function g_Diles(userid, forid, id, url) {  //添加
    var type = document.getElementById("hftype").value;
    var cont = document.getElementById("txtCommon" + id).value;
    if (parseInt(type) <= 2) {
        ajax.get(
		"/t/DataCommon.aspx?oper=dial&type=" + type + "&content=" + encodeURI(cont) + "&userid=" + userid + "&forid=" + forid + "&id=" + id,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        if (type == 3) {
		            alert("成功评论！");
		            window.location.href = url;
		        } else {
		            window.location.href = url;
		        }
		    }
		}
	);
    } else {
        ajax.get(
		"/t/DataCommon.aspx?oper=Common&content=" + encodeURI(cont) + "&userid=" + userid + "&id=" + id,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        alert("评论成功！");
		        window.location.href = url;
		    } else {
		        window.location.href = url;
		    }
		}
	);
    }
}

///添加微博帖子
function Og_Diles(userid, forid, id, url,conid) {  //添加
    var type = document.getElementById("hftype").value;
    var cont = document.getElementById("OtxtCommon" + conid).value;
    if (parseInt(type) <= 2) {
        ajax.get(
		"/t/DataCommon.aspx?oper=dial&type=" + type + "&content=" + encodeURI(cont) + "&userid=" + userid + "&forid=" + forid + "&id=" + id,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        if (type == 2) {
		            alert("成功评论！");
		            window.location.href = url;
		        } else {
		            window.location.href = url;
		        }
		    }
		}
	);
    } else {
        ajax.get(
		"/t/DataCommon.aspx?oper=Common&content=" + encodeURI(cont) + "&userid=" + userid + "&id=" + id,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        alert("评论成功！");
		        window.location.href = url;
		    } else {
		        window.location.href = url;
		    }
		}
	);
    }
}


///收藏微博帖子
function g_addHi(id) {  //收藏
    ajax.get(
		"/t/DataCommon.aspx?oper=fav&id=" + id,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        alert("成功收藏！");
		        //window.location.reload();
		    }
		}
	);
}

function g_delHis(id,url) {  //取消收藏
    ajax.get(
		"/t/DataCommon.aspx?oper=Delfav&id=" + id,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        alert("成功删除收藏！");
		        window.location.href = url;
		    }
		}
	);
}

///帖子内容图片放大与缩小
function mouseOut(id, obj) {
    var sImg = document.getElementById(obj+"sImg_"+id).style;
    sImg.display = "none";
}

///

function mouseOver(id, obj) {
    var sImg = document.getElementById(obj+"sImg_"+id).style;
    sImg.display = "";
}

///帖子内容图片显示与隐藏
function ChangePic(obj, id, ty) {
    var showpic = document.getElementById(ty+"showpic_"+id).style;
    var sImg = document.getElementById(ty+"sImg_"+id).style;
    var lImg = document.getElementById(ty+"lImg_"+id).style;
    if (obj == 0) {
        lImg.display = "";
        showpic.display = "none";
    } else {
        lImg.display = "none";
        showpic.display = "";
        sImg.display = "none";
    }
}

///评论与转发链接的转换  显示与隐藏
function addCon(content, id, val, type) {
    var divcon = document.getElementById("con_" + id);
    var conts = document.getElementsByTagName("div");
    var tips = document.getElementById("divCont" + id);
    var btncomval = document.getElementById("btnCom_" + id).value;
    var res = 0;
    var tval = "";
    if (type == "3" && btncomval == "评论") {
        res = 2;
    }
    if (type == "1" && btncomval == "转发") {
        res = 1;
    }
    tval = btncomval == "评论" ? "转发" : "评论";
    if (divcon.style.display == "") {
        if (res == 2 || res == 1) {
            divcon.style.display = "none";
        }
        else {
            for (var i = 0; i < conts.length; i++) {
                if (conts[i].id.indexOf('con_') > -1) {
                    conts[i].style.display = "none";
                }
            }
            divcon.style.display = "";
            document.getElementById("txtCommon" + id).focus();
            document.getElementById("txtCommon" + id).value = val;
         
            tips.innerHTML = "<font color='gray'>" + content + "</font>";
            btncomval = tval;
        }
    } else {
        for (var i = 0; i < conts.length; i++) {
            if (conts[i].id.indexOf('con_') > -1) {
                conts[i].style.display = "none";
            }
        }
        divcon.style.display = "";
        document.getElementById("txtCommon" + id).focus();
        document.getElementById("txtCommon" + id).value = val;
        tips.innerHTML = "<font color='gray'>" + content + "</font>";
        btncomval = type == "3" ? "评论" : "转发";
    }
    document.getElementById("btnCom_" + id).value = btncomval;
    document.getElementById("hftype").value = type;
}

///评论与转发链接的转换  显示与隐藏
function OaddCon(content, id, val, type,conid) {
    var divcon = document.getElementById("con_" + id);
    var conts = document.getElementsByTagName("div");
    var btncomval = "";
    if (document.getElementById("btnCom_" + id) != null) {
        btncomval = document.getElementById("btnCom_" + id).value;
    }
    var Odivcon = document.getElementById("Ocon_" + conid);
    var Oconts = document.getElementsByTagName("div");
    var Otips = document.getElementById("OdivCont" + conid);
    var Obtncomval = document.getElementById("ObtnCom_" + conid).value;
    var Ores = 0;
    var Otval = "";
    if (type == "3" && btncomval == "评论") {
        Ores = 2;
    }
    if (type == "1" && btncomval == "转发") {
        Ores = 1;
    }
    if (divcon != null) {
        divcon.style.display = "none";
    }
    Otval = Obtncomval == "评论" ? "转发" : "评论";
    if (Odivcon.style.display == "") {
        if (Ores == 2 || Ores == 1) {
            Odivcon.style.display = "none";
        }
        else {
            for (var i = 0; i < Oconts.length; i++) {
                if (Oconts[i].id.indexOf('Ocon_') > -1) {
                    Oconts[i].style.display = "none";
                }
            }
            Odivcon.style.display = "";
            document.getElementById("OtxtCommon" + conid).focus();
            document.getElementById("OtxtCommon" + conid).value = val;
            Otips.innerHTML = "<font color='gray'>" + content + "</font>";
            Obtncomval = Otval;
        }
    } else {
        for (var i = 0; i < Oconts.length; i++) {
            if (Oconts[i].id.indexOf('Ocon_') > -1) {
                Oconts[i].style.display = "none";
            }
        }
        Odivcon.style.display = "";
        document.getElementById("OtxtCommon" + conid).focus();
        document.getElementById("OtxtCommon" + conid).value = val;
        Otips.innerHTML = "<font color='gray'>" + content + "</font>";
        Obtncomval = type == "3" ? "评论" : "转发";
    }
    document.getElementById("ObtnCom_" + conid).value = Obtncomval;
    document.getElementById("hftype").value = type;
}

var ajax = new AJAXRequest;
function GetHui(obj) {
    var content = document.getElementById("txtHuifu" + obj).value;
    var divv = document.getElementById("con_" + obj).style;
    if (content == "" || content == "") {
        alert("请输入回复信息");
    }
    else {
        ajax.get(
		"/t/DataCommon.aspx?oper=huifu&id=" + obj + "&con=" + encodeURI(content),
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        alert("回复成功！");
		        divv.display = "none";
		    }
		}
	);
    }
}
var ajax = new AJAXRequest;
function Delping(obj) {
    ajax.get(
		"/t/DataCommon.aspx?oper=delping&id=" + obj,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        alert("删除成功！");
		        location.href = location.href;
		    }
		}
	);
}

