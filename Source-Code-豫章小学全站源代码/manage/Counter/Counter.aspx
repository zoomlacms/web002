<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_Counter, App_Web_jul0migs" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>统计导航</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/App_Themes/AdminDefaultTheme/Counter.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
	function OnWindowsReSize() {
		document.getElementById("divMain").style.height = document.body.clientHeight - 75;
	}
</script>
</head>
<body onload="OnWindowsReSize()" onresize="OnWindowsReSize()">
<form id="form1" runat="server">
	<div class="r_navigation">后台管理 &gt;&gt;扩展功能 &gt;&gt; <a href="Counter.aspx">访问统计</a> &gt;&gt;统计导航</div>
        <table id="tabMain" class="tablse" cellspacing="0" cellpadding="2" align="center" bgcolor="#ffffff" border="0">
            <tr class="title_link">
                <td class="title" style="height: 22px" colspan="2">
                    访问统计
                </td>
            </tr>
            <tr>
                <td style="vertical-align:top; height: 100%; width: 100%;  border: 1px solid #2F87CE; text-align: center;">
                    <br />
                                    <table style="border: 1px solid #E2E9FF;margin-left:auto;margin-right:auto;" width="400" style="" border="0" cellpadding="5"
                                        cellspacing="3">
                                        <tr align="center">
                                            <td width="80" height="66">
                                                <a href="month.aspx">
                                                    <img src="/App_Themes/AdminDefaultTheme/images/Counter/stat2.jpg" width="70" height="70"
                                                        border="0"></a>
                                            </td>
                                            <td width="80">
                                                <a href="year.aspx">
                                                    <img src="/App_Themes/AdminDefaultTheme/images/Counter/stat5.jpg" width="70" height="70"
                                                        border="0"></a>
                                            </td>
                                            <td width="80">
                                                <a href="browser.aspx">
                                                    <img src="/App_Themes/AdminDefaultTheme/images/Counter/stat9.jpg" width="70" height="70"
                                                        border="0"></a>
                                            </td>
                                            <td width="80">
                                                <a href="os.aspx">
                                                    <img src="/App_Themes/AdminDefaultTheme/images/Counter/stat7.jpg" width="70" height="70"
                                                        border="0"></a>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td width="80">
                                                日访问量
                                            </td>
                                            <td width="80">
                                                月访问量
                                            </td>
                                            <td width="80">
                                                浏览器
                                            </td>
                                            <td width="80">
                                                操作系统
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td width="80" height="66">
                                                <a href="site.aspx">
                                                    <img src="/App_Themes/AdminDefaultTheme/images/Counter/stat10.jpg" width="70" height="70"
                                                        border="0"></a>
                                            </td>
                                            <td width="80">
                                                <a href="local.aspx">
                                                    <img src="/App_Themes/AdminDefaultTheme/images/Counter/stat8.jpg" width="70" height="70"
                                                        border="0"></a>
                                            </td>
                                            <td width="80">
                                                <a href="ip.aspx">
                                                    <img src="/App_Themes/AdminDefaultTheme/images/Counter/stat0.jpg" width="70" height="70"
                                                        border="0"></a>
                                            </td>
                                            <td width="80">
                                                <a href="about.aspx">
                                                    <img src="/App_Themes/AdminDefaultTheme/images/Counter/stat6.jpg" width="70" height="70"
                                                        border="0"></a>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td width="80">
                                                访问渠道
                                            </td>
                                            <td width="80">
                                                地区统计
                                            </td>
                                            <td width="80">
                                                总访问统计
                                            </td>
                                            <td width="80">
                                                系统信息
                                            </td>
                                        </tr>
                                    </table>
                        </table>
                        <br>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
