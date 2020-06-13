<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_Localizer, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
<script type="text/javascript" src="/JS/ajaxrequest.js"></script>
<script type="text/javascript" src="/Images/style3D/fun.js"></script>
</head>
<style>
    v\:*
    {
        behavior: url(#default#VML);
    }
    A
    {
        color: white;
        text-decoration: none;
    }
    A:hover
    {
        color: yellow;
        text-decoration: underline;
    }
    TD
    {
        color: white;
        font-size: 12px;
    }
    .bon1
    {
        border-bottom: #eeeeee 1px solid;
        border-left: gray 1px solid;
        background-color: #619ce7;
        width: 54px;
        color: yellow;
        border-top: gray 1px solid;
        border-right: #eeeeee 1px solid;
    }
    .bon2
    {
        border-bottom: gray 1px solid;
        border-left: #eeeeee 1px solid;
        background-color: #619ce7;
        width: 54px;
        color: white;
        border-top: #eeeeee 1px solid;
        border-right: gray 1px solid;
    }
</style>
<body style="margin: 1px; cursor: default" oncontextmenu="return false" onselectstart='if(event.srcElement.tagName!="TEXTAREA"&amp;&amp;event.srcElement.tagName!="INPUT")return false'
    link="#3732cd" vlink="#3732cd" onload="bdy_load()">

    <?xml:namespace prefix = v />
    <v:line style="z-index: 2000; position: absolute; display: none" id="line1" from="0,0"
        to="0,0">

<!--钢笔可视化-->
<v:Stroke dashstyle = "shortDash"></v:Stroke></v:line>
    <v:oval style="z-index: 2000; position: absolute; display: none" id="oval1" coordsize="21600,21600">

<!--圆形可视化-->
<v:Stroke dashstyle = "shortDash"></v:Stroke></v:oval>
    <v:rect style="z-index: 2000; position: absolute; display: none" id="rect1" coordsize="21600,21600">

<!--长方形可视化-->
<v:Stroke dashstyle = "shortDash"></v:Stroke></v:rect>
    <v:roundrect style="z-index: 2000; position: absolute; display: none" id="roundrect1"  arcsize="4321f" coordsize="21600,21600">

<!--圆锯形可视化-->
<v:Stroke dashstyle = "shortDash"></v:Stroke></v:roundrect>
    <span style="z-index: 2000; position: absolute; display: none" id="gaoji1">
        <!--高级改可视化-->
        <textarea style="border-bottom: black 1px solid; border-left: black 1px solid; width: 400px;
            height: 150px; border-top: black 1px solid; border-right: black 1px solid" id="txt2"></textarea><br>
        <center>
            <input class="bon2" onclick="gaojiobj.outerHTML=txt2.value;gaojiobj=null;gaoji1.style.display='none'"
                value="修改" type="button">
    </span>
    <!--所有原代码-->
    <span style="z-index: 2000; position: absolute; display: none" id="yuandaima">
        <center>
    </span><span style="z-index: 2000; position: absolute; display: none" id="menu1">
        <!--弹出菜单-->
    </span>
    <!--实现保存-->
    <table style="border-bottom: gray; display: none" id="allform1" cellspacing="0" cellpadding="3"
        width="770" align="center">
        </tr>
        <td id="toptd1" onclick="yuandaima.x=event.x;yuandaima.y=event.y;txt3.value=div1.innerHTML.replace(/>/g,'>\n').replace(/ = /g,'=').replace(/\: /g,':').replace(/\; /g,';');yuandaima.style.display=''"
            width="70">
        </td>
        </tr>
    </table>
    <table width="100%" height="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td width="100%">
                <div style="width: 800px; height: 600px; color: black;"  id="div1">
                 </div>
            </td>
        </tr>
    </table>
    <%--<ie:download id="oload" style="behavior: url(#default#download)">--%>
</body>
</html>

<script language="jscript">
    var bi = 7    //定义当前使用的画笔工具，3为铅笔opener.SetRange(sel);
    var color1 = '#000000', color2 = '#000000', size1 = 0  //定义缺剩的画笔颜色及画笔填充颜色和笔边粗度
    var xx = 0, yy = 0, zz = 1000  //定义缺剩的X及Y坐标

    var isok = false  //区分画笔起点是否在DIV内，超出范围则无效
    var moveobj = null, ckleft = 0, cktop = 0, ckwid = 0, ckhei = 0, ckto = ""  //被移动物件、调整大小物件的引用
    var poly1 = null, oldvalue = "", oldx = 0, oldy = 0  //为了完成记忆点，创建一个可折式线段
    var gaojiobj = null  //为了完成“高级”功能，绑定被修改对象
    var thisobj = null   //为了完成各种基本编辑功能，如“置前”“复制”“删除”等
    var zz2 = 1000          //为完成“置后”功能，zz2为负数

    var s = true;
    function bdy_load() {
        document.body.style.background = "url(\"" + "<%=bgimage%>" + "\") no-repeat";
        //fw1.iniMap("size,800,600;")
    }


    function div1.onmousedown() {

        div1.setCapture(); color1 = "#000000";
        color2 = "#ffffff";
        isok = true;
        size1 = 1;
        xx = event.x;
        yy = event.y;
        zz += 1;
      
        
        line1.strokecolor = color1; line1.strokeweight = size1; oval1.strokeweight = size1; oval1.strokecolor = color1
        oval1.fillcolor = color2; rect1.strokeweight = size1; rect1.strokecolor = color1
        rect1.fillcolor = color2; roundrect1.strokeweight = size1; roundrect1.strokecolor = color1
        roundrect1.fillcolor = color2;
        if (event.button == 1) {
            bi = 7
            switch (bi) {
                case 1:  //选移
                    if (event.srcElement.parentElement.id == "div1") { moveobj = event.srcElement; ckleft = xx - parseInt(moveobj.style.left); cktop = yy - parseInt(moveobj.style.top) }
                    break;
                case 2:  //调大小
                    if (event.srcElement.parentElement.id == "div1") {
                        moveobj = event.srcElement;
                        ckleft = parseInt(moveobj.style.left); cktop = parseInt(moveobj.style.top); ckwid = moveobj.offsetWidth; ckhei = moveobj.offsetHeight
                    }
                    break;
                case 3:  //扔出
                    break;
                case 4:  //钢笔
                    line1.style.left = event.x; line1.style.top = event.y; line1.to = "0,0"; line1.style.display = ""
                    break;
                case 5:  //记忆点
                    if (poly1 == null) {
                        oldx = xx; oldy = yy
                        poly1 = div1.appendChild(document.createElement("<v:polyline points='0 0 0 0' style='position:absolute;z-index:" + zz + ";left:" + xx + ";top:" + yy + ";' strokecolor='" + color1 + "' strokeweight='" + size1 + "' fillcolor='" + color2 + "'/>"))
                    }
                    if (oldx - tempx < 1 && oldy - tempy < 1) oldvalue = poly1.points.value.replace(/,/g, ' ')
                    break;
                case 6:  //圆形
                    oval1.style.left = event.x; oval1.style.top = event.y; oval1.style.width = 0; oval1.style.height = 0; oval1.style.display = ""
                    break;
                case 7:  //长方形
                    rect1.style.left = event.x; rect1.style.top = event.y; rect1.style.width = 0; rect1.style.height = 0; rect1.style.display = ""
                    break;
                case 8:  //圆矩形
                    roundrect1.style.left = event.x; roundrect1.style.top = event.y; roundrect1.style.width = 0; roundrect1.style.height = 0; roundrect1.style.display = ""
                    break;
            }
        }
    }

    function div1.onmousemove() {
        tempx = event.x; tempy = event.y; temp1 = 0; temp2 = 0
        //zuobiao.value=tempx-allform1.offsetLeft-8+","+parseInt(tempy-toptd1.offsetHeight-7)
        if (bi == 5 && poly1 != null) {   //记忆点
            if (oldx - tempx < 0 && oldy - tempy < 0) poly1.points.value = oldvalue + " " + (tempx - oldx) + " " + (tempy - oldy)
        }
        if (event.button == 1) {
            switch (bi) {
                case 1:  //选移
                    if (moveobj != null) { moveobj.style.left = tempx - ckleft; moveobj.style.top = tempy - cktop }
                    break;
                case 2:  //调大小
                    if (moveobj != null) {
                        if (moveobj.tagName != "line") {
                            if (tempx > ckleft) { moveobj.style.width = tempx - ckleft } else { moveobj.style.left = tempx; moveobj.style.width = ckleft - tempx }
                            if (tempy > cktop) { moveobj.style.height = tempy - cktop } else { moveobj.style.top = tempy; moveobj.style.height = cktop - tempy }
                        } else { moveobj.to = parseInt(tempx - ckleft) + "," + parseInt(tempy - cktop); if (ckto == "") ckto = parseInt(tempx - ckleft) + "," + parseInt(tempy - cktop); }
                    }
                    break;
                case 4:  //钢笔
                    line1.to = (tempx - xx) + "," + (tempy - yy)
                    break;
                case 6:  //圆形
                    if (tempx - xx < 0) { oval1.style.left = event.x; oval1.style.width = (xx - tempx) } else { oval1.style.width = (tempx - xx) }
                    if (tempy - yy < 0) { oval1.style.top = event.y; oval1.style.height = (yy - tempy) } else { oval1.style.height = (tempy - yy) }
                    break;
                case 7:  //长方形
                    if (tempx - xx < 0) { rect1.style.left = event.x; rect1.style.width = (xx - tempx) } else { rect1.style.width = (tempx - xx) }
                    if (tempy - yy < 0) { rect1.style.top = event.y; rect1.style.height = (yy - tempy) } else { rect1.style.height = (tempy - yy) }
                    break;
                case 8:  //圆矩形
                    if (tempx - xx < 0) { roundrect1.style.left = event.x; roundrect1.style.width = (xx - tempx) } else { roundrect1.style.width = (tempx - xx) }
                    if (tempy - yy < 0) { roundrect1.style.top = event.y; roundrect1.style.height = (yy - tempy) } else { roundrect1.style.height = (tempy - yy) }
                    break;
            } 
        } 
    }
    function div1.onmouseup() {
        document.releaseCapture(); if (isok == false) { forerr(); return false }; isok = false; menu1.style.display = 'none'
        tempx = event.x; tempy = event.y; divwid = div1.offsetWidth; divhei = div1.offsetHeight
        if (tempx > allform1.offsetLeft + divwid + 5 || tempx < allform1.offsetLeft + 5) { forerr(); return }
        if (tempy > allform1.offsetTop + toptd1.offsetHeight + divhei + 5 || tempy < allform1.offsetTop + toptd1.offsetHeight + 5) { forerr(); return }
        if (event.button == 2 && bi == 5 && poly1 != null) {
            poly1.points.value = oldvalue; oldvalue = ""; poly1 = null;
        } else if (event.srcElement.parentElement.id == "div1" && event.button == 2) { menu1.style.left = tempx; menu1.style.top = tempy; menu1.style.display = ''; thisobj = event.srcElement }

        if (event.button == 1) {
            switch (bi) {
                case 1:  //选移
                    if (moveobj != null && parseInt(moveobj.style.left) < allform1.offsetLeft + 5) { forerr(); return }
                    if (moveobj != null && parseInt(moveobj.style.left) + moveobj.offsetWidth - 2 > allform1.offsetLeft + divwid + 5) { forerr(); return }
                    if (moveobj != null && parseInt(moveobj.style.top) < allform1.offsetTop + toptd1.offsetHeight + 5) { forerr(); return }
                    if (moveobj != null && parseInt(moveobj.style.top) + moveobj.offsetHeight - 2 > allform1.offsetTop + toptd1.offsetHeight + divhei + 3) { forerr(); return }
                    moveobj = null
                    break;
                case 2:  //调大小
                    moveobj = null; ckto = ""
                    break;
                case 3:  //仍出
                    if (event.srcElement.parentElement.id == "div1") event.srcElement.outerHTML = ""
                    break;
                case 4:  //钢笔
                    div1.appendChild(document.createElement("<v:line style='position:absolute;z-index:" + zz + ";left:" + xx + ";top:" + yy + ";' to='" + (event.x - xx) + "," + (event.y - yy) + "' strokecolor='" + color1 + "' strokeweight='" + size1 + "'/>"))
                    line1.style.display = "none"
                    break;
                case 6:  //圆形
                    div1.appendChild(document.createElement("<v:oval style='position:absolute;z-index:" + zz + ";left:" + oval1.style.left + ";top:" + oval1.style.top + ";width:" + oval1.style.width + ";height:" + oval1.style.height + ";' strokecolor='" + color1 + "' strokeweight='" + size1 + "' fillcolor='" + color2 + "'/>"))
                    oval1.style.display = "none"
                    break;
                case 7:  //长方形
                    //#region
                    //rect1.style.width + ";height:" + rect1.style.height

                    //alert("xx:" + xx + "--div1.style.posLeft:" + div1.style.posLeft + "-- rect1.style.left" + rect1.style.width);

                    var sp = new pt(parseInt((parseInt(div1.style.posLeft) + parseInt(xx)) / 40), parseInt((parseInt(div1.style.posTop) + parseInt(yy)) / 30));
                    var ep = new pt(parseInt((parseInt(div1.style.posLeft) + parseInt(xx) + parseInt(rect1.style.width)) / 40), parseInt((parseInt(div1.style.posTop) + parseInt(yy) + parseInt(rect1.style.height)) / 30));
                    //alert("sp_x:" + sp.x + "sp_y" + sp.y + "ep_x:" + ep.x + "ep_y:" + ep.y);

                    var str = "";
                    var index = 1;
                    //横向
                    for (var si = sp.x; si <= ep.x; si++) {
                        str += (index++) + ",ves," + si + "," + sp.y + ";";
                        str += (index++) + ",ves," + si + "," + ep.y + ";";
                    }
                    //纵向
                    for (var ei = sp.y; ei <= ep.y; ei++) {
                        str += (index++) + ",ves," + sp.x + "," + ei + ";";
                        str += (index++) + ",ves," + ep.x + "," + ei + ";";
                    }
                    str += "|" + parseInt(ep.x / 2 +sp.x) + "," + parseInt((ep.y-sp.y)  / 2+ sp.y);
                    opener.SetRange(str);
                    //parent.document.SetRange(str);
                   // alert(str);
                    //#endregion


                    return;

                    if (event.srcElement.parentElement.id == "div1") alert(event.srcElement.outerHTML);



                    div1.appendChild(document.createElement("<v:rect style='position:absolute;z-index:" + zz + ";left:" + rect1.style.left + ";top:" + rect1.style.top + ";width:" + rect1.style.width + ";height:" + rect1.style.height + ";' strokecolor='" + color1 + "' strokeweight='" + size1 + "' fillcolor='" + color2 + "'/>"))
                    rect1.style.display = "none"
                    break;
                case 8:  //圆矩形
                    div1.appendChild(document.createElement("<v:roundrect style='position:absolute;z-index:" + zz + ";left:" + roundrect1.style.left + ";top:" + roundrect1.style.top + ";width:" + roundrect1.style.width + ";height:" + roundrect1.style.height + ";' strokecolor='" + color1 + "' strokeweight='" + size1 + "' fillcolor='" + color2 + "'/>"))
                    roundrect1.style.display = "none"
                    break;
                case 11:  //渐变
                    if (event.srcElement.parentElement.id == "div1") {
                        if (!usejianbian.checked) { event.srcElement.fillcolor = tianchongbeijing.value } else {
                            temp1 = jianbianyangshi[0].checked ? 'gradient' : 'gradientradial'
                            temp2 = event.srcElement.innerHTML.replace(/<v\:fill .*<\/v:fill>/gi, '')
                            event.srcElement.innerHTML = temp2 + "<v:fill color='" + jianbianse2.value + "' color2='" + jianbianse1.value + "' type='" + temp1 + "'/>"
                        } 
                    }
                    break;
                case 12:  //立体
                    if (event.srcElement.parentElement.id == "div1") {
                        temp2 = event.srcElement.innerHTML.replace(/<v\:extrusion .*<\/v:extrusion>/gi, '')
                        event.srcElement.innerHTML = temp2 + "<v:Extrusion on='t' color='" + litiyanse.value + "' backdepth='" + houxiangshenzhan.options[houxiangshenzhan.selectedIndex].text + "' foredepth='" + qianxiangshenzhan.options[qianxiangshenzhan.selectedIndex].text + "' rotationangle='" + pianyishangbian.options[pianyishangbian.selectedIndex].text + "," + pianyizuobian.options[pianyizuobian.selectedIndex].text + "'/>"
                    }
                    break;
                case 13:  //边框
                    if (event.srcElement.parentElement.id == "div1") {
                        temp2 = event.srcElement.innerHTML.replace(/<v\:stroke .*<\/v:stroke>/gi, '')
                        event.srcElement.innerHTML = temp2 + "<v:Stroke dashstyle='" + biankuangyangshi.options[biankuangyangshi.selectedIndex].text + "' startarrow='" + qidianjiantou.options[qidianjiantou.selectedIndex].text + "' endarrow='" + zhongdianjiantou.options[zhongdianjiantou.selectedIndex].text + "'/>"
                        event.srcElement.strokecolor = biankuangyanse.value
                        biankuangcudu.options[biankuangcudu.selectedIndex].text == '0' ? event.srcElement.stroked = false : event.srcElement.strokeweight = biankuangcudu.options[biankuangcudu.selectedIndex].text
                    }
                    break;
            }
        }
    }

    function rndcolor(theobjis) {
        colortab.style.display = ""; colorid.innerHTML = ""; str1 = "<table cellspacing=0 cellpadding=0>";
        for (r = 0; r < 10; r++) {
            str1 += "<tr>"
            for (i = 0; i < 10; i++) {
                tempcolor1 = Math.round(Math.random() * 255).toString(16) + Math.round(Math.random() * 255).toString(16) + Math.round(Math.random() * 255).toString(16); while (tempcolor1.length < 6) { tempcolor1 += Math.round(Math.random() * 9) }
                str1 += "<td style='width:10;height:10;background-color:#" + tempcolor1 + ";' onclick=" + theobjis + ".value='#" + tempcolor1 + "';" + theobjis + ".style.color='#" + tempcolor1 + "';colortab.style.display='none'></td>"
            } str1 += "</tr>"
        }
        colorid.innerHTML = str1 + "</table>"
    }
    function document.onmouseup() {
        //alert("1:" + (roundrect1.style.width) + "---2:" + (roundrect1.style.height))
//            var sp = new pt(parseInt((div1.style.posLeft + xx) / 40), parseInt((div1.style.posTop + yy) / 30))
//            var ep = new pt(parseInt((div1.style.posLeft + xx + div1.style.posWidth) / 40), parseInt((div1.style.posTop + yy + div1.style.posHeight) / 30))
//            alert("sp_x:" + sp.x + "sp_y" + sp.y + "ep_x:" + ep.x + "ep_y:" + ep.y);

//                    var str = "";
//                    var index = 1;
//                    //横向
//                    for (var si = sp.x; si <= ep.x; si++) {
//                        str += (index++) + ",ves," + si + "," + sp.y + ";";
//                        str += (index++) + ",ves," + si + "," + ep.y + ";";
//                    }
//                    //纵向
//                    for (var ei = sp.y; ei <= ep.y; ei++) {
//                        str += (index++) + ",ves," + sp.x + "," + ei + ";";
//                       str += (index++) + ",ves," + ep.x + "," + ei + ";";
//                   }
//                  str += "|" + parseInt((ep.x - sp.x) / 2) + "," + parseInt((ep.y - sp.y) / 2);
//                  opener.SetRange(str);
    }
    function forerr() {
        if (moveobj != null && bi == 1) { moveobj.style.left = xx - ckleft; moveobj.style.top = yy - cktop; ckleft = 0; cktop = 0; moveobj = null }
        if (moveobj != null && bi == 2) {
            if (moveobj.tagName != "line") { moveobj.style.left = ckleft; moveobj.style.top = cktop; moveobj.style.width = ckwid; moveobj.style.height = ckhei; } else { moveobj.to = ckto; }
            ckleft = 0; cktop = 0; ckwid = 0; ckhei = 0; ckto = ""; moveobj = null
        }
        line1.style.display = 'none'; oval1.style.display = 'none'; rect1.style.display = 'none'; roundrect1.style.display = 'none'
    }
</script>