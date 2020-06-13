<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_ExamDetail, App_Web_vlyb51rz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="head1" runat="server"  onkeydown="KeyDown()" onkeyup="KeyDown()">
<title>参加考试</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../JS/jquery.js" type="text/javascript"></script>
<style type="text/css">
<%--.Mulchoice{float:left;}--%>
.Clock{
    position: absolute;
    border: 2px solid #CCC;
    background-color: #FFF;
    font-size:12px;
    z-index:1000;
}
</style>
<script type="text/javascript">
    function ShowDiv(obj) {
        if (document.getElementById("Div" + obj).style.display == "") {
            document.getElementById("Div" + obj).style.display = "none";
            document.getElementById("Show" + obj).innerHTML = "<img src='../../Images/ico_a.gif' onclick=\"ShowDiv('" + obj + "')\" style='float:right' > ";
        } else {
            document.getElementById("Div" + obj).style.display = "";
            document.getElementById("Show" + obj).innerHTML = "<img src='../../Images/ico_b.gif' onclick=\"ShowDiv('" + obj + "')\" style='float:right'  > ";
        }
    }
    function scall() {
        Scro();
        document.getElementById("BtnClick").disabled = "disabled";
    }
    window.onscroll = scall;
    window.onresize = scall;

    function CloseDiv() {
        if (document.getElementById("DivClock").style.display == "") {
            document.getElementById("DivClock").style.display = "none";
            document.getElementById("BtnClick").disabled = "";
        } else {
            document.getElementById("DivClock").style.display = "";
            document.getElementById("BtnClick").disabled = "disabled";
        }
    }

    function CliTime() {
        $.get(
		'/action/GetTime.aspx?' + Math.random().toString(), '',
		function (obj) {
		    var res = obj;
		    var today = new Date(res.replace('-', '/'));   //当前时间
		    var times = $("#hfTimes").val();
		    var endtime = new Date(times.replace('-', '/')).getTime();  //结束时间
		    timeold = endtime - today.getTime();
		    sectimeold = timeold / 1000;
		    secondsold = Math.floor(sectimeold);
		    msPerDay = 24 * 60 * 60 * 1000;
		    e_daysold = timeold / msPerDay;
		    daysold = Math.floor(e_daysold);   //结束时间的天数
		    e_hrsold = (e_daysold - daysold) * 24;
		    hrsold = Math.floor(e_hrsold);    //小时数
		    e_minsold = (e_hrsold - hrsold) * 60;
		    minsold = Math.floor((e_hrsold - hrsold) * 60);  //分数
		    seconds = Math.round((e_minsold - minsold) * 60);  //秒数
		    if (daysold < 0 || (hrsold <= 0 && minsold <= 0 && seconds <= 0)) {  //时间结束
		        $("#div :input").css("display", "none");
		        document.getElementById("DivClock").style.display = "none";
		        document.getElementById("BtnClick").style.disabled = "none";
		    } else {
		        $("#spTime").html("<font color='red'>" + hrsold + "时" + minsold + "分" + seconds + "秒</font>");
		    }
		}, ''
	);
}

$(function() {
   scall();
    CliTime();
});
setInterval("CliTime()", 1000);

//function GetAnswer(pid,questid,answer){
//    //alert('OperDate.aspx?menu=answer&pid='+pid+'&qid='+questid+'&ans='+answer+'&a=' + Math.random().toString());
//    $.get('OperDate.aspx?menu=answer&pid='+pid+'&qid='+questid+'&ans='+answer+'&a=' + Math.random().toString(),'',
//    function(obj){  
//        //alert(obj);
//    },'');
//}
function call(){
alert("交卷成功！");

document.getElementById("wans").disabled=false;
}

function sub(){
$(":input").attr("disabled","false");
$(".answer").css("display","block");
}
</script>

<script type="text/javascript">
    //屏蔽鼠标右键、Ctrl+N、Shift+F10、F5刷新、退格键
    //屏蔽F1帮助 
    function KeyDown() {
        //alert(event.keyCode); 
        //屏蔽 Alt+ 方向键 ← 屏蔽 Alt+ 方向键 → 
        if ((window.event.altKey) && ((window.event.keyCode == 37) || (window.event.keyCode == 39))) {
            //alert("不准你使用ALT+方向键前进或后退网页！"); 
            event.returnValue = false;
        }
        //屏蔽退格删除键,屏蔽 F5 刷新键,Ctrl + R 
        if ((event.keyCode == 116) || (event.ctrlKey && event.keyCode == 82)) {
            event.keyCode = 0;
            event.returnValue = false;
        }
        //屏蔽 Ctrl+n 
        if ((event.ctrlKey) && (event.keyCode == 78)) {
            event.returnValue = false;
        }
        //屏蔽 shift+F10 
        if ((event.shiftKey) && (event.keyCode == 121)) {
            event.returnValue = false;
        }
        //屏蔽 shift 加鼠标左键新开一网页 
        if (window.event.srcElement.tagName == "A" && window.event.shiftKey) {
            window.event.returnValue = false;
        }
        //屏蔽Alt+F4 
        if ((window.event.altKey) && (window.event.keyCode == 115)) {
            window.showModelessDialog("about:blank", "", "dialogWidth:1px;dialogheight:1px");
            return false;
        }
        //屏蔽Ctrl+A 
        if ((event.ctrlKey) && (event.keyCode == 65)) {
            return false;
        }
        //屏蔽F4
        if (window.event.keyCode == 115) {
            event.keyCode = 0;
            event.returnValue = false;
        }
    } 
</script>
</head>
<body ondragstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" onselectstart="event.returnValue=false" onkeydown="KeyDown()" onkeyup="KeyDown()">
<form id="form2" runat="server">
<div align="center">
    <div align="center" style="border-bottom:solid 2px #ADD8E6;width:80%; margin-top:10px;">
    <div align="center" style="font-weight:bold;float:left;width:100%;right:40px"><asp:literal ID="liTitle" runat="server"></asp:literal></div>
    <div style="float:right">总共<asp:Literal ID="liNum" runat="server"></asp:Literal>题，共<asp:Literal ID="liCourse" runat="server"></asp:Literal>分
    <asp:Button ID="btnSub" runat="server" Text="交卷"  onclick="btnSub_Click" />
    <%--<input id="sEcubm" type="button" value="交卷" onclick="btnSub_Click" onmouseup="call()" runat="server" />--%>&nbsp;
    <input id="BtnClick" type="button" value="打开时钟" onclick="CloseDiv()" />&nbsp;
    <input id="wans" type="button" value="查看答案" onclick="sub()" runat="server"/></div>
</div>
<!-- 右边时钟提示 begin -->
<div id="DivClock" class="Clock" style="width:80px; height:50px;" align="center">
    <div id="DivClose" style="float:right;color:Red;cursor:pointer;width:10px;height:16px;width:100%; border-bottom:1px solid #8EE5EE;" align="right" onclick="CloseDiv()"><img src="../../Images/Exam_timecancel.gif"/></div>
    剩余时间：<div style="width:100%"><span id="spTime"></span></div><br /><br />
   <%-- <div id="ScoreStatics" style=" float:right; width:100%; height:10px"><a href="OperDate.aspx">检查答案</a></div>--%>
</div>
<asp:HiddenField ID="hfTimes" runat="server" />
<script language="javascript">
    function Scro() {
        document.getElementById("DivClock").style.top = (document.documentElement.scrollTop + 50) + "px";
        document.getElementById("DivClock").style.left = (document.documentElement.scrollLeft + document.documentElement.clientWidth - document.getElementById("DivClock").offsetWidth) + "px";
    }
</script>
<!-- 右边时钟提示 end -->
<div style="margin-top:40px ;">
<%--<div  style="float:left;width:20%"></div>--%>
<asp:HiddenField ID="hfclassid" runat="server"/>
    <div id="div" align="center" style="width:80%;margin:auto;">
    <asp:Repeater ID="Repeater1" runat="server"  onitemdatabound="Repeater1_ItemDataBound">
        <ItemTemplate>
        <!-- 大题显示 begin -->
            <div style="background-color:#ADD8E6;height:25px;font-size:11pt;margin-bottom:5px;margin-top:8px;width:100%;line-height:25px" >
                <div style="float:left;" align="left"><%#GetChineseNumd((Container.ItemIndex + 1).ToString())%>、<%#Eval("QuestionTitle")%>(共<%#Eval("QuesNum") %>题，每小题<%#Eval("Course")%>分)</div>
                <span id="Show<%#Eval("ID") %>"><img src="../../Images/ico_b.gif" onclick="ShowDiv('<%#Eval("ID") %>')" style="float:right" /></span>
            </div>
            <div id="Div<%#Eval("ID") %>">
               <div style="width:100%;font-size:11pt;" align="left"><%#Eval("Subtitle")%></div>
        <!-- 大题显示  end -->
                <asp:HiddenField ID="hfid" runat="server" Value='<%#Eval("QuestionType") %>' />
                <asp:HiddenField ID="hfNum" runat="server" Value='<%#Eval("QuesNum") %>' />
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                    <!-- 小题显示 begin -->
                       <div style="float:left;margin-top:5px;"><%#(Container.ItemIndex + 1).ToString()%>、<%#Eval("p_title")%></div>
                      <!--   内容显示  -->
                       <div style="margin-top:30px;text-align:left;"><%#GetContent(Eval("p_id", "{0}"))%></div> 
                    <!--答案显示-->
                       <div class="answer" style="margin-top:30px;text-align:left;color:Red;display:none"><%#GetAns(Eval("p_id","{0}")) %></div><br />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
</div>
</div>
<asp:HiddenField ID="hfSid" runat="server" />
</form>
</body>
</html>
<script type="text/javascript">
    var req;
    var AJAXflag = false;
    function createre() {
        //创建XMLHttpRequest实例
        if (window.XMLHttpRequest) {   //Mozilla 浏览器    
            req = new XMLHttpRequest();
            if (req.overrideMimeType) {//设置MiME类别    
                req.overrideMimeType("text/xml");
            }
        } else if (window.ActiveXObject) { // IE浏览器    
            try {
                req = new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e) {
                try {
                    req = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (e) {
                }
            }
        }
        if (!req) { // 异常,创建对象实例失败    
            //"不能创建XMLHttpRequest对象实例"    
            window.alert("不能创建XMLHttpRequest对象实例..");
            return false;
        }
    }
    function callback() //回调函数，对服务端的响应处理，监视response状态
    {
        if (req.readyState == 4) {
            if (req.status == 200) //http状态200表示OK
            {
                AjAXflag = true;
                //alert(req.responseText);
                var strTemp = req.responseText;
                //alert(strTemp);
            }
            else //http返回状态失败
            {
                alert("操作失败！");
            }
        }
        else //请求状态还没有成功，页面等待
        {
        }
    }
    function tjAjax(url) {
        if (!req) {
            createre();
        }
        req.onreadystatechange = callback; //指定回调函数
        req.open("get", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
        req.send(null); //
    }
    function GetDeliver(Pobj) {
        //alert(Pobj.value);
        tjAjax("ExamDetail.aspx?status=1&sid=" + hfSid.Value);
    }
</script>