function Win() {


    this.Create = function(sd, ss, title, wbody, size, w, h, l, t) {
        if (document.getElementById('naa') != null) {
            if (sd == '1' || sd == '2') {
                document.getElementById('naa').style.display = '';
            }
            else {
                document.getElementById('naa').style.display = 'none';
            }
        }

        Winid++;
        if (document.getElementById('win' + Winid) == null) {

            title = title || "新窗口 - 加载中...";
            wbody = wbody || "&nbsp;<p align='center'><img src='/Images/style3D/Loader.gif' align='top' style='margin-top:-10px;margin-right:4px' />正在载入环境项…</p>";

            w = w || 550;
            h = h || 350;

            l = document.documentElement.clientWidth / 2 - w / 2;
            t = document.documentElement.clientHeight / 2 + h / 2;

            if (size == null) size = 1;
            var mywin = document.createElement("DIV");
            mywin.setAttribute("id", "win" + Winid);
            mywin.setAttribute("Max", 0);
            mywin.setAttribute("Min", 0);
            mywin.className = "win";
            mywin.onmousedown = function() { MyWin.Show(this.getAttribute("id")) };
            mywin.style.cssText = "width:" + w + "px;height:" + h + "px;left:0px;top:0px"
            mywin.style.zIndex = ++zIndex;
            document.body.appendChild(mywin);
            var mytie = document.createElement("DIV");
            var myboy = document.createElement("DIV");
            var mybom = document.createElement("DIV");
            mytie.className = "tie";
            myboy.className = "boy";
            mybom.className = "bom";
            mywin.appendChild(mytie);
            mywin.appendChild(myboy);
            mywin.appendChild(mybom);
            var wintag = [[mytie, 30, 15, "t1"], [mytie, 30, w - 30, "t2"], [mytie, 30, 15, "t3"], [myboy, h - 45, 15, "l1"], [myboy, h - 47, w - 32], [myboy, h - 45, 15, "r1"], [mybom, 15, 15, "l2"], [mybom, 15, w - 30, "b1"], [mybom, 15, 15, "r2"]];
            if (ss == 1) {
                for (var i = 0; i < 9; i++) {
                    var temp = document.createElement("DIV");
                    temp.setAttribute("Fid", "win" + Winid);
                    wintag[i][0].appendChild(temp);
                    if (i == 8) {
                        temp.style.cssText = "float:left;height:" + wintag[i][1] + "px;width:" + wintag[i][2] + "px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/Images/style3D/" + wintag[i][3] + ".png', sizingMethod='scale');background:url('/Images/style3D/" + wintag[i][3] + ".png') !important;background:;cursor:se-resize";
                    }
                    else if (wintag[i][3]) {
                        temp.style.cssText = "float:left;height:" + wintag[i][1] + "px;width:" + wintag[i][2] + "px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/Images/style3D/" + wintag[i][3] + ".png', sizingMethod='scale');background:url('/Images/style3D/" + wintag[i][3] + ".png') !important;background:;";
                    }
                    else {
                        temp.style.cssText = "float:left;filter:alpha(Opacity=95,style=0);opacity:0.95;height:" + wintag[i][1] + "px;width:" + wintag[i][2] + "px;background:#f7f7f7;border:1px solid #666;overflow:hidden;padding:0px";
                    }
                    if (i == 8) {
                        if (size)
                            temp.onmousedown = function(e) { MyWin.Move(this.getAttribute("Fid"), e ? e : window.event) };
                        else
                            temp.style.cursor = "default";
                    }
                    else if (i != 4) {
                        temp.onmousedown = function(e) { MyWin.Move(this.getAttribute("Fid"), e ? e : window.event, 1) };
                    }
                }

                var leftstr = (parseInt(screen.width) - parseInt($('win' + Winid).style.width)) / 2 - window.screenLeft;
                var topstr = (parseInt(screen.height) - parseInt($('win' + Winid).style.height)) / 2 - window.screenTop;

                mytie.childNodes[1].innerHTML = "<div style=\"position:absolute;overflow:hidden;height:15px;top:12px;padding-left:4px;padding-right:4px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/Images/style3D/tt.png', sizingMethod='scale');background:url('/Images/style3D/tt.png') !important;background:;\"></div><div class=\"wmin\" onclick=\"MyWin.Min('win" + Winid + "')\" title=\"最小化\"></div><div class=\"wmax\" onclick=\"MyWin.Max('win" + Winid + "',this)\" title=\"最大化\"></div><div class=\"wclo\" title=\"关闭窗口\" onclick=\"MyWin.Close('" + sd + "','win" + Winid + "',100)\"></div>";
                this.Title("win" + Winid, title);
                this.Body("win" + Winid, wbody);
                this.Move_e("win" + Winid, leftstr, topstr, topstr, leftstr);
                //document.getElementById("naa").style.display = "none";
            }
        }
        return (mywin);
    }
    this.Title = function(Id, title) {
        if (Id == null) return;
        var oo = $(Id);
        if (!oo) return;
        oo.childNodes[0].childNodes[1].childNodes[0].innerHTML = title;
    }
    this.Body = function(Id, wbody) {
        if (Id == null) return;
        var oo = $(Id);
        if (!oo) return;
        if (wbody.slice(0, 4) == "[pg]")
            oo.childNodes[1].childNodes[1].innerHTML = "<iframe onfocus=\"MyWin.Show('" + Id + "',this)\" src='" + wbody.slice(4) + "' frameBorder='0' marginHeight='0' marginWidth='0' width='100%' height='100%'></iframe>";
        else
            oo.childNodes[1].childNodes[1].innerHTML = wbody;
    }
    this.Show = function(Id) {
        if (Id == null) return;
        var oo = $(Id);
        if (!oo) return;
        oo.style.zIndex = ++zIndex;
    }
    this.Move = function(Id, evt, T) {
        if (Id == null) return;
        var oo = $(Id);
        if (!oo) return;
        if (oo.getAttribute("Max") != 0 || oo.getAttribute("Min") != 0) return;
        evt = evt ? evt : window.event;
        oo.style.position = "absolute";
        oo.style.zIndex = ++zIndex;
        var obj = evt.srcElement ? evt.srcElement : evt.target;
        if (obj.className == "wmin" || obj.className == "wmax" || obj.className == "wclo") return;
        var w = oo.offsetWidth;
        var h = oo.offsetHeight;
        var l = oo.offsetLeft;
        var t = oo.offsetTop;
        var div = document.createElement("DIV");
        document.body.appendChild(div);
        div.style.cssText = "filter:alpha(Opacity=10,style=0);opacity:0.2;width:" + w + "px;height:" + h + "px;top:" + t + "px;left:" + l + "px;position:absolute;background:#666";
        div.setAttribute("id", Id + "temp");
        if (T)
            this.Move_r(Id, evt);
        else
            this.Resize(Id, evt)
    }
    this.Resize = function(Id, evt) {
        var oo = $(Id + "temp");
        if (!oo) return;
        oo.style.zIndex = ++zIndex;
        evt = evt ? evt : window.event;
        var l = oo.offsetLeft;
        var t = oo.offsetTop;
        if (!window.captureEvents)
            oo.setCapture();
        else
            window.captureEvents(Event.MOUSEMOVE | Event.MOUSEUP);
        document.onmousemove = function(e) {
            if (!oo) return;
            e = e ? e : window.event;
            var w = e.clientX - l;
            var h = e.clientY - t;
            if (!Ie) h -= 2;
            if (w - 40 > 180 && e.clientX < document.documentElement.clientWidth) {
                oo.style.width = w + "px";
            }
            if (h - 55 > 10 && e.clientY < document.documentElement.clientHeight - 28) {
                oo.style.height = h + "px";
            }
        }
        document.onmouseup = function() {
            if (!oo) return;
            if (!window.captureEvents)
                oo.releaseCapture();
            else
                window.releaseEvents(Event.MOUSEMOVE | Event.MOUSEUP);
            var o1 = $(Id);
            if (!o1) return;
            var w = o1.offsetWidth;
            var h = o1.offsetHeight;
            MyWin.Resize_e(Id, oo.offsetWidth, oo.offsetHeight, w, h);
            document.body.removeChild(oo);
            oo = null;
        }
    }
    this.Move_r = function(Id, evt) {
        var oo = $(Id + "temp");
        if (!oo) return;
        evt = evt ? evt : window.event;
        var relLeft = evt.clientX - oo.offsetLeft;
        var relTop = evt.clientY - oo.offsetTop;
        if (!window.captureEvents)
            oo.setCapture();
        else
            window.captureEvents(Event.MOUSEMOVE | Event.MOUSEUP);
        document.onmousemove = function(e) {
            if (!oo) return;
            e = e ? e : window.event;

            if (e.clientX - relLeft <= 0)
                oo.style.left = 0 + "px";
            else if (e.clientX - relLeft >= document.documentElement.clientWidth - oo.offsetWidth - 2)//右边的宽度
                oo.style.left = (document.documentElement.clientWidth - oo.offsetWidth - 2) + "px";
            else
                oo.style.left = e.clientX - relLeft + "px";
            if (e.clientY - relTop <= 1)
                oo.style.top = 1 + "px";
            else if (e.clientY - relTop >= document.documentElement.clientHeight - oo.offsetHeight - 15)//下面的高度
                oo.style.top = (document.documentElement.clientHeight - oo.offsetHeight - 15) + "px";
            else
                oo.style.top = e.clientY - relTop + "px";
        }
        document.onmouseup = function() {
            if (!oo) return;
            if (!window.captureEvents)
                oo.releaseCapture();
            else
                window.releaseEvents(Event.MOUSEMOVE | Event.MOUSEUP);
            var l0 = oo.offsetLeft;
            var t0 = oo.offsetTop;
            var o1 = $(Id);
            if (!o1) return;
            var l = o1.offsetLeft;
            var t = o1.offsetTop;
            MyWin.Move_e(Id, l0, t0, l, t);
            document.body.removeChild(oo);
            oo = undefined;
        }
    }
    this.Move_e = function(Id, l0, t0, l, t) {
        if (typeof (window["ct" + Id]) != "undefined") clearTimeout(window["ct" + Id]);
        var oo = $(Id);
        if (!oo) return;
        var sls = sts = 8;
        var s_l = Math.abs(l0 - l);
        var s_t = Math.abs(t0 - t);
        if (s_l - s_t > 0)
            if (s_t)
            sls = Math.round(s_l / s_t) > 8 ? 8 : Math.round(s_l / s_t) * 6;
        else
            sls = 0;
        else
            if (s_l)
            sts = Math.round(s_t / s_l) > 8 ? 8 : Math.round(s_t / s_l) * 6;
        else
            sts = 0;
        if (l0 - l < 0) sls *= -1;
        if (t0 - t < 0) sts *= -1;
        if (Math.abs(l + sls - l0) < 52 && sls) sls = sls > 0 ? 2 : -2;
        if (Math.abs(t + sts - t0) < 52 && sts) sts = sts > 0 ? 2 : -2;
        if (Math.abs(l + sls - l0) < 16 && sls) sls = sls > 0 ? 1 : -1;
        if (Math.abs(t + sts - t0) < 16 && sts) sts = sts > 0 ? 1 : -1;
        if (Math.abs(l + sls - l0) < 8 && sls) sls = sls > 0 ? 0 : 0;
        if (Math.abs(t + sts - t0) < 8 && sts) sts = sts > 0 ? 0 : 0;

        if (s_l == 0 && s_t == 0) return;



        if (Math.abs(l + sls - l0) < 2)
            oo.style.left = l0 + "px";
        else
            oo.style.left = l + sls + "px";

        if (Math.abs(t + sts - t0) < 2)
            oo.style.top = t0 + "px";
        else
            oo.style.top = t + sts + "px";

        var leftstr = (parseInt(screen.width) - parseInt($(Id).style.width)) / 2 - window.screenLeft;
        var topstr = (parseInt(screen.height) - parseInt($(Id).style.height)) / 2 - window.screenTop;

        //alert(window.screenTop);

        window["ct" + Id] = window.setTimeout("MyWin.Move_e('" + Id + "', " + l0 + " , " + t0 + ", " + (l + sls) + ", " + (t + sts) + ")", 1);
    }
    this.Resize_e = function(Id, w0, h0, w, h) {
        if (typeof (window["dt" + Id]) != "undefined") clearTimeout(window["dt" + Id]);
        if (Id == null) return;
        var oo = $(Id);
        if (!oo) return;
        var sw = sh = 14;
        var s_w = Math.abs(w0 - w);
        var s_h = Math.abs(h0 - h);
        if (s_w - s_h > 0)
            if (s_w)
            sh = Math.round(s_h / s_w) > 8 ? 8 : Math.round(s_h / s_w) * 14;
        else
            sh = 0;
        else
            if (s_h)
            sw = Math.round(s_w / s_h) > 8 ? 8 : Math.round(s_w / s_h) * 14;
        else
            sw = 0;
        if (w0 - w < 0) sw *= -1;
        if (h0 - h < 0) sh *= -1;
        if (Math.abs(w + sw - w0) < 117 && sw) sw = sw > 0 ? 6 : -6;
        if (Math.abs(h + sh - h0) < 117 && sh) sh = sh > 0 ? 6 : -6;
        if (Math.abs(w + sw - w0) < 12 && sw) sw = sw > 0 ? 1 : -1;
        if (Math.abs(h + sh - h0) < 12 && sh) sh = sh > 0 ? 1 : -1;
        if (s_w == 0 && s_h == 0) {
            this.Show(Id);
            return;
        }
        var xw = xh = 0;
        if (Math.abs(w + sw - w0) < 2) {
            xw = w0;
        }
        else
            xw = w + sw;
        if (Math.abs(h + sh - h0) < 2)
            xh = h0;
        else
            xh = h + sh;
        oo.style.height = xh + "px";
        oo.childNodes[1].childNodes[0].style.height = (xh - 45) + "px";
        oo.childNodes[1].childNodes[1].style.height = (xh - 47) + "px";
        oo.childNodes[1].childNodes[2].style.height = (xh - 45) + "px";
        oo.style.width = xw + "px";
        oo.childNodes[0].childNodes[1].style.width = (xw - 30) + "px";
        oo.childNodes[2].childNodes[1].style.width = (xw - 30) + "px";
        oo.childNodes[1].childNodes[1].style.width = (xw - 32) + "px";
        window["dt" + Id] = window.setTimeout("MyWin.Resize_e('" + Id + "', " + w0 + " , " + h0 + ", " + (w + sw) + ", " + (h + sh) + ")", 0);
    }
    this.Close = function(type, Id, Opacity) {
        //document.getElementById("naa").style.display = "";
        if (typeof (window["et" + Id]) != "undefined") clearTimeout(window["et" + Id]);
        var oo = $(Id);
        if (!oo) return;
        if (Opacity == 100) oo.childNodes[0].childNodes[1].innerHTML = "";
        if (Ie) {
            oo.style.filter = "alpha(opacity=" + Opacity + ",style=0)";
        }
        else {
            oo.style.opacity = Opacity / 100;
        }
        if (Opacity > 20)
            Opacity -= 20;
        else
            Opacity = Opacity - 5;
        if (Opacity <= 5) {
            if (oo.getElementsByTagName("IFRAME").length != 0) {
                oo.getElementsByTagName("IFRAME").src = "about:blank";
            }
            oo.innerHTML = "";
            document.body.removeChild(oo);
            if (document.getElementById('naa') != null) {
                if (type == '2') { document.getElementById('naa').style.display = ''; }
            }
            return;
        }

        window["et" + Id] = window.setTimeout("MyWin.Close('" + type + "','" + Id + "', " + Opacity + ")", 10);
    }
    this.Min = function(Id) {
        var oo = $(Id);
        if (!oo) return;
        var State = oo.getAttribute("Min");
        var l = oo.offsetLeft;
        var t = oo.offsetTop;
        var w = oo.offsetWidth;
        var h = oo.offsetHeight;
        if (State == 0) {
            //这里要得到任务栏上的位置
            this.Move_e(Id, 0, 0, l, t);
            this.Resize_e(Id, 220, 65, w, h);
            oo.setAttribute("Min", l + "," + t + "," + w + "," + h);
        }
        else {
            State = State.split(",");
            this.Move_e(Id, State[0], State[1], l, t);
            this.Resize_e(Id, State[2], State[3], w, h);
            oo.setAttribute("Min", 0);
        }
    }
    this.Max = function(Id, This) {
        var oo = $(Id);
        if (!oo) return;
        if (oo.getAttribute("Min") != 0) return;
        var State = oo.getAttribute("Max");
        var l = oo.offsetLeft;
        var t = oo.offsetTop;
        var w = oo.offsetWidth;
        var h = oo.offsetHeight;
        if (State == 0) {
            this.Move_e(Id, 0, 0, l, t);
            this.Resize_e(Id, document.documentElement.clientWidth, document.documentElement.clientHeight - 28, w, h);
            oo.setAttribute("Max", l + "," + t + "," + w + "," + h);
            This.title = "恢复";
        }
        else {
            State = State.split(",");
            this.Move_e(Id, State[0], State[1], l, t);
            this.Resize_e(Id, State[2], State[3], w, h);
            oo.setAttribute("Max", 0);
            This.title = "最大化";
        }
    }
}
var MyWin = new Win();
var MyChat = new Chat();
var b = true;

/*////////////////////////////////////////////////////////////////////////////////////////////////////////////
聊天窗口
//////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
function Chat() {

    var FloatHtml = "\
	<table border='0' width='100%' height='100%' id='tabchat' style='table-layout: fixed;word-wrap:break-word;'>\
	<tr>\
			<td ><a href='#' onclick=''</td>\
		</tr>\
		<tr>\
			<td >{$content}</td>\
		</tr>\
	</table>\
";
    this.MakeFloat = function(oo, t, s) {
        if ($(oo)) {
            $(oo).style.zIndex = 1;
        } else {
            var d = document.createElement("div");
            d.id = oo;
            //d.className = 'float:width:400px;height:260px;position:absolute;left:0px;	bottom:20px;';
            d.style.cssText = "word-wrap:break-word;width:300px;height:203px;margin-left: 7px;background-color:White;position:absolute;left:0px;bottom:-200px;PADDING-RIGHT: 10px;OVERFLOW-Y: auto;scrollbar-face-color: #ffffff; PADDING-BOTTOM: 0px;filter:Alpha(Opacity=75),Chroma(Color=#FFFFFF); ";
            d.style.zIndex = 1;
            // var H = FloatHtml;
            // H = s; // showwin();
            //d.innerHTML = s;//
            //d.style.bottom = "-250px";
            document.body.appendChild(d);
            oo.scrollTop = oo.scrollHeight + 21;
            return ShowFloat(oo);
        }
    }
    ShowFloat = function(oo) {
        if (parseInt($(oo).style.bottom) < 30) {
            $(oo).style.bottom = parseInt($(oo).style.bottom) + 10 + "px";
        }
        else {
            clearTimeout(x);
            $(oo).style.bottom = "30px";
            return false;
        }
        var x = setTimeout("ShowFloat('" + oo + "')", 1);
    }
    CloseFloat = function(oo) {
        if (parseInt($(oo).style.bottom) > -200) {
            $(oo).style.bottom = parseInt($(oo).style.bottom) - 10 + "px";
        }
        else {
            clearTimeout(x);

            document.body.removeChild($(oo));
            return false;
        }
        var x = setTimeout("CloseFloat('" + oo + "')", 1);
    }
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                              人物走动
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var fwx = new fw(), sys = new Array(), udf = new Array(), race = new Array(), cRace = "red"
fw_ini()

function fw_ini() {
    sys.minePos = ""
    sys.vesPos = ""

    race["red"] = createClass("mine:50;ves:0;man:4;supply:8;keyBuild:,;hq:")
    race["blue"] = createClass("mine:50;ves:0;man:4;supply:8;keyBuild:,;hq:")
    //矿
    udf["mine"] = createClass("type:block;size:2,2;movepos:-1,-16;selpos:-4,16,48,30")
    udf["ves"] = createClass("type:block;size:1,1;movepos:2,3;selpos:-6,0,124,60")
    //基地 type:类型；wh：图片的宽，高；
    udf["0_hq"] = createClass("type:build;wh:260,205;size:3,3;movepos:0,-14;selpos:-8,22,140,80;hppos:5,86,130;hp:1500;btime:3;madelist:0_scv")
    udf["0_supply"] = createClass("type:build;wh:87,70;size:2,2;movepos:-2,-9;selpos:-5,18,95,56;hppos:2,62,94;hp:750;btime:2;mine:100;ves:0")
    udf["0_refinery"] = createClass("type:build;wh:125,95;size:3,2;movepos:-2,-32;selpos:-8,22,140,80;hppos:5,86,130;hp:750;btime:2;mine:100;ves:0")
    udf["0_barrack"] = createClass("type:build;wh:125,110;size:3,3;movepos:-2,-18;selpos:-8,34,140,80;hppos:5,86,130;hp:1000;btime:3;mine:150;ves:0;madelist:0_marine,0_firebat,0_medic")
    udf["0_academy"] = createClass("type:build;wh:95,95;size:2,2;movepos:-10,-32;selpos:-2,38,100,60;hppos:2,66,100;hp:600;btime:3;mine:150;ves:0")
    udf["0_gun_tower"] = createClass("type:build;wh:95,58;size:2,2;movepos:-8,2;selpos:-8,22,140,80")
    udf["0_missile"] = createClass("type:build;wh:41,50;size:1,1;movepos:0,-20;selpos:-8,22,140,80")
    //兵 
    udf["0_scv"] = createClass("type:unit;kind:ground;mvstyle:shift;speed:4;wh:48;selpos:5,12,36,24;hppos:1,33,35;hp:60;mine:50;ves:0")
    udf["0_marine"] = createClass("type:unit;kind:ground;mvstyle:walk;speed:3;wh:32;selpos:5,15,20,16;hppos:1,20,24;hp:40;mine:50;ves:0;range:4")
    udf["0_firebat"] = createClass("type:unit;kind:ground;mvstyle:walk;speed:3;wh:32;selpos:3,15,26,18;hppos:1,24,26;hp:50;mine:50;ves:25;range:1")
    udf["0_medic"] = createClass("type:unit;kind:ground;mvstyle:walk;speed:3;wh:32;selpos:3,15,26,18;hppos:1,24,26;hp:60;mine:25;ves:25")
    udf["0_tank"] = createClass("type:unit;kind:ground;speed:1;wh:72;selpos:10,16,50,40")
    udf["0_valture"] = createClass("type:unit;kind:ground;speed:1;wh:64;selpos:12,20,36,27")
    udf["0_wraith"] = createClass("type:unit;kind:air;speed:1;wh:48;selpos:12,16,27,20")
    //    alert(udf.length);
}

function createClass(k) {
    var ao = new Array(), ak = k.split(";")
    for (var i in ak) {
        ak[i] = ak[i].split(":")
        if (!isNaN(ak[i][1]))
            ak[i][1] = parseInt(ak[i][1])
        ao[ak[i][0]] = ak[i][1]
    }
    return ao
}
function showObj(ol) {
    var a = ol.split(";"), i, j
    for (i in a) {
        a[i] = a[i].split(",")
        for (j in a[i]) {
            if (i == 0 && a[i][j] != "")
                eval(a[i][j]).style.display = ""
            if (i == 1 && a[i][j] != "")
                eval(a[i][j]).style.display = "none"
        }
    }
}
function fw() {
    //uList定义：[0]-block;[1]-mine;[2]-build;[3]-unit
    this.uList = new Array("", "", "", "")
    //bList定义：[0]-mine;[1]-block and build;[2]-hold unit
    this.bList = new Array("", "", "")

    this.cEndPos = 0
    this.maxID = 0
    this.selUnit = ""
    this.adp = "1,0;1,1;0,1;-1,1;-1,0;-1,-1;0,-1;1,-1;1,0;1,1;0,1;-1,1;-1,0;-1,-1;0,-1;1,-1".split(";")



    for (var i = 0; i < 16; i++) {
        this.adp[i] = this.adp[i].split(",")
        this.adp[i][0] = parseInt(this.adp[i][0])
        this.adp[i][1] = parseInt(this.adp[i][1])
    }

    this.iniMap = function(k) {
        var l = "", lm = "", xi, yi, i, j, n

        var map_safeid = 0;
        if (document.getElementById("map_safeid") != null) {
            map_safeid = document.getElementById("map_safeid").innerHTML;
        }
        var a = k.split(";"), uu, a_sz, a_mv, a_sl, a_hp, a_wh

        for (i in a) {
            a[i] = a[i].split(",")
            if (a[i][0] == "size") {
                divSize.style.width = a[i][1] * 40
                divSize.style.height = a[i][2] * 30
            }
            else {
                xi = parseInt(a[i][2])
                yi = parseInt(a[i][3])
                uu = udf[a[i][1]]
                
                a_sl = uu.selpos.split(",")

                if (uu.type == "block" || uu.type == "build") {
                    a_sz = uu.size.split(",")
                    a_mv = uu.movepos.split(",")
                    for (j = 0; j < a_sz[0]; j++) {
                        for (n = 0; n < a_sz[1]; n++) {
                            //记录坐标
                            if (uu.type == "block")
                                this.bList[0] += ";" + (xi + j) + "," + (yi + n)
                            if (uu.type == "build")
                                this.bList[1] += ";" + (xi + j) + "," + (yi + n)
                        }
                    }
                }
                //记录坐标
                if (a[i][1] == "mine")
                    sys.minePos += ";" + xi + "," + yi
                if (a[i][1] == "ves")
                    sys.vesPos += ";" + xi + "," + yi

                //矿场
                if (uu.type == "block") {
                    this.uList[1] += ",unit_" + a[i][0]
                    l += "<span id=unit_" + a[i][0] + " name=" + a[i][1] + " uType=block px=" + xi + " py=" + yi + " pw=" + a_sz[0] + " ph=" + a_sz[1] + " style='left:" + (xi * 40 + parseInt(a_mv[0])) + ";top:" + (yi * 30 + parseInt(a_mv[1])) + ";z-index:999" + yi + "'>"
                    //l += "<v:oval coordsize='21600,21600' strokecolor=#F2F230 style='visibility:hidden;position:absolute;left:" + a_sl[0] + ";top:" + a_sl[1] + ";width:" + a_sl[2] + ";height:" + a_sl[3] + "'><v:fill opacity =0></v:fill></v:oval>"
                    if (a[i][1] == "mine") {
                        l += "<img src=/Images/style3D/rainbowDoor.gif>"
                    }
//                                        if (a[i][1] == "ves") {
//                                            l += "<img src=/Images/style3D/mine.gif>"
//                                       }
                    l += "</span>"
                    lm += "<hr id=unit_" + a[i][0] + "_mini color=#00E4FC style=left:" + (xi * 2) + ";top:" + (yi * 2) + ";width:" + (a_sz[0] * 2) + ";height:" + (a_sz[1] * 2) + ">"
                }

                //店铺
                if (uu.type == "build") {
                    var xmlDoc = GetXml();
                    var nodes = xmlDoc.documentElement.selectSingleNode(a[i][5]);
                    if (nodes != null) {
                        a_hp = uu.hppos.split(",")
                        a_wh = uu.wh.split(",")
                        var s_m = ""
                        this.uList[2] += ",unit_S_" + nodes.selectSingleNode("ShopID").text
                        l += "<span id=unit_S_" + nodes.selectSingleNode("ShopID").text + " name=" + a[i][1] + " uType=build hp=" + uu.hp + " chp=" + uu.hp + " bType='' bn=" + (a[i][5] == 0 ? 0 : -1) + "  mn=-1 sx=" + a_sz[0] + " sy=" + a_sz[1] + " px=" + xi + " py=" + yi + " pw=" + a_sz[0] + " ph=" + a_sz[1] + " aimu='' race='" + a[i][4] + "' style='left:" + nodes.selectSingleNode("D_Left").text + ";top:" + nodes.selectSingleNode("D_Top").text + ";z-index:" + yi + ";'>"
                        l += "<v:oval coordsize='21600,21600' strokecolor=" + (a[i][4] == cRace ? "#10FC18" : "#F83A3A") + " style='visibility:hidden;position:absolute;left:" + a_sl[0] + ";top:" + a_sl[1] + ";width:" + a_sl[2] + ";height:" + a_sl[3] + "'><v:fill opacity =0></v:fill><span class=hpbar style='left:" + a_hp[0] + ";top:" + a_hp[1] + ";width:" + a_hp[2] + "'><hr size=3 color=#249824 style=width:" + (a[i][5] == 0 ? 0 : "100%") + "></span></v:oval>"
                        l += "<span style=width:" + a_wh[0] + ";height:" + a_wh[1] + ";overflow:hidden;><img src=" + nodes.selectSingleNode("Dimg").text + " ></span>"

                        if (a[i][6] != "0" && nodes.selectSingleNode("DboothLogo").text != "") {
                            l += "<div style='left:105;top:5;width:68px;height:86px;background:url(" + nodes.selectSingleNode("DboothLogo").text + ")'></div>"
                        }
                        else {
                            if (a[i][6] != "0") {
                                l += "<div style='left:105;top:5;width:68px;height:86px;background:url(/Images/style3D/ad.gif)'></div>"
                            }
                        }
                        if (parseInt(map_safeid) > 0) {
                            l += "<div style='z-index:999;position:absolute;left:100;top:70;width:70px;height:70px;cursor:pointer;'  onclick=\"javascript:parent.location.href='ShowForm.aspx?ShopID=" + nodes.selectSingleNode("ShopID").text + "'\"><table width=100%><tr style=\"height:70px;\"><td></td></tr></table></div>"
                        }
                        else {
                            l += "<div style='z-index:999;position:absolute;left:100;top:70;width:70px;height:70px;' ><table width=100%><tr style=\"height:70px;\"><td></td></tr></table></div>"
                        }

                        //l += "<div style='z-index:999;position:absolute;left:100;top:70;width:70px;height:70px;cursor:pointer;'  onclick=\"javascript:parent.location.href='ShowForm.aspx?ShopID=" + nodes.selectSingleNode("ShopID").text + "'\"><table width=100%><tr style=\"height:70px;\"><td></td></tr></table></div>"
                        l += "</span>"
                        lm += "<hr id=unit_S_" + nodes.selectSingleNode("ShopID").text + "_mini ' style=left:" + (xi * 2) + ";top:" + (yi * 2) + ";width:" + (a_sz[0] * 2) + ";height:" + (a_sz[1] * 2) + ">;"// + nodes.selectSingleNode("DboothLogo").text + "
                        if (a[i][1] == "0_hq") {
                            race[a[i][4]].hq = (xi + 1) + "," + (yi + 1)
                        }
                    }
                }

                //人




                if (uu.type == "unit") {

                    a_hp = uu.hppos.split(",")
                    var str = "visibility:hidden;";
                    if (a[i][4] == "red") {
                        fwx.selUnit = "unit_U_" + a[i][0];
                        str = "";
                    }


                    this.uList[3] += ",unit_U_" + a[i][0];

                    l += "<span id=unit_U_" + a[i][0] + " name=" + a[i][1] + " uType=unit hp=" + uu.hp + " chp=" + uu.hp + " mvstyle='" + uu.mvstyle + "' px=" + xi + " py=" + yi + " cw=" + uu.wh + " race='" + a[i][4] + "' class='unit_" + uu.kind + "' speed='" + uu.speed + "' path='' aimPos='' aimn=0 aimu='' face='' pose=0 tmMove=0 tmDir=0 style='left:" + (xi * 40 + (40 - uu.wh) / 2) + ";top:" + (yi * 30 + (30 - uu.wh) / 2) + ";z-index:" + yi + "'>"
                    //l += "<span style=\" vertical-align:top;\">sdfsdfsd</span>";

                    //画圈
                    l += "<v:oval coordsize='31600,31600' strokecolor=" + (a[i][4] == cRace ? "#10FC18" : "#F83A3A") + " style='position:absolute;left:8;top:30;width:" + a_sl[2] + ";height:" + a_sl[3] + "'><v:fill opacity =0></v:fill><span class=hpbar style='visibility:hidden;left:" + a_hp[0] + ";top:" + a_hp[1] + ";width:" + a_hp[2] + "'><hr size=3 color=#249824 style=width:100%></span></v:oval>"
                    //
                    if (a[i][4] == "red") {
                        l += "<span style='width:" + uu.wh + ";height:" + uu.wh + ";overflow:hidden;'><img src='/Images/style3D/" + a[i][1] + "_" + a[i][6] + ".gif' ></span>"
                        l += "<span></span><div style='filter:alpha(Opacity=70,style=0);opacity:0.2;background:#FC9;top:-10px; text-align:center; width:30px;' ><nobr>" + a[i][5] + "</nobr></div></span>"//名字

                    } else {
                        if (parseInt(map_safeid) > 0) {
                            l += "<span style='width:" + uu.wh + ";height:" + uu.wh + ";overflow:hidden;cursor:pointer;'><img src=/Images/style3D/" + a[i][1] + "_" + a[i][6] + ".gif onclick=\"parent.ShowMsg('" + a[i][0] + "','" + a[i][5] + "');\" style=top:" + (-parseInt(5 * Math.random()) * uu.wh) + "></span>"
                            l += "<span></span><div style='filter:alpha(Opacity=70,style=0);opacity:0.2;background:#FC9;top:-10px; text-align:center; width:30px;cursor:pointer;' onclick=\"parent.ShowMsg('" + a[i][0] + "','" + a[i][5] + "');\"><nobr>" + a[i][5] + "</nobr></div></span>"//名字

                        } else {
                            l += "<span style='width:" + uu.wh + ";height:" + uu.wh + ";overflow:hidden;'><img src=/Images/style3D/" + a[i][1] + "_" + a[i][6] + ".gif style=top:" + (-parseInt(5 * Math.random()) * uu.wh) + "></span>"
                            l += "<span></span><div style='filter:alpha(Opacity=70,style=0);opacity:0.2;background:#FC9;top:-10px; text-align:center; width:30px;' ><nobr>" + a[i][5] + "</nobr></div></span>"//名字

                        }
                        //l += "<span style='width:" + uu.wh + ";height:" + uu.wh + ";overflow:hidden;cursor:pointer;'><img src=/Images/style3D/" + a[i][1] + "_" + a[i][6] + ".gif onclick=\"parent.ShowMsg('" + a[i][0] + "','" + a[i][5] + "');\" style=top:" + (-parseInt(5 * Math.random()) * uu.wh) + "></span>"
                        //l += "<span></span><div style='filter:alpha(Opacity=70,style=0);opacity:0.2;background:#FC9;top:-10px; text-align:center; width:30px;cursor:pointer;' onclick=\"parent.ShowMsg('" + a[i][0] + "','" + a[i][5] + "');\"><nobr>" + a[i][5] + "</nobr></div></span>"//名字

                    }
                    //l += "<span></span><div style='filter:alpha(Opacity=70,style=0);opacity:0.2;background:#FC9;top:-10px; text-align:center; width:30px;cursor:pointer;' ><nobr>" + a[i][5] + "</nobr></div></span>"//名字
                    lm += "<hr id=unit_U_" + a[i][0] + "_mini color='" + a[i][4] + "' style=left:" + (xi * 2) + ";top:" + (yi * 2) + ";width:2;height:2>"
                }
            }
        }
        //alert(l);
        //document.write(l);

        this.maxID = parseInt(a[i][0]) + 1
        if (sys.minePos.slice(0, 1) == ";")
            sys.minePos = sys.minePos.slice(1)
        if (sys.vesPos.slice(0, 1) == ";")
            sys.vesPos = sys.vesPos.slice(1)
        if (this.bList[0].slice(0, 1) == ";")
            this.bList[0] = this.bList[0].slice(1)
        if (this.bList[1].slice(0, 1) == ";")
            this.bList[1] = this.bList[1].slice(1)
        if (this.uList[0].slice(0, 1) == ",")
            this.uList[0] = this.uList[0].slice(1)
        if (this.uList[1].slice(0, 1) == ",")
            this.uList[1] = this.uList[1].slice(1)
        if (this.uList[2].slice(0, 1) == ",")
            this.uList[2] = this.uList[2].slice(1)
        if (this.uList[3].slice(0, 1) == ",")
            this.uList[3] = this.uList[3].slice(1)
        divMain.insertAdjacentHTML("beforeend", l)
        mini_map.insertAdjacentHTML("afterbegin", lm)
    }
    this.delUnit = function(u) {
        var u_mini = eval(u.id + "_mini")
        if (this.selUnit == u.id)
            this.selUnit = ""
        for (i = 0; i < u.pw; i++) {
            for (j = 0; j < u.ph; j++) {
                this.bList[1] = (";" + this.bList[1] + ";").replace(";" + (parseInt(u.px) + i) + "," + (parseInt(u.py) + j) + ";", ";").slice(1, -1)
            }
        }
        this.uList[2] = ("," + this.uList[2] + ",").replace("," + u.id + ",", ",").slice(1, -1)
        this.uList[3] = ("," + this.uList[3] + ",").replace("," + u.id + ",", ",").slice(1, -1)
        this.selUnit = ("," + this.selUnit + ",").replace("," + u.id + ",", ",").slice(1, -1)
        u.removeNode(true)
        u_mini.removeNode(true)
    }

    this.uInPos = function(p) {
        var u, o, a = (this.uList[1] + "," + this.uList[2] + "," + this.uList[3]).split(",");
        var pw, ph;
        for (var i = 0; i < a.length; i++) {
            if (a[i] != "") {
                o = eval(a[i]);
                pw = o.pw == null ? 1 : o.pw;
                ph = o.ph == null ? 1 : o.ph;
                if (p.x - o.px < pw && p.x - o.px >= 0 && p.y - o.py < ph && p.y - o.py >= 0) {
                    u = o;
                    if (u.name != "ves")
                        break;
                }
            }
        }
        return u;
    }
    //选中
    this.selRange = function(sp, ep) {
        //alert("选中")
        var l = "", u, a, i
        if (fwx.selUnit != "") {
            a = fwx.selUnit.split(",")
            for (i in a) {
                u = eval(a[i])
                u.children(0).style.visibility = "hidden"
            }
        }
        a = this.uList[3].split(",")
        for (i = 0; i < a.length; i++) {
            u = eval(a[i])
            if (u.race == cRace && ((u.px >= sp.x && ep.x >= u.px) || (u.px <= sp.x && ep.x <= u.px)) && ((u.py >= sp.y && ep.y >= u.py) || (u.py <= sp.y && ep.y <= u.py))) {
                u.children(0).style.visibility = ""
                l += u.id + ","
            }
        }
        l = l.slice(0, -1)
        if (sp.v == ep.v && l == "") {
            u = this.uInPos(sp)
            if (u != null) {
                u.children(0).style.visibility = ""
                l = u.id
            }
        }
        fwx.selUnit = l
    }
    //获取选中用户
    this.setUBlock = function(u) {
        var u
        this.bList[2] = ""
        //获取所有在线用户的SPAN的ID
        al = this.uList[3].split(",")
        //遍历当前用户
        for (i in al) {
            u = eval(al[i])
            //判断是否是被选中用户
            if (u.path == "" && ("," + this.selUnit + ",").indexOf("," + u.id + ",") == -1)
                this.bList[2] += u.px + "," + u.py + ";"
        }
        this.bList[2] = ";" + this.bList[2]
        if (u != null)
            this.bList[2] = this.bList[2].replace(";" + u.px + "," + u.py + ";", ";")
    }
    //行走
    this.go = function(ep0) {

        if (this.selUnit == "")
            return
        var sp = new pt(), ep = new pt()
        var al, a, i, s, rv, epu, epuName, u
        this.setUBlock()
        this.cEndPos = 0
        al = fwx.selUnit.split(",")

        for (i in al) {
            u = eval(al[i])
            epu = this.uInPos(ep0)
            epuName = epu == null ? "" : epu.name
            u.aimPos = ""
            u.task = ""
            u.aimu = ""
            u.children(2).innerHTML = ""
            u.children(1).style.display = ""
            if (epu != null) {
                if ((u.name == "0_firebat" || u.name == "0_marine") && epu.race != cRace) {
                    u.aimu = epu.id
                    u.task = "attack"
                }
            }
            sp.setv(u.px, u.py)


            this.bList[2] = fwx.bList[2].replace(";" + sp.v + ";", ";")
            s = ""
            if (u.className == "airUnit")
                s = "airUnit"
            if (u.name == "0_scv" && epuName == "mine")
                s = "mining"
            rv = this.getEndPos(ep0, s)
            if (rv[0] == "")
                return
            if (rv[1] != "")
                u.aimu = rv[1]

            ep.setv(rv[0])

            if (u.className == "airUnit")
                u.path = ep.v
            else {
                if (this.inBlock(ep))
                    return
                l = this.getPath(sp, ep)
                u.path = l
                if (u.name == "0_scv") {
                    a = "2,0;2,1;1,2;0,2;-1,2;-2,1;-2,0;-2,-1;-1,-2;0,-2;1,-2;2,-1".split(";")
                    var n = parseInt(12 * Math.random())
                    a[n] = a[n].split(",")
                    sp.setv(race[u.race].hq)
                    sp.setv(sp.x + parseInt(a[n][0]), sp.y + parseInt(a[n][1]))
                    if (epuName == "mine") {
                        u.aimPos = u.aimu + ",400;" + sp.v + ";" + ep.v
                        u.task = "mining"
                    }
                    if (epuName == "0_refinery") {
                        if (epu.bn == -1) {
                            u.aimPos = epu.id + ",100;" + sp.v + ";" + ep.v
                            u.task = "gasing"
                        }
                    }
                }
            }
        }
    }
    //行走
    this.goBlue = function(ep0, blueid) {

        if (this.selUnit == "")
            return
        var sp = new pt(), ep = new pt()
        var a, i, s, rv, epu, epuName, u

        this.cEndPos = 0

        u = eval(blueid)
        epu = this.uInPos(ep0)
        epuName = epu == null ? "" : epu.name
        u.aimPos = ""
        u.task = ""
        u.aimu = ""
        u.children(2).innerHTML = ""
        u.children(1).style.display = ""
        if (epu != null) {
            if ((u.name == "0_firebat" || u.name == "0_marine") && epu.race != cRace) {
                u.aimu = epu.id
                u.task = "attack"
            }
        }
        sp.setv(u.px, u.py)

        this.bList[2] = fwx.bList[2].replace(";" + sp.v + ";", ";")
        s = ""
        if (u.className == "airUnit")
            s = "airUnit"
        if (u.name == "0_scv" && epuName == "mine")
            s = "mining"
        rv = this.getEndPos(ep0, s)
        if (rv[0] == "")
            return
        if (rv[1] != "")
            u.aimu = rv[1]

        ep.setv(rv[0])

        if (u.className == "airUnit")
            u.path = ep.v
        else {
            if (this.inBlock(ep))
                return
            l = this.getPath(sp, ep)
            u.path = l
            if (u.name == "0_scv") {
                a = "2,0;2,1;1,2;0,2;-1,2;-2,1;-2,0;-2,-1;-1,-2;0,-2;1,-2;2,-1".split(";")
                var n = parseInt(12 * Math.random())
                a[n] = a[n].split(",")
                sp.setv(race[u.race].hq)
                sp.setv(sp.x + parseInt(a[n][0]), sp.y + parseInt(a[n][1]))
                if (epuName == "mine") {
                    u.aimPos = u.aimu + ",400;" + sp.v + ";" + ep.v
                    u.task = "mining"
                }
                if (epuName == "0_refinery") {
                    if (epu.bn == -1) {
                        u.aimPos = epu.id + ",100;" + sp.v + ";" + ep.v
                        u.task = "gasing"
                    }
                }
            }
        }
    }
    //采矿事件
    this.setSpark = function(u) {
        var s = "left:-10;top:0"
        if (u.face == 0)
            s = "left:5;top:-10"
        if (u.face == "1f")
            s = "left:-5;top:-10"
        if (u.face == 1)
            s = "left:18;top:-10"
        if (u.face == 2)
            s = "left:18;top:0"
        if (u.face == 3)
            s = "left:18;top:15"
        if (u.face == "3f")
            s = "left:-5;top:15"
        if (u.face == 4)
            s = "left:0;top:15"
        u.children(2).innerHTML = "<img src=unit/0_scv_spark.gif style=" + s + ">"
    }

    //图片动作获取，打印相应动作的图片
    this.setFight = function(u) {
        var l = "", a_fpos = new Array(), p = new pt(0, 0)
        a_fpos = createClass("0_marine_4:0,-3;0_marine_3:5,-1;0_marine_3f:-4,-1;0_marine_2:4,0;0_marine_2f:-4,0;0_marine_1:4,0;0_marine_1f:-4,0;0_marine_0:6,-4;0_firebat_4:6,0;0_firebat_0:-13,-64;0_firebat_1:5,-56;0_firebat_1f:-30,-56;0_firebat_2:4,-35;0_firebat_2f:-65,-35;0_firebat_3:4,0;0_firebat_3f:-57,0")
        if (a_fpos[u.name + "_" + u.face] != null)
            p.setv(a_fpos[u.name + "_" + u.face])
        l = "<img src=unit/" + u.name + "_" + u.race + "_atk0.gif style=left:" + p.x + ";top:" + p.y + ">"
        if (u.face == 1)
            l = "<img src=unit/" + u.name + "_" + u.race + "_atk1.gif style=left:" + p.x + ";top:" + p.y + ">"
        if (u.face == "1f")
            l = "<img src=unit/" + u.name + "_" + u.race + "_atk1.gif style=filter:fliph;left:" + p.x + ";top:" + p.y + ">"
        if (u.face == 2)
            l = "<img src=unit/" + u.name + "_" + u.race + "_atk2.gif style=left:" + p.x + ";top:" + p.y + ">"
        if (u.face == "2f")
            l = "<img src=unit/" + u.name + "_" + u.race + "_atk2.gif style=filter:fliph;left:" + p.x + ";top:" + p.y + ">"
        if (u.face == "3")
            l = "<img src=unit/" + u.name + "_" + u.race + "_atk3.gif style=left:" + p.x + ";top:" + p.y + ">"
        if (u.face == "3f")
            l = "<img src=unit/" + u.name + "_" + u.race + "_atk3.gif style=filter:fliph;left:" + p.x + ";top:" + p.y + ">"
        if (u.face == "4")
            l = "<img src=unit/" + u.name + "_" + u.race + "_atk4.gif style=left:" + p.x + ";top:" + p.y + ">"
        u.children(1).style.display = "none"
        u.children(2).innerHTML = l
    }

    //小窗口的路线
    this.getMinLen = function(u, aimu) {
        var n0 = 1000, pw, ph, n, ep = new pt(), dp = new pt(), a_rv = new Array()
        pw = aimu.pw == null ? 1 : aimu.pw
        ph = aimu.ph == null ? 1 : aimu.ph
        for (var i = 0; i < pw; i++) {
            for (var j = 0; j < ph; j++) {
                ep.setv(parseInt(aimu.px) + i, parseInt(aimu.py) + j)
                n = Math.max(Math.abs(ep.x - u.px), Math.abs(ep.y - u.py))
                if (n < n0) {
                    n0 = n
                    dp.setv(ep.x == u.px ? 0 : (ep.x > u.px ? 1 : -1), ep.y == u.py ? 0 : (ep.y > u.py ? 1 : -1))
                }
            }
        }
        a_rv[0] = n0
        a_rv[1] = dp.v
        return a_rv
    }

    //移动坐标
    this.move = function(u) {
        var dp = new pt(), sp = new pt(), ep = new pt()
        if (u.path == "") {
            sp.setv(u.px, u.py)
            if (u.mvstyle == "walk") {
                u.children(1).scrollLeft = 0
            }
            if (u.task == "attack") {
                if (("," + this.uList[2] + "," + this.uList[3] + ",").indexOf("," + u.aimu + ",") == -1) {
                    u.task = ""
                    u.children(1).style.display = ""
                    u.children(2).innerHTML = ""
                }
                else {
                    if (u.children(1).style.display != "none") {
                        var aimu = eval(u.aimu)
                        dp.setv(this.getMinLen(u, aimu)[1])
                        this.setDir(u, dp)
                        this.setFight(u)
                        //if(aimu.task!="attack"){
                        //	aimu.aimu=u.id
                        //	aimu.task="attack"
                        //}
                    }
                    eval(u.aimu).chp -= 0.2
                }
            }

            //建筑物的会话: 建筑物的动画
            if (u.task == "build") {
                o = eval(u.aimu)
                u.tmMove = parseInt(u.tmMove) + 1
                if (u.tmMove == 10) {
                    dp.setv(o.px == sp.x ? 0 : (o.px > sp.x ? 1 : -1), o.py == sp.y ? 0 : (o.py > sp.y ? 1 : -1))
                    this.setDir(u, dp)
                    this.setSpark(u)
                }
                o.bn = parseInt(o.bn) + 1
                var per = parseInt(0.3 * o.bn / udf[o.name].btime)
                o.children(0).children(1).children(0).style.width = per + "%"
                if (per == 50)
                    o.children(1).children(0).style.posLeft = -o.children(1).style.posWidth
                if (per >= 100) {
                    o.children(1).children(0).style.posLeft = 0
                    o.bn = -1
                    u.task = ""
                    u.aimu = ""
                    if (o.name == "0_academy") {
                        race[cRace].keyBuild += o.name + ","
                        if (menu_build.children(0).children.length == 3) {
                            menu_build.children(0).children(1).style.filter = ""
                            menu_build.children(0).children(2).style.filter = ""
                        }
                    }
                    if (o.name == "0_supply")
                        race[cRace].supply += 8
                    if (o.name == "0_barrack")
                        menu_work.children(0).children(3).style.filter = ""
                    refVal()
                    u.children(2).innerHTML = ""
                    if (o.name == "0_refinery")
                        o.children(2).innerHTML = "<img src='block/ves_gas.gif' style=left:55;top:-20>"
                }
            }

            if (u.aimPos != "") {
                var a = u.aimPos.split(";"), ad, s
                u.aimn = parseInt(u.aimn)
                ad = a[u.aimn].split(",")
                if (isNaN(ad[0])) {
                    o = eval(ad[0])
                    if (u.task == "gasing") {
                        if (o.aimu == "")
                            o.aimu = u.id
                        if (o.aimu != u.id) {
                            dp.setv((parseInt(o.px) + 1) == sp.x ? 0 : ((parseInt(o.px) + 1) > sp.x ? 1 : -1), o.py == sp.y ? 0 : (o.py > sp.y ? 1 : -1))
                            this.setDir(u, dp)
                            return
                        }
                    }

                    u.tmMove = parseInt(u.tmMove) + 1
                    if (u.tmMove == 5) {
                        if (u.task == "mining") {
                            dp.setv(o.px == sp.x ? 0 : (o.px > sp.x ? 1 : -1), o.py == sp.y ? 0 : (o.py > sp.y ? 1 : -1))
                            this.setDir(u, dp)
                            this.setSpark(u)
                        }
                        if (u.task == "gasing")
                            u.style.display = "none"
                    }
                    if (u.tmMove < ad[1])
                        return
                    if (u.task == "gasing") {
                        u.style.display = ""
                        o.aimu = ""
                    }
                    u.children(2).innerHTML = ""
                }
                else {
                    fwx.bList[2] = ""
                    ep.setv(a[u.aimn])
                    u.path = this.getPath(sp, ep)
                }
                if (u.task == "mining" && u.aimn == 1)
                    u.children(1).children(0).style.posLeft = -u.cw
                if (u.task == "gasing" && u.aimn == 1)
                    u.children(1).children(0).style.posLeft = -2 * u.cw
                if ((u.task == "mining") && u.aimn == 2) {
                    u.children(1).children(0).style.posLeft = 0
                    race[cRace].mine += 8
                    refVal()
                }
                if ((u.task == "gasing") && u.aimn == 2) {
                    u.children(1).children(0).style.posLeft = 0
                    race[cRace].ves += 8
                    refVal()
                }
                u.aimn = (u.aimn + 1) % a.length
            }
            return
        }
        u.tmDir = (parseInt(u.tmDir) + 1) % 4
        u.tmMove = (parseInt(u.tmMove) + 1) % 5
        if (u.path != null) {
            ep.setv(u.path.slice(0, (u.path + ";").indexOf(";")))
        }
        ep.setv(ep.x * 40 - (u.cw - 40) / 2, ep.y * 30 - (u.cw - 30) / 2)
        
        if (Math.abs(ep.x - u.style.posLeft) < u.speed)
            u.style.posLeft = ep.x
        if (Math.abs(ep.y - u.style.posTop) < u.speed)
            u.style.posTop = ep.y
        sp.setv(u.style.posLeft, u.style.posTop)
        dp.setv(ep.x == sp.x ? 0 : (ep.x > sp.x ? 1 : -1), ep.y == sp.y ? 0 : (ep.y > sp.y ? 1 : -1))
        if (u.task == "attack") {
            var aimu = eval(u.aimu)
            if (this.getMinLen(u, aimu)[0] <= udf[u.name].range && Math.abs(u.px * 40 - (u.cw - 40) / 2 - u.style.posLeft) <= u.speed && Math.abs(u.py * 30 - (u.cw - 30) / 2 - u.style.posTop) <= u.speed) {
                u.path = ""
                return
            }
        }
        if (dp.v == "0,0") {
            u.path = u.path.slice((u.path + ";").indexOf(";") + 1)
            if (u.children(1).offsetWidth == u.offsetWidth * 3)
                u.children(1).scrollLeft = u.children(1).style.filter == "" ? 0 : 2 * u.offsetWidth
            if (u.path == "" && u.uType == "unit") {
                this.searchEnemy()
            }
            return
        }
        this.setDir(u, dp)
        if (dp.x * dp.y == 0) {
            u.style.posLeft += dp.x * u.speed
            u.style.posTop += dp.y * u.speed
        }
        else {
            u.style.posLeft += dp.x * (u.speed > 2 ? u.speed - 1 : u.speed)
            if (u.tmDir != 0)
                u.style.posTop += dp.y * (u.speed > 2 ? u.speed - 1 : u.speed)
        }
        sp.setv(parseInt((u.style.posLeft + u.cw / 2) / 40), parseInt((u.style.posTop + u.cw / 2) / 30))
        u.px = sp.x
        u.py = sp.y
        if (u.className == "unit_ground")
            u.style.zIndex = sp.y
        eval(u.id + "_mini").style.posLeft = sp.x * 2
        eval(u.id + "_mini").style.posTop = sp.y * 2
    }

    //寻找
    this.searchEnemy = function() {
        var n, u, aimu, a1 = this.uList[3].split(","), a2 = (this.uList[2] + "," + this.uList[3]).split(",")
        for (var i in a1) {
            u = eval(a1[i])
            if (u.name != "0_scv" && u.name != "0_medic") {
                for (var j in a2) {
                    aimu = eval(a2[j])
                    if (aimu.race != u.race) {//判断是否为同一种族
                        n = this.getMinLen(u, aimu)[0]
                        if (n <= 6) {
                            var sp = new pt(u.px, u.py), ep = new pt(aimu.px, aimu.py)
                            this.setUBlock(u)
                            this.bList[2] = ""
                            u.path = this.getPath(sp, ep)//跟随 (path-路径  getPath-行走到坐标)
                            u.aimu = aimu.id
                            u.task = "attack"
                            break
                        }
                    }
                }
            }
        }
    }

    this.setDir = function(u, dp) {
        var n = 2, f = ""
        if (dp.v == "1,1" || dp.v == "-1,1")
            n = 3
        if (dp.v == "0,1")
            n = 4
        if (dp.v == "-1,1")
            f = "fliph"
        if (dp.v == "-1,0")
            f = "fliph"
        if (dp.v == "-1,-1")
            f = "fliph"
        if (dp.v == "0,-1")
            n = 0
        if (dp.v == "1,-1" || dp.v == "-1,-1")
            n = 1
        u.children(1).children(0).style.posTop = -n * u.children(1).style.posWidth
        u.children(1).style.filter = f
        u.face = n + f.slice(0, 1)
        if (u.mvstyle == "walk" && u.tmMove == 4) {
            u.pose = (parseInt(u.pose) + 1) % 4
            n = u.pose < 2 ? u.pose : (u.pose == 2 ? 0 : 2)
            u.children(1).scrollLeft = n * u.children(1).style.posWidth
        }
    }

    this.inBlock = function(p) {
        return (";" + this.bList[0] + ";" + this.bList[1] + ";" + this.bList[2] + ";").indexOf(";" + p.v + ";") > -1 ? true : false
    }

    this.paint = function(p, c) {
        if (p.x >= 0 && p.y >= 0)
            tbMap.rows(p.y).cells(p.x).bgColor = c
    }

    //停止行走
    this.isPass = function(sp, ep) {
        var cp = new pt(sp.v), b = true
        for (var ti = 0; ti < 500; ti++) {
            cp.setv(ep.x == cp.x ? cp.x : (ep.x > cp.x ? cp.x + 1 : cp.x - 1), ep.y == cp.y ? cp.y : (ep.y > cp.y ? cp.y + 1 : cp.y - 1))
            if (this.inBlock(cp)) {
                b = false
                break//跳出循环
            }
            if (cp.v == ep.v)
                break//跳出循环
        }
        return b
    }
    //到达终点
    this.getEndPos = function(ep, ut) {
        var rv = new Array("", "")
        var cp = new pt(), i, j, ol, o
        var ad, a = new Array("0,0", "1,0", "1,1", "0,1", "-1,1", "-1,0", "-1,-1", "0,-1", "1,-1", "2,0", "2,1", "2,2", "1,2", "0,2", "-1,2", "-2,2", "-2,1", "-2,0", "-2,-1", "-2,-2", "-1,-2", "0,-2", "1,-2", "2,-2", "2,-1")

        for (i = this.cEndPos; i < a.length; i++) {
            //alert("+"+ep.x + parseInt(a[i][0]), ep.y + parseInt(a[i][1]));
            a[i] = a[i].split(",")
            cp.setv(ep.x + parseInt(a[i][0]), ep.y + parseInt(a[i][1]))
            if (ut == "airUnit") {
                rv[0] = cp.v
                break
            }
            else//小窗口
                if (!this.inBlock(cp) && cp.x > -1 && cp.y > -1) {
                if (ut == "mining") {
                    ad = this.uList[1].split(",")
                    for (j in ad) {
                        o = eval(ad[j])
                        if (Math.abs(cp.x - o.px) + Math.abs(cp.y - o.py) == 1) {
                            rv[0] = cp.v
                            rv[1] = o.id
                            break
                        }
                    }
                    if (rv[0] != "")
                        break
                }
                else {
                    rv[0] = cp.v
                    break
                }
            }
        }
        this.cEndPos = i + 1
        return rv
    }

    //计算路线
    this.getPath = function(sp, ep) {
        var cp = new pt(sp.v), op = new pt(), np = new pt()
        var l = "", s, f = 0
        while (cp.v != ep.v) {
            np.setv(ep.x == cp.x ? cp.x : (ep.x > cp.x ? cp.x + 1 : cp.x - 1), ep.y == cp.y ? cp.y : (ep.y > cp.y ? cp.y + 1 : cp.y - 1))
            if (this.inBlock(np) && !this.inBlock(cp) && f == 0) {
                l += cp.v + ";"
                op.setv(cp.v)
            }
            if (!this.inBlock(np) && this.inBlock(cp)) {
                s = this.getSeg(op, np)
                f = s == "" ? 1 : 0
                l += s
            }
            if (!this.inBlock(cp) && f == 0)
                l += cp.v + ";"
            cp.setv(np.v)
        }
        l = sp.v + ";" + l
        l = f == 0 ? l + ep.v : l.slice(0, -1)
        a = l.split(";")
        l = ""
        var tp1 = new pt(), tp2 = new pt()
        for (i = 0; i < a.length - 1; i++) {
            tp1.setv(a[i])
            n = i
            for (j = i + 1; j < a.length; j++) {
                tp2.setv(a[j])
                if (this.isPass(tp1, tp2)) {
                    n = j
                }
            }
            if (i != 0)
                l += tp1.v + ";"
            tp2.setv(a[n])
            l += tp2.v + ";"
            i = n
        }
        l = l.slice(0, -1)
        return l
    }
    this.getSeg = function(sp, ep) {
        var bpt = new pt(), cpt = new pt(), bp1 = new pt(), bp2 = new pt(), cp1 = new pt(sp.v), cp2 = new pt(sp.v)
        var l = "", l1 = "", l2 = "", f, open1 = true, open2 = true
        bp1.setv(ep.x == sp.x ? sp.x : (ep.x > sp.x ? sp.x + 1 : sp.x - 1), ep.y == sp.y ? sp.y : (ep.y > sp.y ? sp.y + 1 : sp.y - 1))
        bp2.setv(bp1.v)

        for (var ti = 0; ti < 100; ti++) {
            f = 0
            for (i = 0; i < 14; i++) {
                cpt.setv(cp1.x + this.adp[i][0], cp1.y + this.adp[i][1])
                if (bp1.v == cpt.v)
                    f = 1
                if (f == 1 && !this.inBlock(cpt) && this.adp[i][0] * this.adp[i][1] == 0)
                    break
                if (this.inBlock(cpt))
                    bpt.setv(cpt.v)
            }
            bp1.setv(bpt.v)
            cp1.setv(cpt.v)
            l1 += cp1.v + ";"
            f = 0
            for (i = 13; i >= 0; i--) {
                cpt.setv(cp2.x + this.adp[i][0], cp2.y + this.adp[i][1])
                if (bp2.v == cpt.v)
                    f = 1
                if (f == 1 && !this.inBlock(cpt) && this.adp[i][0] * this.adp[i][1] == 0)
                    break
                bpt.setv(cpt.v)
            }
            bp2.setv(bpt.v)
            cp2.setv(cpt.v)
            if (cp1.v == sp.v && cp2.v == sp.v)
                break
            l2 += cp2.v + ";"
            if (cp1.x < 0 || cp1.y < 0)
                open1 = false
            if (cp2.x < 0 || cp2.y < 0)
                open2 = false
            if (!open1 && !open2)
                break
            if (cp1.v == ep.v && open1) {
                l = l1
                break
            }
            if (cp2.v == ep.v && open2) {
                l = l2
                break
            }
        }
        return l
    }
}

function GetXml() {
    var Url = "/Config/ShowXML.xml";
    var xmlDoc;
    var b = true;
    var nodeLength = 0;
    xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
    xmlDoc.async = "false"
    xmlDoc.load(Url);
    return xmlDoc;
}



function pt(x, y) {
    this.setv = function(x, y) {
        if (y != null) {
            this.x = parseInt(x)
            this.y = parseInt(y)
            this.v = this.x + "," + this.y//坐标
        }
        else {
            if (x != null && x.toString() != 'NaN') {
                //alert("行走");
                var a = x.split(",")
                this.x = parseInt(a[0])
                this.y = parseInt(a[1])
                this.v = this.x + "," + this.y//坐标
            }
        }
    }
    if (x != null)
        this.setv(x, y)//回调
}