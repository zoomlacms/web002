<%@ page language="C#" autoeventwireup="true" inherits="User_PrintServer_PrintServer, App_Web_cmsnmuvr" enableviewstate="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>打印输出</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<!--media=print 这个属性可以在打印时有效-->
<script language="javascript" type="text/javascript">
var ddshow_emotion;
function initialize() {
/* Check if the browser is IE. If so, flashVideoPlayer is window.videoPlayer. Otherwise, it's window.document.videoPlayer. The videoPlayer is the id assigned to <object> and <embed> tags. */
var ie = navigator.appName.indexOf("Microsoft") != -1;
ddshow_emotion = (ie) ? window['div_swf'] : document['div_swf'];
}
var arr = new Array(10);
var arrindex = 0;
var type;
function SetImg(txt) {
callSetImg(txt);
arr[arrindex] = txt;
arrindex++;
var x = 0;
for (var i = 0; i < 2; i++) {
    for (var j = 0; j < 5; j++) {
        if (arr[x] != "" && arr[x] != null) {
            document.getElementById("td_" + x).innerHTML = "<img src=\"" + arr[x] + "\" style=\"cursor:pointer\" width=\"50px\" onclick=\"callSetImg('" + arr[x] + "')\" />";
        }
        x++; 
    }
}
}
function callSetImg(txt) {
ddshow_emotion.setImg(txt);
}
function callSettext() {
var txt = document.getElementById("txt1").value;
var fontsize = document.getElementById("ddlFontSize").options[document.getElementById("ddlFontSize").selectedIndex].value;
var fonttype = document.getElementById("ddlFontType").options[document.getElementById("ddlFontType").selectedIndex].value;
var color = document.getElementById("txt_color").value;
ddshow_emotion.setText(txt, fontsize, fonttype, color);
}
function DelMC(index) {
var mcid = document.getElementById("hfMCid").value;
ddshow_emotion.DelMC(mcid);
}
function SetBG(bgurl, str, Orient) {
ddshow_emotion.SetBG(bgurl, Orient);
document.getElementById("hfImg").value = "0,1,0,0," + bgurl + ",0,0|";
SetMask(str, Orient);
}
function SetMask(str) {
ddshow_emotion.SetZZ(str);
document.getElementById("hfMack").value = "0,2,0,0," + str + ",0,0|";
}
function GetImg(mcid, txt) {
//alert(mcid);
document.getElementById("hfMCid").value = mcid;

if (txt != "" && txt != "null") {
    if (tID != 1) {
        ShowTabs(1);
    }
    //alert(txt);
    document.getElementById("txt1").value = txt;
}
else {
    if (txt == "" && txt == "null") {
        ShowTabs(0);
    }
}

}
function Uptxt() {
var mcid = document.getElementById("hfMCid").value;
var txt = document.getElementById("txt1").value;
var fonttype = document.getElementById("ddlFontType").options[document.getElementById("ddlFontType").selectedIndex].value;
var fontsize = document.getElementById("ddlFontSize").options[document.getElementById("ddlFontSize").selectedIndex].value;
var color = document.getElementById("txt_color").value;
if (color.indexOf('#') == 0) {
    color = "0x" + color.substring(1, color.length);
}
ddshow_emotion.UpText(mcid, txt, fontsize, fonttype, color);
}
function BlowUp() {
var mcid = document.getElementById("hfMCid").value;
ddshow_emotion.BlowUp(mcid);
}
function Dwindle() {
var mcid = document.getElementById("hfMCid").value;
ddshow_emotion.Dwindle(mcid);
}
function Left() {
var mcid = document.getElementById("hfMCid").value;
ddshow_emotion.Left(mcid);
}
function Right() {
var mcid = document.getElementById("hfMCid").value;
ddshow_emotion.Right(mcid);
}
function ShowPrint() {
ddshow_emotion.GetArr();
}

var tID = 0;
var arrTabTitle = new Array("TabTitle0", "TabTitle1");
var arrTabs = new Array("Tabs0", "Tabs1");
function ShowTabs(ID) {
if (ID != tID) {
    document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
    document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
    document.getElementById(arrTabs[tID].toString()).style.display = "none";
    document.getElementById(arrTabs[ID].toString()).style.display = "";
    tID = ID;
}
//parent.document.getElementById("main_right").height = document.body.offsetHeight;
}

function txtChanged(sss) {

}

function GetAllImg(imglist) {
//alert(imglist);
document.getElementById("HiddenField1").value = document.getElementById("hfImg").value + imglist + document.getElementById("hfMack").value;
window.open('ShowPrint.aspx?PID=' + '<%=Request.QueryString["PID"] %>' + '&Item=' + type + '', 'newWin', 'modal=yes,width=600,height=400,resizable=yes,scrollbars=yes');
}

  function SelectColor(t, clientId) {
        var url = "/Common/SelectColor.aspx?d=f&t=6";
        var old_color = (document.getElementById(clientId).value.indexOf('#') == 0) ? '&' + document.getElementById(clientId).value.substr(1) : '&' + document.getElementById(clientId).value;

        if (document.all) {
            var color = showModalDialog(url + old_color, '', "dialogWidth:18.5em; dialogHeight:16.0em; status:0");

            if (color != null) {
                document.getElementById(clientId).value = color;
            } else {
                document.getElementById(clientId).focus();
            }
        } else {
            var color = window.open(url + '&' + clientId, "hbcmsPop", "top=100,left=500,scrollbars=yes,dialog=yes,modal=no,width=300,height=260,resizable=yes");
        }
    }
    var giftIndex = 0;
    var chooseGift = function(objName, direction) {
        var index = (objName == "visitgift") ? giftIndex : petIndex;
        var hidName = "";
        tarObj = document.getElementsByName(objName);
        if (tarObj) {
            tarIdx = index + ((direction == 'pre') ? -1 : 1);
            if (tarIdx < tarObj.length && tarIdx >= 0) {
                tarObj[index].style.display = "none";
                tarObj[tarIdx].style.display = "";
               // hidName = (objName == "visitgift") ? "hid_giftNo" : "hid_petNo";
                //document.getElementById(hidName).value = tarObj[tarIdx].id; //Record Into	Hidden Field
                (objName == "visitgift") ? giftIndex = tarIdx : petIndex = tarIdx;
            }
        }
    }
</script>

</head>
<body onload=" initialize();">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
</a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent"> 会员中心</a> &gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx"> 我的空间</a>
</div>
<div class="us_topinfo print_main">
<div class="print_main_l">
	 <object id="div_swf" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
            width="550" height="400">
            <param name="movie" value="/Images/Flash/print1.swf<%=js %>" />
            <param name="quality" value="high" />
            <embed src="/Images/Flash/print1.swf" name="div_swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                type="application/x-shockwave-flash"></embed>
        </object></div>
       <div style="float:left">   <form id="form1" runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <br />
        <table width="100%" border="0" cellpadding="0" cellspacing="0" style=" width:360px;">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                    图片
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                    文字
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
            <tbody id="Tabs0">
                <tr class="tdbg">
                    <td align="center">
                        <asp:HiddenField ID="hfImg" runat="server" />
                        <asp:HiddenField ID="hfMack" runat="server" />
                        <asp:HiddenField ID="hfMCid" runat="server" /><iframe id="Iframe1" style="top: 2px" src="/Common/UpLoadFlashByUser.aspx?CID=Img&b=<%=bl %>" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                        <br />
                        <input type="button" id="butdel2" value="删除图片" onclick="DelMC()" />
                        <input id="Button1" type="button" value="放大" onclick="BlowUp()" />
                        <input id="Button2" type="button" value="缩小" onclick="Dwindle()" />
                        <input id="Button3" type="button" value="左旋转" onclick="Left()" />
                        <input id="Button4" type="button" value="右旋转" onclick="Right()" />
                        <br /><br />
                        <table id="imgtb" cellpadding="2" cellspacing="0" border="2"   width="100%">
                            <tr>
                                <td id="td_0" style="width:20%;">
                                </td>
                                <td  id="td_1" style="width:20%;  ">
                                </td>
                                <td  id="td_2" style="width:20%; ">
                                </td>
                                <td  id="td_3" style="width:20%; ">
                                </td>
                                <td  id="td_4" style="width:20%;  ">
                                </td>
                            </tr>
                            <tr>
                                <td id="td_5"  style="width:20%; ">
                                </td>
                                <td  id="td_6"  style="width:20%; ">
                                </td>
                                <td id="td_7"  style="width:20%; ">
                                </td>
                                <td id="td_8"  style="width:20%; ">
                                </td>
                                <td id="td_9"  style="width:20%; ">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
            <tbody id="Tabs1" style="display: none">
                <tr class="tdbg">
                    <td style="height:78px;">
                        字体：<asp:DropDownList ID="ddlFontType" runat="server"> </asp:DropDownList>
                        字体大小：<asp:DropDownList ID="ddlFontSize" runat="server">
                            <asp:ListItem Value="10">10</asp:ListItem>
                            <asp:ListItem Value="20">20</asp:ListItem>
                            <asp:ListItem Value="30">30</asp:ListItem>
                            <asp:ListItem Value="40">40</asp:ListItem>
                            <asp:ListItem Value="50">50</asp:ListItem>
                            <asp:ListItem Value="60">60</asp:ListItem>
                        </asp:DropDownList>
                         字体颜色：
                                <input type="text" id="txt_color" maxlength="7" size="7" value="" />
                                <img onclick="SelectColor(this,'txt_color');" src="/App_Themes/AdminDefaultTheme/images/selectclolor.gif"  align="absmiddle" style="border-width: 0px; cursor: pointer" /> 
                        <br />
                        请输入文字：<input type="text" id="txt1" style="width:300px" maxlength="20" /><br />
                        <input type="button" id="Button5" value="添加文字" onclick="callSettext()" />
                        <input type="button" id="Button6" value="修改当前文字" onclick="Uptxt()" />
                        <input type="button" id="butdel3" value="删除当前文字" onclick="DelMC()" />
                    </td>
                </tr>
            </tbody>
            <tr>
                <td style="min-height: 310px; text-align:center;">
                <a href="javascript:void(0);" onclick="ShowPrint()">预览</a>
                </td>
            </tr>
        </table>
        </form></div>
        <div class="clear"></div>
 </div>
<div class="us_topinfo">
<strong>背景素材：</strong><br><br>
<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<br />
 <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
</div>
</body>
</html>