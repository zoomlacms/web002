<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_Usertalk_TalkIndex, App_Web_s5c5gzpd" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head id="Head2" runat="server">
<title>网页聊天</title>
<link href="TalkCss.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/Microblog/bidding.css" />
<script type="text/javascript" src="../../js/jquery.js" language="javascript"></script>
<script src="../../js/popup_js.js" type="text/javascript" language="javascript"></script>
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
    var isCtrl = false;
    var url = window.location.href;
    function g_del(id) {   //删除
        g_dels(id, url);
    }
    function g_Dile(userid, forid, id) {  //添加
        g_Diles(userid, forid, id, url);
    }
    function Og_Dile(userid, forid, id, conid) {  //添加
        Og_Diles(userid, forid, id, url, conid);
       
    } 
    var hideDiv = function (idName) {
        $("#" + idName).fadeOut("fast");
    };
    //载入中的GIF动画
    var loadingUrl = "../images/ajax-loader.gif";
    function addcontent(content) {
        document.getElementById("txt_Content").innerHTML += content;
    }
    function addico(content) {
        document.getElementById("txt_Content").innerHTML += content;
        var div = document.getElementById("close1");
        div.click();
    }
    function Postto() {
        var jqueryObj = $("#txt_Content");
        document.getElementById("txtimages").value = document.getElementById("txtContent").innerHTML;
        //获取节点的值
        var cont = jqueryObj.val();
        if (cont != "") {
            $.get("DataCommon.aspx?menu=login", null, callback);
        }
        else {
            alert("请输入内容！");
        }
    }
    $(document).ready(function () {
        //示例1，默认弹出层
        new PopupLayer({ trigger: "#ele1", popupBlk: "#blk1", closeBtn: "#close1",
            offsets: {
                x: 0,
                y: 10
            }
        });
    });
    function addvideo() {
        document.getElementById("txtvidio").value = document.getElementById("video_txt").value;
        var div = document.getElementById("close3");
        div.click();
    }
    function addmusic() {
        document.getElementById("txtmusic").value = document.getElementById("musictxt").value;
        var div = document.getElementById("close4");
        div.click();
    }

//    $(document).ready( //窗体居中
//    function () {
//        var allMain = document.getElementById("allMain");
//        var mainw = 960;
//        var mainh = 700;
//      
//        var sh = window.screen.availHeight;
//        var sw = window.screen.availWidth;
//        var wh = document.body.scrollHeight;
//        var ww = document.body.scrollWidth;
//        var top = (sh - wh) / 2;
//        var left = (sw - ww) / 2; 
//        window.moveTo(left, top);
//        var maint = ((wh - mainh) / 2 + 3) >= 0 ? ((wh - mainh) / 2 + 3) : 0;
//        var mainL = (ww - mainw) / 2 >= 0 ? (ww - mainw) / 2 : 0;
//        allMain.style.top = maint + "px";
//        allMain.style.left = mainL + "px";
//        //  alert("screen_x_y" + sw + ":" + sh + "\nbody_x_y" + ww + ":" + wh + "\ntop_left:" + (ww - mainw) / 2 + ":" + (wh - mainh) / 2);
//
//    }
//    )

    function thisDisplayNoneFrist(a) {

        var thisDiv = document.getElementById(a);
        var widths = document.getElementById("txt_Content");
        var widthK = document.getElementById("MyFriendsMessageBoxs");
        if (thisDiv.style.display == "none") {
            widths.style.width = (parseInt(widths.style.width) - 180) + "px";
            widthK.style.width = widths.style.width;
            thisDiv.style.display = "block";
        }
        else {
            thisDiv.style.display = "none";
            widths.style.width = (parseInt(widths.style.width) + 180) + "px";
            widthK.style.width = widths.style.width;
        }
    }
    function preview1(obj) {
        alert('ok');
        if (!obj || !obj.value) return;
        if (obj.value.toLowerCase().indexOf(".jpg") < 0 && obj.valuetoLowerCase().indexOf(".jpeg") < 0 && obj.valuetoLowerCase().indexOf(".gif") < 0) {
            alert("请选择图片文件！");
        } else {

        }
    }
    function thisYeMian(a) {
        var MyFriend = document.getElementById("MyFriendDiv");
        var MyGrup = document.getElementById("MyGrupDiv");
        var MyPeople = document.getElementById("MyPeopleDiv");

        MyFriend.style.display = "none";
        MyGrup.style.display = "none";
        MyPeople.style.display = "none";

        if (a == 1) {
            document.getElementById("MyFriendDiv").style.display = "block";
            document.getElementById("lipengyou").style.background = "url(image/haoyou2.jpg) no-repeat";
            document.getElementById("liqun").style.background = "url(image/qun1.jpg) no-repeat";
            document.getElementById("lilian").style.background = "url(image/lian1.jpg) no-repeat";
        } else if (a == 2) {
            document.getElementById("MyGrupDiv").style.display = "block";
            document.getElementById("lipengyou").style.background = "url(image/haoyou1.jpg) no-repeat";
            document.getElementById("liqun").style.background = "url(image/qun2.jpg) no-repeat";
            document.getElementById("lilian").style.background = "url(image/lian1.jpg) no-repeat";
        } else if (a == 3) {
            document.getElementById("MyPeopleDiv").style.display = "block";
            document.getElementById("lipengyou").style.background = "url(image/haoyou1.jpg) no-repeat";
            document.getElementById("liqun").style.background = "url(image/qun1.jpg) no-repeat";
            document.getElementById("lilian").style.background = "url(image/lian2.jpg) no-repeat";
        }
    }

    function fontStyle(a, b, c) {
        var thisMessage = document.getElementById("<%=txt_Content.ClientID %>");
        thisMessage.focus();
        document.execCommand(a, b, c);
    }

    function colorTablesFunction(a, b) {
        var tables = document.getElementById(b);
        var buttons = a;
        var X = 0;
        var Y = 0;
        while (a.offsetParent) {
            X = parseInt(a.offsetLeft) + X;
            Y = parseInt(a.offsetTop) + Y;
            a = a.offsetParent;
        }

        tables.style.left = (X + 50) + "px";
        tables.style.top = Y + "px";

    }

    function thisColorthis(a) {
        var colors = a.style.backgroundColor;
        var thisMessage = document.getElementById("<%=txt_Content.ClientID %>");
        thisMessage.focus();
        document.execCommand('forecolor', false, a.style.backgroundColor);
        document.getElementById("COLORTABLE").style.display = "none";
    }

    function thisColorTable(b, a, c) {
        var tables = document.getElementById(a);
        if (c == 1) {
            document.getElementById("updateOnloads").style.display = "none";
        } else if (c == 2) {
            document.getElementById("fontStyles").style.display = "none";
        }

        if (tables.style.display == "none") {
            $('#MyFriendsMessageBoxs').css('height', '390px');
            document.getElementById('MyFriendsMessageBoxs').style.height = "390px";
            //document.getElementById('MyFriendsMessageBoxs').scrollTop = document.getElementById('MyFriendsMessageBoxs').scrollHeight;
        } else {
            //document.getElementById('MyFriendsMessageBoxs').scrollTop = document.getElementById('MyFriendsMessageBoxs').scrollHeight;
            $('#MyFriendsMessageBoxs').css('height', '420px');
        }
        if (tables.style.display == "none") {
            tables.style.display = "block";
        } else {
            tables.style.display = "none";
        }
        colorTablesFunction(b, a);
        //tables.offsetLeft = (tables.offsetLeft - 20) + "px";
    }

    function onclikePostDiv(a) {

        var menu = document.getElementById("groupMenu");
        if (menu.style.display == "none") {
            menu.style.display = "block";
            document.getElementById("Select").style.display = "none";
        } else {
            menu.style.display = "none";
            return false;
        }
        var heightY = parseInt(document.getElementById("groupMenu").style.height);
        var widthX = parseInt(a.style.width);
        var BigDiv = a;
        var X = 0;
        var Y = 0;

        while (BigDiv.offsetParent) {
            X = X + (BigDiv.offsetLeft);
            Y = Y + (BigDiv.offsetTop);

            BigDiv = BigDiv.offsetParent;
        }
        menu.style.top = (Y - heightY) + "px";
        menu.style.left = X + "px";

    }

    function onclikePostDiv1(a) {

        var menu = document.getElementById("Select");
        if (menu.style.display == "none") {
            menu.style.display = "block";
            document.getElementById("groupMenu").style.display = "none";
        } else {
            menu.style.display = "none";
            return false;
        }
        var heightY = parseInt(document.getElementById("Select").style.height);
        var widthX = parseInt(a.style.width);
        var BigDiv = a;
        var X = 0;
        var Y = 0;

        while (BigDiv.offsetParent) {
            X = X + (BigDiv.offsetLeft);
            Y = Y + (BigDiv.offsetTop);

            BigDiv = BigDiv.offsetParent;
        }
        menu.style.top = (Y - heightY) + "px";
        menu.style.left = X + "px";

    }

    function sendMsg() {
        var hfSendContent = document.getElementById('hfSendContent');
        var txt_Content = document.getElementById('txt_Content');
        var MyFriendsMessageBoxs = document.getElementById('MyFriendsMessageBoxs');
        var hdIsScroll = document.getElementById('hdIsScroll');
        hfSendContent.value = txt_Content.innerHTML;
        txt_Content.innerHTML = "";
        if (navigator.userAgent.indexOf('Firefox') >= 0) {
            txt_Content.innerHTML = "<br/>";
        } else {

        }
    }
    var pos;
    function getPos() {
        pos = document.selection.createRange();

        if (event.ctrlKey && event.keyCode == 13) {
            //alert("提交");
            $("#Button1").click();
        } else {
            if (isCtrl && event.keyCode == 13) {
                $("#Button1").click();
            }
        }
    }

    function fn_insertPos(src) {

        //        if (pos != null) {
        //            //pos.text = "<img src='" + srcurl + "' onerror=\"this.src='http://www.baidu.com/img/baidu_logo.gif';\"></img>";

        //            //pos.pasteHTML("<font color='red'>文字内容</font>");
        //            pos.pasteHTML("<img src='" + srcurl + "' ></img>");

        //            //释放位置
        //            pos = null;
        //        }
        //        else {
        //            //alert("没有正确选择位置");
        //            txt_Content.innerHTML += "<img src='" + srcurl + "' ></img>";
        //        }
        txt_Content.innerHTML += "<img src='" + src + "' ></img>";
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
        req.open("GET", url, false); //与服务端建立连接(请求方式post或get，地址,true表示异步)
        req.onreadystatechange = callback; //指定回调函数
        req.send(null); //
    }
    //插入图片
    function uploadclick() {
       window.open("/User/Usertalk/ImgUpdateLoad.aspx", "", "width=780,height=490,resizable=1,scrollbars=yes");
    }

    function setSpan1() {
        document.all("span1").innerHTML = str;
    }

    //获取cookie的值
    function getCookieValue(name) {
        var val = "";
        var cookies = unescape(document.cookie).split(";");
        for (var i = 0; i < cookies.length; i++) {
            var s = cookies[i].split("=");
            if (s[0] == name) {
                val = s[1];
                break;
            }
        }
        return val;
    }
    function sendMsged() {
        var MyFriendsMessageBoxs = document.getElementById('MyFriendsMessageBoxs');
        MyFriendsMessageBoxs.scrollTop = MyFriendsMessageBoxs.scrollHeight;
        var txt_Content = document.getElementById('txt_Content');
        txt_Content.focus();
        //alert(MyFriendsMessageBox.innerHTML);
    }
    function msgscroll() {
        var hdIsScroll = document.getElementById('hdIsScroll');
        hdIsScroll.value = "true";
    }

    function getFunction(roomid) {
        var but = document.getElementById("thisHomeValue");
        var hfRoomId = document.getElementById("hfRoomId");
        hfRoomId.value = roomid;
        but.value = roomid;
        but.click();
    }
    function SeachFriends() {
        var txtSeach = document.getElementById("txtSeach");
        if (txtSeach.value != "" && txtSeach.value.length > 0 && txtSeach.value != "支持模糊查询") {
            window.open("/User/Usertalk/SelectFrient.aspx?uname=" + txtSeach.value, "", "width=600,height=350,resizable=1,scrollbars=yes");
        } else {
            return false;
        }
    }
    function txtEnter() {
        if (event.keyCode == 13) {
            SeachFriends();
        }

    }
    function txtblur() {
        var txtSeach = document.getElementById("txtSeach");
        if (txtSeach.value == "" && txtSeach.value.length == 0) {
            txtSeach.value = "请输入用户昵称";
            txtSeach.style.color = "#ccc";
        } else {
            txtSeach.style.color = "#000";
        }
    }
    function txtselect() {
        var txtSeach = document.getElementById("txtSeach");
        if (txtSeach.value == "请输入用户昵称") {
            txtSeach.value = "";
        }
        txtSeach.style.color = "#000";

    }
    function showSzf() {
        isCtrl = false;
        var SZF = document.getElementById("showdivSZF");
        SZF.style.display = "block";
        return false;
    }

    function szfs(num) {
        var SZF = document.getElementById("showdivSZF");
        var szEnter = document.getElementById("szEnter");
        var szCEnter = document.getElementById("szCEnter");
        if (num == 1) {
            isCtrl = true;
            szEnter.innerHTML = "<font class='szsfont' >√</font>按Enter 键发消息";
            szCEnter.innerHTML = "<font class='szsfont' >&nbsp;</font>按Ctrl+Enter 键发消息";
        } else if (num == 2) {
            isCtrl = false;
            szEnter.innerHTML = "<font class='szsfont' >&nbsp;</font>按Enter 键发消息";
            szCEnter.innerHTML = "<font class='szsfont'>√</font>按Ctrl+Enter 键发消息";
        }
        SZF.style.display = "none";
    }
</script>
<script type="text/javascript">
    //function window.onbeforeunload() {
    //    if (confirm("你确定要结束聊天,并退出吗？")) {
    //        window.closed = true;
    //         return ;
    //     } else {
    //     window.closed = false;
    //     return ;
    //     }
    //    // return ("你确定要结束聊天,并退出吗？");
    // }

    function showSrc(imgsrc) {
        var imgurl = imgsrc.toString();
        var indexs=imgurl.indexOf("UploadFiles");
        if(indexs>-1)
        {
            imgurl = imgurl.substr(indexs -1);
           
        }
       
        var content = document.getElementById("txt_Content");
       // alert(imgurl);
        content.innerHTML += "<br /><img src='" + imgurl + "' /><br />";
    }
</script>
</head>
<body class="bodyp" >
    <form id="form1" runat="server">
    <%--<div id ="allMain" style="position: absolute; width: 1000px; height: 730px; z-index: -3; left: 0px; top: 3px; padding: 0px; margin: 0px;">--%>    
    <div style=" width:1000px; margin:auto; height:730px; z-index: -3; z-index: -3; left: 0px; top: 3px; padding: 0px; margin: 0px;">
    <%--<div class="tran" style="z-index: -3;  position: absolute; top: 0px; left: 0px;"></div>--%>
    <asp:Button runat="server" ID="thisHomeValue" Style="display: none;" Text="" OnClick="thisHomeValue_Click" />
    <asp:HiddenField ID="hfKey" runat="server" />  
    <%--<div style="width: 1000px; z-index: -3; overflow: hidden; position: absolute; margin-left: 0px; margin-right: 0px; top: 0px; left: 0px; background-repeat: no-repeat;"> --%>
    <div style="width:1000px; height:730px; z-index: -3; top: 0px; left: 0px; background-repeat: no-repeat; margin:auto;background-repeat: no-repeat;">
        <asp:ScriptManager ID="ScriptManager2" runat="server" AllowCustomErrorsRedirect="False">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="upTitle" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <div class="main" style="position: relative; font-size: 14px; font-weight: bold; color: #FFFFFF; height: 35px;">
                 <%-- <div class="tranDiv" style="width: 992px;">   
                    </div>--%>
                    <div style="vertical-align: middle; line-height: 40px; padding-left: 8px; width:400px; float:left;">
                            <asp:Label ID="ThisFriendLB" runat="server" Text=""></asp:Label>                           
                    </div>
                    <div style="text-align: right; line-height: 40px; padding-left:10px;font-size: 12px;">
                         &nbsp;[&nbsp; <a href="<%=ResolveUrl("~/User/logout.aspx") %>" style="color:White;">
                             <img src="image/logout.png" style="width:18px;height:18px;" title="注 销" /></a> |
                        <a href="javascript:window.close();" style="color: White">
                            <img src="image/end.png" style="width:18px;height:18px;" title="关 闭" /></a> ]
                        <%-- | <asp:Button  ID="btnend" runat="server" Text=" 关 闭 " style="cursor: hand" OnClientClick="sendMsg();" OnClick="btnend_Click" />--%>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <input id="hdIsScroll" value="false" type="hidden" />
        <table class="ContentTable" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td id="tdLeft" valign="top">
                    <div class="commercialDiv" style="width: 180px; position: relative;" id="commercialDiv">
                        <div style="background-color: #eff8ff">
                            <table border="1" cellpadding="0" cellspacing="0" style="line-height: 20px; vertical-align: bottom; text-align: center;">
                                <tr>
                                    <td rowspan="2" style="width: 16%; text-align: center">
                                        <asp:Image ID="imgUserPic" runat="server" Width="50" Height="50" ImageAlign="Middle" />
                                    </td>
                                    <td width="67%" valign="bottom">
                                        <span style="display: block; color: Black; text-align: left; width: 100%;">
                                            <asp:Label ID="lblUserName" runat="server" Text="" /></span> <span style="display: block; text-align: left; width: 100%; color: Black; font-size: small;">会员级别：<asp:Image ID="Grouppicture" ImageAlign="Middle" runat="server" Width="14" Height="14" /></span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="leftDivContent" class=" MyFriendListAdd" style="width: 165px; height: 600px; position: absolute; left: 0px; top: 55px;">
                            <asp:UpdatePanel ID="upRooms" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:TreeView ID="TreeView2" CssClass="TreeViewimage" runat="server" Style="font-size: 15px;" NodeIndent="5" OnLoad="TreeView2_Load" OnSelectedNodeChanged="TreeView2_SelectedNodeChanged" ShowExpandCollapse="False" AutoGenerateDataBindings="False">
                                        <NodeStyle Font-Size="12pt" ForeColor="Black" ChildNodesPadding="0px" NodeSpacing="0pt" VerticalPadding="0px" />
                                        <ParentNodeStyle ChildNodesPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                        <SelectedNodeStyle ChildNodesPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                    </asp:TreeView>
                                    <asp:HiddenField ID="hfRoomId" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="tranDiv" style="width: 172px; height: 657px;">
                        </div>
                        <div class="leftdiv">
                        </div>
                    </div>
                </td>
                <td>
                    <span style="width: 15px; display: block;">&nbsp; </span>
                </td>
                <td align="left" valign="top" style="width: 605px; height: 657px;">
                    <div style="width: 100%; position: relative; height: 657px;" class="SayDiv">
                        <div class="tranDivCenter" style="left: 0px; margin-left: -4px;">
                        </div>
                        <table style="border: 0px;" cellpadding="0px" cellspacing="0px">
                            <tr>
                                <td style="">
                                    <div onscroll="msgscroll();" class="tcontent" id="MyFriendsMessageBoxs">
                                        <asp:UpdatePanel ID="upShowMsg" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:HiddenField ID="hfCheckNode" runat="server" />
                                                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick" Enabled="False">
                                                </asp:Timer>
                                                <asp:HiddenField ID="hfMsgId" runat="server" />
                                                <div style="padding: 5px;" id="MyFriendsMessageBox" runat="server">
                                                </div>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Button1" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </div>
                                    <div id="fontStyles" style="width: 100%; color: Black; display: none; font-size: 13px; margin-bottom: 2px; height: 28px; line-height: 30px; text-align: left; opacity: 0.5; filter: alpha(opacity=50); background-color: #000000; z-index: -1;">
                                        书法:
                                        <select onChange="fontStyle('fontname',false,this.value)">
                                            <option value="Arial">Arial</option>
                                            <option value="黑体">黑体</option>
                                            <option value="宋体">宋体</option>
                                            <option value="楷体 GB2312">楷体</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Verdana">Verdana</option>
                                        </select>
                                        字体大小：
                                        <select onChange="fontStyle('FontSize',false,this.value)">
                                            <option value="3">普通</option>
                                            <option value="1">1号</option>
                                            <option value="2">2号</option>
                                            <option value="3">3号</option>
                                            <option value="4">4号</option>
                                            <option value="5">5号</option>
                                            <option value="6">6号</option>
                                            <option value="7">7号</option>
                                            <option value="8">8号</option>
                                            <option value="9">9号</option>
                                            <option value="10">10号</option>
                                            <option value="11">11号</option>
                                        </select>
                                        <input type="button" onClick="fontStyle('bold',false,null)" value="加粗" />
                                        <input type="button" onClick="fontStyle('Italic',false,true)" value="斜体" />
                                        <input type="button" value="颜色" id="COLORDVI" onClick="document.getElementById('COLORTABLE').style.display='block'; colorTablesFunction(this,'COLORTABLE')" />
                                        <table class="ColorTable" id="COLORTABLE" cellpadding="0" cellspacing="0" border="0">
                                            <tr>
                                                <td onClick="thisColorthis(this)" style="background-color: red">&nbsp;
                                                    
                                                </td>
                                                <td onClick="thisColorthis(this)" style="background-color: #ffffff">&nbsp;
                                                    
                                                </td>
                                                <td onClick="thisColorthis(this)" style="background-color: #000000">&nbsp;
                                                    
                                                </td>
                                                <td onClick="thisColorthis(this)" style="background-color: Orange">&nbsp;
                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td onClick="thisColorthis(this)" style="background-color: purple">&nbsp;
                                                    
                                                </td>
                                                <td onClick="thisColorthis(this)" style="background-color: blue">&nbsp;
                                                    
                                                </td>
                                                <td onClick="thisColorthis(this)" style="background-color: green">&nbsp;
                                                    
                                                </td>
                                                <td onClick="thisColorthis(this)" style="background-color: yellow">&nbsp;
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="position: relative;">
                                        <div class="tran">
                                        </div>
                                        <table class="zhongjian">
                                            <tr>
                                                <td class="style1">
                                                    <asp:UpdatePanel ID="upTools" UpdateMode="Conditional" runat="server">
                                                        <ContentTemplate>
                                                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="80px" AutoPostBack="True">
                                                                <asp:ListItem Value="0">大家</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </td>
                                                <td class="style2">
                                                    <span id="ele1">
                                                        <a href="javascript:void(0)"><img style="border: NONE" src="../../App_Themes/Microblog/images/14.jpg" alt="表情" title="表情"/>
                                                    </a></span>
                                                </td>
                                                <td align="left">
                                                    <a href="javascript:void(0);"><img src="image/A.jpg" style="border: 0px; margin-top: 8px;" width="19px" height="19px" alt="字体" onClick="thisColorTable('','fontStyles',1)" title="字体" /></a>
                                                    <a href="javascript:void(0);"><img src="image/wenjian.jpg" style="border: 0px; margin-top: 7px;" width="19px" height="19px" alt="插入图片" onClick="uploadclick()" title="插入图片"/>
                                                                <%-- <asp:Button ID="Button3" CssClass="btnImgWj" runat="server" Text="  " OnClientClick="uploadclick()" />--%>
                                                            </a>
                                                    <%--  <input type="text" name="uploadfileurl" id="uploadfileurl" value="1"  style="display:none;"/>--%>
                                                </td>
                                                <td>
                                                    <div style="display: none;" id="updateOnloads">
                                                        <iframe id="ifUpLoad" style="background-color: transparent; border: 0px solid black; overflow: hidden;" frameborder="0px" allowtransparency="true" src="ImgUpdateLoad.aspx" height="26px" width="350px"></iframe>
                                                        <asp:FileUpload ID="FileUpload1" runat="server"/>
                                                    </div>
                                                </td>
                                                <td align="right">
                                                    <span><a href="#">
                                                        <asp:ImageButton runat="server" Height="19px" ImageUrl="image/jilu.jpg" ID="ThisMessageBN" Style="border: 0px; margin-top: 7px;" OnClick="ThisMessageBN_Click" title="消息记录"/></a>
                                                    </span>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <input type="hidden" name="hfSendContent" id="hfSendContent" />
                                    <div runat="server" class="tucontent" id="txt_Content" onclick="getPos();" onkeyup="getPos();" contenteditable="true">
                                    </div>
                                    <div style="position: relative;">
                                        <div class="tran" style="bottom: 0px;">
                                        </div>
                                        <div class="fasong">
                                            <asp:Button CssClass="button" ID="Button1" runat="server" Text=" 发  送 " OnClientClick="sendMsg();" OnClick="SenBN_Click" />&nbsp; &nbsp;
                                            <div onClick="showSzf()" class="szFimg">
                                                <img src="image/ico_drp_btn.gif" /></div>&nbsp; &nbsp;
                                            <div id="showdivSZF" class="szFdiv" style="display: none;">
                                                <span id="szEnter" class="szFspan" onClick="szfs(1)"><font class="szsfont">&nbsp;</font>按Enter键发消息</span>
                                                <span id="szCEnter" class="szFspan" onClick="szfs(2)">
                                                <font class="szsfont">√</font>按Ctrl+Enter键发消息 </span>
                                            </div>
                                        </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        </td>
        <td>
            <span style="width: 15px; display: block;">&nbsp; </span>
        </td>
        <td id="FriendListAll" valign="top" align="right" style="position: relative;">
           <div id="divRight" style="position: relative; ">
                <div class="tranDiv" style="width:175px; height:657px;">
                </div>
                <div class="leftdivDisplay" style="left:0px;" >
                </div>
                <div id="divRightContent" style="padding: 4px 0px 0px 4px; z-index: 4;">
                   <table cellpadding="0" cellspacing="0" style="height: 100%; background-color: transparent;">
                       <tr>
                          <td>
                              <div class="MyFriend" id="divFriends" style="background-color:#f1f1f1;">
                                 <table cellpadding="0" style="height: 657px;" cellspacing="0" border="0">
                                    <tr>
                                            <td  style=" height:40px; text-align:center;" >
                                            <div class="divSeach" >
                                                <span><input type="text" class="txtSeach" id="txtSeach" maxlength="10" onFocus="txtselect()" onBlur="txtblur()" onKeyUp="txtEnter() " value="支持模糊查询" runat="server" /></span> 
                                                    <span id="btnSeach" onClick="SeachFriends()" alt="搜索" class="btnimg" runat="server"></span>
                                            </div> 
                                            </td>
                                        </tr>
                                    <tr>
                                        <td style="text-align: center; height: 20px;">
                                            <ol style="list-style-type: none;">
                                                <li id="lipengyou" style="float: left; width: 40px; height: 20px; line-height: 20px;background:url(image/haoyou2.jpg) no-repeat;cursor: hand" onClick="thisYeMian(1)" title="好友">
                                                <li id="liqun" style="float: left; width: 40px; height: 20px; line-height: 20px;background:url(image/qun1.jpg) no-repeat;cursor: hand" onClick="thisYeMian(2)" title="聊天群">
                                                <li id="lilian" style="float: left; width: 40px; height: 20px; line-height: 20px;background:url(image/lian1.jpg) no-repeat;cursor: hand" onClick="thisYeMian(3)" title="最近联系人">
                                            </ol>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 565px; text-align: left; padding: 0px;">
                                            <div class=" MyFriendListAdd">
                                                <div id="MyFriendDiv" style="text-align: left; width: 100px; height: 100%; border: 0px;
                                                    padding-left: 4px;" runat="server">
                                                    <asp:UpdatePanel ID="upNodeTree" runat="server" UpdateMode="Conditional">
                                                       <ContentTemplate>
                                                            <asp:TreeView ID="TreeView1" Style="font-size: 15px;" runat="server" ShowExpandCollapse="False" AutoGenerateDataBindings="False" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" OnLoad="TreeView1_Load" NodeIndent="5">
                                                                <NodeStyle Font-Size="12pt" ForeColor="Black" ChildNodesPadding="0px" NodeSpacing="0pt" VerticalPadding="0px" />
                                                                <ParentNodeStyle ChildNodesPadding="0px" NodeSpacing="0px" VerticalPadding="0px"/>
                                                                <SelectedNodeStyle ChildNodesPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                                            </asp:TreeView>
                                                        </ContentTemplate>
                                                        <Triggers>
                                                            <%--  <asp:AsyncPostBackTrigger  ControlID="TreeView1"  EventName="OnSelectedNodeChanged"  />--%>
                                                        </Triggers>
                                                    </asp:UpdatePanel>
                                                </div>
                                                <div id="MyGrupDiv" style="text-align: left; width: 100%; height: 100%; border: 0px;
                                                    display: none;">
                                                    <asp:UpdatePanel ID="UPyhQun" runat="server" UpdateMode="Conditional">
                                                        <ContentTemplate>
                                                            <asp:TreeView ID="TreeViewUPyhQun" Style="font-size: 15px;" runat="server" ShowExpandCollapse="False"
                                                                AutoGenerateDataBindings="False" OnLoad="TreeViewUPyhQun_Load" OnSelectedNodeChanged="TreeViewUPyhQun_SelectedNodeChanged">
                                                                <NodeStyle Font-Size="12pt" ForeColor="Black" ChildNodesPadding="0px" NodeSpacing="0pt"
                                                                    VerticalPadding="0px" />
                                                                <ParentNodeStyle ChildNodesPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                                                <SelectedNodeStyle ChildNodesPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                                            </asp:TreeView>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>
                                                <div id="MyPeopleDiv" style="text-align: left; width: 100%; height: 100%; border: 0px;
                                                    display: none;" runat="server">
                                                    <asp:UpdatePanel ID="UpdatePanelZJ" runat="server" UpdateMode="Conditional">
                                                        <ContentTemplate>
                                                            <asp:TreeView ID="TreeViewZJ" Style="font-size: 15px;" runat="server" ShowExpandCollapse="False" AutoGenerateDataBindings="False" OnLoad="TreeViewZJ_Load" OnSelectedNodeChanged="TreeViewZJ_SelectedNodeChanged">
                                                                <NodeStyle Font-Size="12pt" ForeColor="Black" ChildNodesPadding="0px" NodeSpacing="0pt" VerticalPadding="0px" />
                                                                <ParentNodeStyle ChildNodesPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                                                <SelectedNodeStyle ChildNodesPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                                                            </asp:TreeView>
                                                        </ContentTemplate>
                                                        <Triggers>
                                                            <%--  <asp:AsyncPostBackTrigger  ControlID="TreeViewZJ"  EventName="OnSelectedNodeChanged"  />--%>
                                                        </Triggers>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px; text-align: center;">
                                            <div style="height: 30px; line-height: 30px; width: 80px; float: left; text-align: right" onClick="onclikePostDiv1(this)">
                                                <asp:ImageButton runat="server" ImageUrl="image/chazhao.jpg" Width="20" Height="16" ID="SelectUserIMG" />
                                                <%-- <a style="color: #000; text-decoration: none;" href="javascript:void(0)" onclick="javascript:window.open('/User/Usertalk/SelectFrient.aspx','','width=600,height=350,resizable=1,scrollbars=yes');">查找</a>--%>
                                                <font style="cursor: pointer;">查找</font>
                                            </div>
                                            <div style="height: 30px; line-height: 30px; width: 80px; float: right; text-align: left;"  onclick="onclikePostDiv(this)">
                                                <asp:ImageButton runat="server" ImageUrl="image/qun.jpg" Width="20" Height="16" ID="guanliIMG" />
                                                <font style="cursor: pointer;">管理</font>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;
                                            
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </td>
    </tr> </table>
    <div class="downClass">
        <div class="tran" style="height: 4px; top: 0px; background-color: #FFFFFF">
            &nbsp;
        </div>
        <div class="tran" style="height: 11px; top: 4px; background-color: #FFFFFF">
            &nbsp;
        </div>
    </div>
    <div id="blk1" class="blk" style="display: none;">
        <div class="main">
            <h2>
                常用表情</h2>
            <a href="javascript:void(0)" id="close1" class="closeBtn" title="关闭">×</a>
            <ul>
                <span id="biaoqing" name="biaoqing"></span>
            </ul>
        </div>
        <div class="foot">
            <div class="foot-right">
            </div>
        </div>
    </div>
    <script language="javascript" type="text/javascript">
        var ico = "[呵呵],smile.gif|[嘻嘻],tooth.gif|[哈哈],laugh.gif|[爱你],love.gif|[泪],sad.gif|[晕],dizzy.gif|[困],sleepy.gif|[汗],sweat.gif|[怒],angry.gif|[哼],hate.gif|[抓狂],crazy.gif|[蛋糕],cake.gif|[咖啡],cafe_org.gif|[伤心],unheart.gif|[下雨],rain.gif|[猪头],pig.gif|[月亮],moon.gif|[冰棍],ice.gif|[帽子],hat_org.gif|[干杯],cheer.gif|[礼花],bingo_org.gif|[微风],wind_org.gif|[雨伞],umb_org.gif|[电视机],tv_org.gif|[星],star_org.gif|[话筒],m_org.gif|[音乐],music_org.gif|[电影],movie_org.gif|[唱歌],ktv_org.gif|[房子],house_org.gif|[足球],football.gif|[阴天],dark_org.gif";
        var EmoticonsArr = ico.split('|');
        var biaoqcontent = "";
        for (var i = 0; i < EmoticonsArr.length; i++) {
            var emotarr = EmoticonsArr[i].toString().split(',')
            biaoqcontent += "<li class='box'><a href=\"javascript:void(0)\" onclick=\"fn_insertPos($(this).children('img')[0].src);return false;addico('" + emotarr[0] + "')\"><img src='/App_Themes/Microblog/images/" + emotarr[1] + "' title='" + emotarr[0].replace(']', '').replace('[', '') + "' /></a></li>"
        }
        window.onload = function () {
            document.getElementById("biaoqing").innerHTML = biaoqcontent;
            document.getElementById("txt_Content").style.width = "595px";
            document.getElementById("MyFriendsMessageBoxs").scrollTop = document.getElementById("MyFriendsMessageBoxs").scrollHeight;
            if (navigator.userAgent.indexOf('Firefox') >= 0) {
                document.getElementById("txt_Content").innerHTML = "<br/>";
            }
            document.getElementById("MyFriendsMessageBoxs").style.width = "605px";

        }
    </script>
    <table cellpadding="0" cellspacing="0" id="groupMenu" onClick="this.style.display='none';" style="display: none; border: #69F; background: #fff; width: 90px; position: absolute; height: 60px; font-size: 13px;">
        <tr style="height: 30px; line-height: 30px;">
            <td onMouseOut="this.style.backgroundColor='';" onMouseOver="this.style.backgroundColor='#999';">
                <a style="font-size: 14px; color: Black; text-decoration: none;" href="javascript:void(0)" onClick="javascript:window.open('/User/Usertalk/usergroups.aspx','','width=600,height=350,resizable=1,scrollbars=yes');">用户组操作</a>
            </td>
        </tr>
        <tr style="height: 30px; line-height: 30px;">
            <td onMouseOut="this.style.backgroundColor='';" onMouseOver="this.style.backgroundColor='#999';">
                <a style="font-size: 14px; color: Black; text-decoration: none;" href="javascript:void(0)" onClick="javascript:window.open('/User/Usertalk/RoomAdd.aspx','','width=600,height=350,resizable=1,scrollbars=yes');">用户群操作</a>
            </td>
        </tr>
        <tr style="height: 30px; line-height: 30px;">
            <td style="height: 30px; line-height: 30px;" onMouseOut="this.style.backgroundColor='';" onMouseOver="this.style.backgroundColor='#999';">
                <a style="font-size: 14px; color: Black; text-decoration: none;" href="javascript:void(0)" onClick="javascript:window.open('/User/Usertalk/MyFriendBy.aspx','','width=600,height=350,resizable=1,scrollbars=yes');">好友修改删除</a>
            </td>
        </tr>
    </table>
    <table cellpadding="0" cellspacing="0" id="Select" onClick="this.style.display='none';" style="display: none; border: #69F; background: #fff; width: 90px; position: absolute; height: 60px; font-size: 13px;">
        <tr style="height: 30px; line-height: 30px;">
            <td onMouseOut="this.style.backgroundColor='';" onMouseOver="this.style.backgroundColor='#999';">
                <a style="font-size: 14px; color: Black; text-decoration: none;" href="javascript:void(0)" onClick="javascript:window.open('/User/Usertalk/SelectFrient.aspx','','width=600,height=350,resizable=1,scrollbars=yes');">查找用户</a>
            </td>
        </tr>
        <tr style="height: 30px; line-height: 30px;">
            <td onMouseOut="this.style.backgroundColor='';" onMouseOver="this.style.backgroundColor='#999';">
                <a style="font-size: 14px; text-decoration: none; color: Black;" href="javascript:void(0)" onClick="javascript:window.open('/User/Usertalk/SelectRoom.aspx','','width=600,height=350,resizable=1,scrollbars=yes');">查找群组</a>
            </td>
        </tr>
    </table>
</div>
</div>
</form>
<script type="text/javascript">
    var button = false;
    var leftwidth = 170;
    var rightwidth = 173;
    $("#commercialDiv .leftdiv").click(function () {
        if (!button) {
            $("#commercialDiv").animate({ width: '10' }, "slow", function () {
                $("#commercialDiv .tranDiv").hide();
                $("#leftDivContent").hide();
               
            });
            $("#MyFriendsMessageBoxs").animate({ width: rightDiaplay ? 777 + rightwidth : 777 }, "slow");
            $(".tranDivCenter").animate({ width: rightDiaplay ? 777 + rightwidth : 777 }, "slow");
            // alert($("#MyFriendsMessageBoxs").parent.getName()); //.animate({ width: rightDiaplay ? 777 + rightwidth : 777 }, "slow");
            $("#txt_Content").animate({ width: rightDiaplay ? 767 + rightwidth : 767 }, "slow");
            button = true;

        } else if (button) {
            $("#commercialDiv > div").show();
            $("#commercialDiv").animate({ width: '180' }, "slow");
            $("#MyFriendsMessageBoxs").animate({ width: rightDiaplay ? 606 + rightwidth : 606 }, "slow");
            $(".tranDivCenter").animate({ width: rightDiaplay ? 606 + rightwidth : 606 }, "slow");
            $("#txt_Content").animate({ width: rightDiaplay ? 596 + rightwidth : 596 }, "slow");
            $(this).removeClass('leftdivDisplay').addClass('leftdiv');
            button = false;
        }
    })

  
    var rightDiaplay = false;
    $("#divRight .leftdivDisplay").click(function () {
        if (!rightDiaplay) {
            $("#divRight").animate({ width: '10' }, "slow", function () {
                $("#divRight .tranDiv").hide();
                $("#divRightContent").hide();
                $("#divRight .leftdivDisplay").removeClass("leftdivDisplay").addClass('leftdiv');
            });
            $("#MyFriendsMessageBoxs").animate({ width: button ? 777 + leftwidth : 777 }, "slow");
            $(".tranDivCenter").animate({ width: button ? 777 + leftwidth : 777 }, "slow");
            $("#txt_Content").animate({ width: button ? 767 + leftwidth : 767 }, "slow");
            rightDiaplay = true;

        } else if (rightDiaplay) {
            $("#divRight > div").show();
            $("#divRight").animate({ width: '185' }, "slow");
            $("#MyFriendsMessageBoxs").animate({ width: button ? 606 + leftwidth : 606 }, "slow");
            $(".tranDivCenter").animate({ width: button ? 606 + leftwidth : 606 }, "slow");
            $("#txt_Content").animate({ width: button ? 596 + leftwidth : 596 }, "slow");
            $(this).removeClass('leftdiv').addClass('leftdivDisplay');
            rightDiaplay = false;
        }
    })
    $(document).ready(
        function () {
            $("#divRight > div").show();
            $("#divRight").animate({ width: '185' }, "");
            $("#MyFriendsMessageBoxs").animate({ width: button ? 606 + leftwidth : 606 }, "");
            $(".tranDivCenter").animate({ width: button ? 606 + leftwidth : 606 }, "");
            $("#txt_Content").animate({ width: button ? 596 + leftwidth : 596 }, "");
            $(this).removeClass('leftdiv').addClass('leftdivDisplay');
        }
    )
	

</script>
</body>
</html>
