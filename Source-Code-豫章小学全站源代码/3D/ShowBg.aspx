<%@ page language="C#" autoeventwireup="true" inherits="_3D_ShowBg, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>展示背景</title>
<script type="text/javascript">
var xmlHttp;
function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		} 
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
		}
	}
function doStart(shopid, scen) {
    createXMLHttpRequest();
    var url = "showBgRe.aspx?shopid=" + shopid + "&scen=" + scen;
    xmlHttp.open("GET", url, true);
    xmlHttp.onreadystatechange = startCallback;
    xmlHttp.send(null);
	}
function startCallback() {
    if (xmlHttp.readyState == 4) {
        if (xmlHttp.status == 200) {
            var message = xmlHttp.responseXML.getElementsByTagName("bgimage")[0].firstChild.data;
            var message2 = xmlHttp.responseXML.getElementsByTagName("bgname")[0].firstChild.data;
            var time_span = document.getElementById("tdmsg");
            time_span.innerHTML = "<img src=" + message + " border=0 width=430 height=330 >";          
        }
    }
}
</script>
 <link href="../Skin/showPro.css" rel="stylesheet" type="text/css" />
<style>
	ul{ margin:0px; padding:0px; list-style:none; float:left;}
	.listbg{float:left;}
	.listbg li{ float:left; width:100px; height:100px; padding-top:8px; padding-left:18px;}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td></td>
            <td><asp:HiddenField ID="HiddenShopid" runat="server" /></td>
        </tr>
    </table>
<div class="fmain-r4">
	<div class="fmain-r5">
		<div class="fmain-r6"><img src="../Skin/fire/yuan.jpg"  width="14" /></div>
		<div class="fmain-r7">选择展位</div> 
	</div>
<div class="fmain-r9">
  <div style="height:350px; ">
      <div id="tdmsg" style="float:left; width: 60%; height: 330px; text-align:center;border:1px solid black;">请选择您想要场景</div>
        <div style="height:330px; margin-left: 4px; overflow-y: scroll; width:270px; float:right ">
      <ul class="listbg">
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
            <li><img src='<%# Eval("DSceneBG")%>' border=0 width=100 height=100    onclick="doStart('<%=HiddenShopid.Value %>','<%# Eval("DSceneid")%>')"></li>         
            </ItemTemplate>
            </asp:Repeater>
      </ul></div></div></div>
  <div style="text-align:center"> <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" /></div>
</div>    
<div style="clear:both"></div>
</form>
</body>
</html>