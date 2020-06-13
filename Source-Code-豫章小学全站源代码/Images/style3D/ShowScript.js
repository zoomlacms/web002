var ajax = new AJAXRequest();
var xmlDoc = GetXml();
var nodes = xmlDoc.documentElement.childNodes;
var str = "size,1152,864;";
var xmlindex = 0;
var top = 0, width = 0;
showpage();
function showpage() {
    for (xmlindex; xmlindex < nodes.length; xmlindex++) {
        str += parseInt(xmlindex + 1) + ",0_hq," + nodes.item(xmlindex).childNodes.item(5).text + "," + nodes.item(xmlindex).childNodes.item(6).text + ",red," + nodes.item(xmlindex).nodeName + "," + nodes.item(xmlindex).childNodes.item(0).text + "," + nodes.item(xmlindex).childNodes.item(1).text + ";";
        if (top < parseInt(nodes.item(xmlindex).childNodes.item(5).text)) {
            top = parseInt(nodes.item(xmlindex).childNodes.item(5).text)
        }
        if (width < parseInt(nodes.item(xmlindex).childNodes.item(6).text)) {
            width = parseInt(nodes.item(xmlindex).childNodes.item(6).text)
        }
    }
    str += (xmlindex++) + ",mine," + (width - 13) + "," + (top - 8) + ";" + (xmlindex++) + ",ves," + (width - 13 + 1) + "," + (top - 13 + 12) + ";" + (xmlindex++) + ",ves," + (width - 13 + 9) + "," + (top - 13 + 12 - 5) + ";";
    //str += xmlindex + ",mine," +  width+ "," + top + ";" + (xmlindex++) + ",ves," + width + "," + (top + 4) + ";";
    //alert(str);
    ajax.post(
    //请求的URL
	"UpdateCoordinate.aspx?type=getmove",
    //发送的内容
	xmlindex,
    //回调函数
	function(obja) {
	    //alert("fsdfsd");
	    //alert(obja.responseText);
	    if (obja.responseText.indexOf('<html' == -1)) {
	        if (obja.responseText.indexOf('111' == -1)) {
	            if(obja.responseText.indexOf('登')==-1)
	                str += obja.responseText;
	        }
	    }
	    //alert(str);
	    if (str.length > 0) {
	        var s = str.split(';');
	        for (var i = 0; i < s.length; i++) {
	            var arr = s[i].split(',');
	            if (arr[4] == "red") {
	                top = arr[3] * 20;
	                width = arr[2] * 20;
	            }
	        }
	    }
	    map_data.insertAdjacentHTML("beforeend", delendstr(str));
	    bdy_load();
	}
);
    //alert('sdfsdf'); 
    ajax.post(
	"UpdateCoordinate.aspx?type=GetUserId",
	"",
	function(obja) {
	    var strc = obja.responseText;
	    map_safeid.innerHTML = strc;
	}
);
}
function delendstr(ddstr) {
    if (ddstr.lastIndexOf(";") == ddstr.length - 1) {
        ddstr = ddstr.substring(0, ddstr.length - 1);
        return ddstr;
    }
    else {
        return ddstr;
    }
}

l = "<table id=tbMap width=2560 border=1 bordercolor=black cellpadding=0 cellspacing=0 style='POSITION: absolute; BORDER-COLLAPSE: collapse'>"
for (i = 0; i < 64; i++) {
    l += "<tr height=30>"
    for (j = 0; j < 64; j++) {
        l += "<td width=40>&nbsp;</td>"
    }
    l += "</tr>"
}
l += "</table>"


var Browser = (function() {

    function innerClass() {
        this.os = "";
        this.btype = "";
        this.version = "";

        this.total = "";
        this.thestring = "";
        this.detect = navigator.userAgent.toLowerCase();
        this.place = 0;

        this.getBrowserInfo = function() {
            if (this.checkIt("konqueror")) {
                this.btype = "konqueror";
                this.os = "linux";
            }
            else if (this.checkIt("safari")) {
                this.btype = "safari";
            }
            else if (this.checkIt("omniweb")) {
                this.btype = "omniweb";
            }
            else if (this.checkIt("opera")) {
                this.btype = "opera";
            }
            else if (this.checkIt("webtv")) {
                this.btype = "webtv";
            }
            else if (this.checkIt("icab")) {
                this.btype = "icab";
            }
            else if (this.checkIt("msie")) {
                this.btype = "ie";
            }
            else if (this.checkIt("firefox")) {
                this.btype = "firefox";
            }
            else if (this.checkIt("netscape")) {
                this.btype = "netscape";
            }
            else {
                this.btype = "unknown";
            }

            if (this.version == "") {
                this.version = this.detect.charAt(this.place + this.thestring.length);
            }

            if (this.os == "") {
                if (this.checkIt("linux")) this.os = "linux";
                else if (this.checkIt("mac")) this.os = "unix";
                else if (this.checkIt("win")) this.os = "windows";
                else this.os = "unkown";
            }
        }

        this.checkIt = function(string) {
            this.place = this.detect.indexOf(string) + 1;
            this.thestring = string;
            return this.place;
        }

    }

    var br = new innerClass();
    br.getBrowserInfo();
    return br;
})();


var Btype = Browser.btype;

var MEvent = new Object();
MEvent.mustUseCenterKey = false;
MEvent.mustUseRightKey = true;


//载入事件
function bdy_load() {
    //alert(map_data.innerText);//调试
    fw1.iniMap(map_data.innerText)
    divPanel.style.display = ""
    bdy_resize()
    divMain.scrollTop = top;  //- window.screen.availHeight / 2;
    divMain.scrollLeft = width;  //+ window.screen.availWidth / 2;
    timer_main()
    Time();
}

//小窗口的位置
function bdy_resize() {
    divPanel.style.left = bdy.clientWidth - 148
    mini_range.style.width = bdy.clientWidth * 128 / 2560 + 5
    mini_range.style.height = bdy.clientHeight * 128 / 1920 + 5
    divSysInfo.style.top = bdy.clientHeight - 100
}

//显示系统信息
function showSysInfo(k) {
    divSysInfo.innerHTML = k
    showObj("divSysInfo")
    window.setTimeout("showObj(';divSysInfo')", 3000)
}

//创建建筑物倒计时，创建过程
function buildUnit(ee) {
    if (ee.tagName != "IMG")
        return
    if (ee.style.filter == "gray")
        return
    var u = eval(menu_build.name), uu = udf[ee.name]
    if (u.mn == -1) {
        if (race[cRace].man >= race[cRace].supply) {
            showSysInfo("...")
            return
        }
        if (race[cRace].mine < uu.mine) {
            showSysInfo("...")
            return
        }
        if (race[cRace].ves < uu.ves) {
            showSysInfo("...")
            return
        }
        menu_build.mine = uu.mine
        menu_build.ves = uu.ves
        race[cRace].mine -= uu.mine
        race[cRace].ves -= uu.ves
        refVal()
        u.mn = 0
        u.bType = ee.name
        menu_build.children(1).children(0).src = "ico/" + ee.name + ".gif"
        menu_build.children(1).style.display = ""
    }
}

//隐藏建筑物(取消建筑物)
function cancelBuild(ee) {
    race[cRace].mine += parseInt(menu_build.mine)
    race[cRace].ves += parseInt(menu_build.ves)
    refVal()
    eval(menu_build.name).mn = -1
    menu_build.children(1).style.display = "none"
}

//显示建筑物
function showModel(ee) {
    if (ee.tagName != "IMG")
        return
    if (ee.style.filter == "gray") {
        return
    }
    var uu = udf[ee.name], a_wh
    if (race[cRace].mine < uu.mine) {
        showSysInfo("...")
        return
    }
    if (race[cRace].ves < uu.ves) {
        showSysInfo("...")
        return
    }
    divModel.children(0).src = "build/" + ee.name + "_" + cRace + ".gif"
    divModel.name = ee.name
    a_wh = uu.wh.split(",")
    divModel.style.posWidth = a_wh[0]
    divModel.style.posHeight = a_wh[1]
    divModel.size = uu.size
    divModel.movepos = uu.movepos
    showObj("divModel")
}

//估计是行走的事件
function main_mousedown() {

    if (Btype == "firefox" || Btype == "netscape" || Btype == "safari") {
        if (event.button == 0)//? 鼠标已点击
            return//返回事件，继续候命
    } else if (Btype == "ie") {
        if (event.button == 1)//? 鼠标已点击
            return//返回事件，继续候命
    }


    //if (event.button == 1)//? 鼠标已点击
    //          return//返回事件，继续候命
    //alert("行走的事件");
    if (divModel.style.display == "none")
        showObj("selRect")
    selRect.style.posLeft = event.x
    selRect.style.posTop = event.y
    selRect.style.posWidth = selRect.style.posHeight = 0
}

//选中要创建的建筑，并选择创建地址,未选中创建地址
function main_mousemove() {
    divMain.mx = event.x
    divMain.my = event.y
    if (typeof (selRect) == "undefined")
        return
    if (divModel.style.display == "") {
        var sp = new pt(parseInt((event.x + divMain.scrollLeft) / 40), parseInt((event.y + divMain.scrollTop) / 30))

        var a_sz = divModel.size.split(","), a_mv = divModel.movepos.split(","), c = "#088008"

        var u = eval(fw1.selUnit)

        fw1.setUBlock()
        fw1.bList[2] += u.px + "," + u.py + ";"
        divModel.style.posLeft = sp.x * 40 + parseInt(a_mv[0])
        divModel.style.posTop = sp.y * 30 + parseInt(a_mv[1])
        divModel.pos = sp.v
        if (divModel.name != "0_refinery") {
            for (var i = 0; i < a_sz[0]; i++) {
                for (var j = 0; j < a_sz[1]; j++) {
                    if (fw1.inBlock(new pt(sp.x + i, sp.y + j))) {
                        c = "#C81818"
                        break
                    }
                }
            }


        }
        else {
            if ((";" + sys.vesPos + ";").indexOf(";" + sp.v + ";") == -1) {
                c = "#C81818"
            }
            else {
                var spu = fw1.uInPos(sp), spu_name = spu == null ? "" : spu.name
                if (spu_name != "ves")
                    c = "#C81818"
            }
        }
        divModel.style.background = c
    }


    if (selRect.style.display == "") {
        selRect.style.posWidth = event.x - selRect.style.posLeft
        selRect.style.posHeight = event.y - selRect.style.posTop
    }
}

//创建建筑，鼠标已经点击选中位置
function main_mouseup() {
    //        if (event.button == 2)
    //            return

    if (divModel.style.display == "") {
        if (divModel.style.background == "#c81818") {
            showSysInfo(divModel.name == "0_refinery" ? "Could not build there,find a Vespene to build on." : "You can't build there.")
            return
        }
        race[cRace].mine -= udf[divModel.name].mine
        race[cRace].ves -= udf[divModel.name].ves
        refVal()
        //fw1.iniMap(fw1.maxID + "," + divModel.name + "," + divModel.pos + "," + cRace + ",0")
        showObj(";divModel")
        main_rclick(event.x, event.y)
        return//返回（循环）
    }

    var sp = new pt(parseInt((selRect.style.posLeft + divMain.scrollLeft) / 40), parseInt((selRect.style.posTop + divMain.scrollTop) / 30))
    var ep = new pt(parseInt((selRect.style.posLeft + divMain.scrollLeft + selRect.style.posWidth) / 40), parseInt((selRect.style.posTop + divMain.scrollTop + selRect.style.posHeight) / 30))

    // fw1.selRange(sp, ep)   //设置选中
    showObj(";selRect,menu_build,menu_work,divModel")
    if (fw1.selUnit != "" && fw1.selUnit.indexOf(",") == -1) {
        var u = eval(fw1.selUnit), uu = udf[u.name], l = "", a, i
        if (u.uType == "build" && u.bn == -1 && u.race == cRace) {
            showObj("menu_build")
            menu_build.name = u.id
            if (uu.madelist != null) {
                a = uu.madelist.split(",")
                for (i in a) {
                    f = ""
                    if ((a[i] == "0_firebat" || a[i] == "0_medic") && race[cRace].keyBuild.indexOf(",0_academy,") == -1)
                        f = "filter:gray;"
                    l += "<img name='" + a[i] + "' src='ico/" + a[i] + ".gif' style='" + f + ";left:" + (40 * i) + ";border:1px solid #0c48cc'>"
                }
            }
            menu_build.children(0).innerHTML = l
            if (u.mn == -1)
                showObj(";menu_build.children(1)")
            else {
                menu_build.children(1).children(0).src = "ico/" + u.bType + ".gif"
                showObj("menu_build.children(1)")
            }
        }
        if (u.name == "0_scv") {
            showObj("menu_work")
        }
    }
    return
}

//场景鼠标点击事件
function main_rclick(ex, ey) {
    var u, o, ep = new pt(parseInt((ex + divMain.scrollLeft) / 40), parseInt((ey + divMain.scrollTop) / 30))
    if (fw1.selUnit == "")
        return
    if (fw1.selUnit.indexOf(",") == -1) {
        u = eval(fw1.selUnit)
        if (u.uType != "unit" || u.race != cRace)
            return
    }
    if (divModel.style.display == "") {
        showObj(";divModel")
        return
    }

    if (Btype == "firefox" || Btype == "netscape" || Btype == "safari") {
        if (event.button == 0)//? 鼠标已点击
        {
            fw1.go(ep)
            //更新路径
            ajax.post(
            //请求的URL
	"UpdateCoordinate.aspx?type=setmove",
            //发送的内容
	parseInt((ex + divMain.scrollLeft) / 40) + "," + parseInt((ey + divMain.scrollTop) / 30),
            //回调函数
	function(obj) {
	}
);
        }
    } else if (Btype == "ie") {
    if (event.button == 1)//? 鼠标已点击
    {
        fw1.go(ep)
        //更新路径
        ajax.post(
        //请求的URL
	"UpdateCoordinate.aspx?type=setmove",
        //发送的内容
	parseInt((ex + divMain.scrollLeft) / 40) + "," + parseInt((ey + divMain.scrollTop) / 30),
        //回调函数
	function(obj) {
	}
);
    }
    }


    if (fw1.selUnit.indexOf(",") == -1) {
        u = eval(fw1.selUnit)
        if (u.name == "0_scv") {
            o = fw1.uInPos(ep)
            if (o != null) {
                if (o.bn > -1) {
                    u.task = "build"
                    u.aimu = o.id
                }
            }
        }
    }
    return
}

//小窗口
function mini_mouseup() {
    var p = new pt(event.x - divPanel.style.posLeft - 10, event.y - 20)
    if (event.button == 1) {
        divMain.scrollLeft = p.x * 20 - bdy.clientWidth / 2
        divMain.scrollTop = p.y * 15 - bdy.clientHeight / 2
    }
    if (event.button == 2) {
        p.setv(parseInt(p.x) / 2, parseInt(p.y / 2))
        //alert(parseInt(p.x) / 2+"-----"+ parseInt(p.y / 2))
        fw1.go(p)
    }
}

function windowssee() {
    if (divMain.mx < 100) //左边的距离
    {
        divMain.scrollLeft -= 12
    }
    if (divMain.mx > divMain.clientWidth - 100) //右边
    {
        divMain.scrollLeft += 12
    }
    if (divMain.my < 0) //上面
    {
        divMain.scrollTop -= 12
    }
    if (divMain.my > divMain.clientHeight - 0) //下面
    {
        divMain.scrollTop += 12
    }

    //        /*
    //        IE
    //        */
    //        Pp.onmousewheel = function() {
    //            divMain.scrollTop += -event.wheelDelta / 10;
    //        };
    //        /*
    //        FF
    //        */
    //        if (Pp.addEventListener) {
    //            Pp.addEventListener('DOMMouseScroll', function(e) {
    //            divMain.scrollTop += e.detail * 4;
    //            }, false);
    //        }
    //        var map_safeid = 0;
    //        if (document.getElementById("map_safeid") != null) {
    //            map_safeid = document.getElementById("map_safeid").innerHTML;
    //        }

}


//时钟事件
function timer_main() {
    windowssee();
    var ol = fw1.uList[2].split(","), u, o, rv, i, sp = new pt()

    //        if (ol != "") {
    //            //基地
    //            for (i = 0; i < ol.length; i++) {
    ////                if (document.getElementById(ol[i]) != null) {
    ////                    u = eval(ol[i])
    ////                    //alert(u.mn);
    ////                    if (u.mn == -1) {
    ////                        per = u.chp * 100 / u.hp
    ////                        if (per <= 0) {
    ////                            fw1.delUnit(u) //去掉z
    ////                            continue//跳过本次循环，继续下个循环，还在循环内
    ////                        }
    ////                        if (per < 75 && u.children(2).innerHTML == "")//当基地生命值小于75和着火图片没有显示的时候
    ////                            u.children(2).innerHTML = "<img src=build/fire.gif style=left:20;top:20>"//着火图片
    ////                        u.children(0).children(1).children(0).style.width = per + "%"//修改进度条

    ////                    }

    ////                    if (u.mn > -1) {
    ////                        u.mn++//攻击事件
    ////                        if (menu_build.name == u.id && menu_build.style.display == "") {
    ////                            o = menu_build.children(1).children(1)
    ////                            o.style.posLeft = 48 + u.mn / 4
    ////                            o.style.posWidth = 119 - o.style.posLeft
    ////                        }
    ////                    }

    ////                    //可疑
    ////                    if (u.mn >= 300) {
    ////                        u.mn = -1
    ////                        sp.setv(parseInt(u.px) + parseInt(u.pw / 2), parseInt(u.py) + parseInt(u.ph / 2))
    ////                        fw1.cEndPos = 0
    ////                        fw1.setUBlock()
    ////                        rv = fw1.getEndPos(sp)
    ////                        sp.setv(rv[0])
    ////                        fw1.iniMap(fw1.maxID + "," + u.bType + "," + sp.v + "," + cRace)
    ////                        race[cRace].man++
    ////                        refVal()
    ////                        if (menu_build.style.display == "")
    ////                            menu_build.children(1).style.display = "none"
    ////                    }
    ////                }
    //            }
    //        }

    //可疑
    var ol = fw1.uList[3].split(",")
    if (ol != "") {
        for (i = 0; i < ol.length; i++) {
            if (document.getElementById(ol[i]) != null) {
                u = eval(ol[i])
                fw1.move(u)
                per = u.chp * 100 / u.hp
                if (per <= 0) {
                    fw1.delUnit(u)
                    fw1.searchEnemy()
                }
                else
                    u.children(0).children(1).children(0).style.width = per + "%"
            }
        }
    }
    var map_safeid = 0;
    if (document.getElementById("map_safeid") != null) {
        map_safeid = document.getElementById("map_safeid").innerHTML;
        if (map_safeid != "" && map_safeid != 0) {
            fw1.selUnit = "unit_U_" + map_safeid;
        }
    }

    window.setTimeout("timer_main()", 30)//时钟递归
}

function Time() {
    sp = new pt()
    var ol = fw1.uList[3].split(",")
    //获取用户坐标
    ajax.post(
    //请求的URL
	"UpdateCoordinate.aspx?type=getmove",
    //发送的内容
	xmlindex,
    //回调函数
	function(obj) {
	    //alert('asdf');
	    var str = obj.responseText;
	    //alert(str);
	    str = delendstr(str);
	    var unit = str.split(";");
	    //循环所有在线用户
	    for (var ui = 0; ui < unit.length; ui++) {
	        var un = unit[ui].split(",");
	        if (un != null) {
	            //循环所有在线用户的属性
	            if (un[4] != "red") {

	                var b = true;
	                //循环所有用户层
	                for (var x = 0; x < ol.length; x++) {
	                    if (ol[x] == "unit_U_" + un[0]) {
	                        if (document.getElementById(ol[x]) != null) {
	                            b = false;

	                            u = eval(ol[x])
	                            sp.setv(un[2], un[3])

	                            fw1.goBlue(sp, ol[x])
	                            //alert("dsfsdfsfsda"); 
	                            per = u.chp * 100 / u.hp
	                            if (per <= 0) {
	                                fw1.delUnit(u)
	                                fw1.searchEnemy()
	                            }
	                            else
	                                u.children(0).children(1).children(0).style.width = per + "%"
	                        }
	                    }
	                    else {

	                    }
	                }
	                //在用户层中不存在就创建
	                if (b) {
	                    //showpage();
	                }
	            }
	        }

	        ///////////////////////////////////////////////////////////////////////////////////////////////////
	        // alert(str);
	        var useracc = str.split(';');
	        var newu = "";
	        for (var ss = 0; ss < unit.length; ss++) {
	            var userstrs = useracc[ss];
	            var userinfo = userstrs.split(',');
	            var useridc = userinfo[0];
	            newu = newu + useridc + ',';
	        }
	        newu = ',' + newu;
	        for (var s = 0; s < unit.length; s++) {
	            var u = unit[s].split(','); //最新的在线人数
	            //fwx.uList[3] //老的数据
	            var userstr = ',unit_U_' + u[0] + ',';
	            var nnlist = ',' + fw1.uList[3] + ',';
	            if (nnlist.indexOf(userstr) < 0) {
	                fw1.iniMap(unit[s]);//调试
	            }
	        }

	        //循环所有用户层

	        for (var x = 0; x < ol.length; x++) {

	            var useridstr = ol[x];
	            if (useridstr != '') {
	                useridstr = useridstr.replace("unit_U_", "");

	                var tempuser = ',' + useridstr + ',';

	                //判断在线用户在用户层中是否存在
	                if (newu.indexOf(tempuser) < 0) {//去掉用户
	                    u = eval(ol[x]);
	                    fw1.delUnit(u);
	                }
	            }

	        }
	        ///////////////////////////////////////////////////////////////////////////////////////////////////
	    }


	    //循环所有用户层//删除
	    //	    for (var x = 0; x < ol.length; x++) {
	    //	        //判断在线用户在用户层中是否存在
	    //	        if (str.indexOf(ol[x]) < 0) {
	    //	            u = eval(ol[x]);
	    //	            fw1.delUnit(u);
	    //	        }
	    //	    }
	}
);

    var html = [];
    var Pp = document;
    /*
    IE
    */
    Pp.onmousewheel = function() {
        divMain.scrollTop += -event.wheelDelta / 10;
    };
    /*
    FF
    */
    if (Pp.addEventListener) {
        Pp.addEventListener('DOMMouseScroll', function(e) {
            divMain.scrollTop += e.detail * 4;
        }, false);
    }
    var map_safeid = 0;
    if (document.getElementById("map_safeid") != null) {
        map_safeid = document.getElementById("map_safeid").innerHTML;
    }

    window.setTimeout("Time()", 3000)
}