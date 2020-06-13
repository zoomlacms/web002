<%@ page language="C#" autoeventwireup="true" inherits="manage_SystemCheck_, App_Web_foogx2yc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>浏览器检测</title>
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div>
<table style="width:100%"> 
    <tr class="tdbgleft"><td style="width:100px">浏览器</td><td><%=browser%></td></tr>
    <tr class="tdbgleft"><td style="width:100px">当前IP</td><td><%=currentIP %></td></tr>
    <tr class="tdbgleft"><td style="width:100px">当前屏幕</td><td><%=currentWindow%>  屏大小：(<script>document.write(window.screen.width+"px,");document.write(window.screen.height+"px");</script>)</td></tr>
    <tr class="tdbgleft"><td style="width:100px">Cookies</td><td><%=cookiesSurrport%></td></tr>
    <tr class="tdbgleft"><td style="width:100px">窗体数</td><td id="vwind">不支持</td></tr>
    <tr class="tdbgleft"><td style="width:100px">服务器Mac</td><td id="tdMac" runat="server"></td></tr>
</table>
<div><a href="http://www.zoomla.cn/help/web/1414.shtml" title="帮助提示" style="color:#1370b5;text-decoration:none;" target="_blank" >《如何设置cookie》</a>&nbsp;&nbsp;&nbsp;
<a href="http://www.zoomla.cn/help/web/1413.shtml" title="帮助提示" style="color:#1370b5;text-decoration:none;" target="_blank">《如何设置网页脚本》</a></div>
</div>
 <iframe width="0" height="0" id="nwin1" name="nwin1" src="about:blank"></iframe>
</form>
<script language="javascript" type="text/javascript">
    var strSupport = "<span >支持（<font color='red'>推荐</font>）</span>";
    var vwind = document.getElementById('vwind');
    var nwin = window.open("about:blank", "nwin1", "width=1,height=1,top=1000,left=0,toolbar=no,location=no,directories=no,status=yes,menubar=no,scrollbars=no,resizable=no");
    nwin.document.open();
    nwin.document.writeln("<script language=\"javascript\" type=\"text/javascript\">");
    window.document.getElementById("vwind").innerHTML = strSupport;
    nwin.document.writeln("<\/script>");
    nwin.document.close();
    nwin.close();
</script>
</body>
</html>