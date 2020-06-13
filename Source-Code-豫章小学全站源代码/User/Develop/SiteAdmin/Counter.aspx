<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteAdmin_Counter, App_Web_2r0iyaqk" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>访问统计</title>
<style type="text/css">
*{margin:0px;padding:0px; font-size:12px}
.clear{ clear:both;}
#webBorder{ width:980px; margin:auto;clear:both; margin-top:25px;}
#title_L{ float:left;width:150px; height:20px; line-height:20px; text-align:center; border:1px #000 solid; border-bottom:none;}
#title_R{ float:left;width:828px; height:20px;border-bottom:1px #000 solid;}
#main{height:500px;border:1px #000 solid; border-top:none; padding-top:10px;}
</style>
</head>
<body>
<div id="webBorder">
<div id="title_L">访问统计</div><div id="title_R"></div>
<div class="clear"></div>
<div id="main">
<table style="border: 1px solid #E2E9FF;margin-left:auto;margin-right:auto;" width="400" border="0" cellpadding="5" cellspacing="3">
<tr align="center">
    <td width="80" height="66"><a href="month.aspx"><img src="/App_Themes/AdminDefaultTheme/images/Counter/stat2.jpg" width="70" height="70" border="0"></a></td>
    <td width="80"><a href="CountYear.aspx"><img src="/App_Themes/AdminDefaultTheme/images/Counter/stat5.jpg" width="70" height="70" border="0"></a></td>
    <td width="80"><a href="browser.aspx"><img src="/App_Themes/AdminDefaultTheme/images/Counter/stat9.jpg" width="70" height="70" border="0"></a></td>
    <td width="80"><a href="os.aspx"><img src="/App_Themes/AdminDefaultTheme/images/Counter/stat7.jpg" width="70" height="70" border="0"></a></td>
</tr>
<tr align="center">
    <td width="80">日访问量</td>
    <td width="80">月访问量</td>
    <td width="80">浏览器</td>
    <td width="80">操作系统</td>
</tr>
<tr align="center">
    <td width="80" height="66"><a href="site.aspx"><img src="/App_Themes/AdminDefaultTheme/images/Counter/stat10.jpg" width="70" height="70" border="0"></a></td>
    <td width="80"><a href="local.aspx"><img src="/App_Themes/AdminDefaultTheme/images/Counter/stat8.jpg" width="70" height="70" border="0"></a></td>
    <td width="80"><a href="ip.aspx"><img src="/App_Themes/AdminDefaultTheme/images/Counter/stat0.jpg" width="70" height="70" border="0"></a></td>
    <td width="80"><a href="about.aspx"><img src="/App_Themes/AdminDefaultTheme/images/Counter/stat6.jpg" width="70" height="70" border="0"></a></td>
</tr>
<tr align="center">
    <td width="80">访问渠道</td>
    <td width="80">地区统计</td>
    <td width="80">总访问统计</td>
    <td width="80">系统信息</td>
</tr>
</table>
</div>
</div>
</body>
</html>