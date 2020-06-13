<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_HandinMapXml, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<title>ZoomLaSiteMap</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="column">      
    
    <table width="100%" border="0" align="center" cellpadding="6" cellspacing="0" class="border">
        <tr class="tdbg" style="background-color:#F0F6FC">
            <td width="34%" height="24" align="left" class="title" colspan="2">
                ★站点地图提交
            </td>
        </tr>
        <tr class="tdbg">
            <td height="17" align="center" colspan="2">
                &nbsp;<br />
            </td>
        </tr>
        
        <tr class="tdbg">
            <td height="35">
            Google站点地图提交地址：    
            </td><td align="left"><a href='https://www.google.com/webmasters/sitemaps/login?hl=zh_CN' target='_blank'>https://www.google.com/webmasters/sitemaps/login?hl=zh_CN</a></td>
        </tr>
        <tr class="tdbg">
            <td height="35">
                站点地图文件地址:</td><td align="left"><%=GetUrl()%>/sitemap.xml</td>
        </tr>
        <tr class="tdbg">
            <td height="35">
              Yahoo站点地图提交地址：
            </td>
            <td align="left"><a href='https://siteexplorer.search.yahoo.com' target="_blank">https://siteexplorer.search.yahoo.com</a></td>
        </tr>
        <tr class="tdbg">
            <td height="35">
                站点地图文件地址:</td><td align="left"><%=GetUrl()%>/sitemap.xml </td>
        </tr>
    </table>
    
    <table width="100%" border="0" align="center" cellpadding="6" cellspacing="0">
        <tr>
            <td height="45" align="center">
                &nbsp;
            </td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>

