<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_FileseeManage, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>在线文件管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt; <span>系统配置</span> &gt;&gt; <span><a href="FileseeManage.aspx">文件比较</a></span> &gt;&gt; <span>比较所有文件</span>
</div>
<div class="clearbox"></div>

<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        <tr class="tdbg">
            <td class="tdbgleft align="left" style="height:25px">
            <b>说明：</b>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbg" style="text-align: left;">
           　　文件比较功能是为了防止木马和一些不法分子使用服务器漏洞上传非法文件的有效手段，可以让您使用此功能扫描该文件是否和官方文件是否相同，如果经过了更改；文件名颜色标识为红色，否者为绿色！并且有中文提示!<br />
           　　本功能完全采用加密手段方式检查，依靠网络与官方服务器连接，可以完全检查出文件是否被更改！是目前网络最安全、最科学、最可靠的检查工具!
           　　<br /><br /><asp:Button Text="开始比较文件" runat="server" ID="bj" Height="25px" onclick="bj_Click" class="C_input"/><br /><br />
            </td>
        </tr>
    </table>
    <div class="clearbox">
</div>
<div style="overflow-y: auto; overflow-x: hidden; height: 800px">
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        <tr class="tdbg">
            <td class="title" align="center" style="text-align: center; width: 5%;">
                序号
            </td>
            <td class="title" align="center" style="text-align: left; width: 55%;">
                文件名(相对路径)
            </td>
            <td class="title" align="center" style="text-align: center; width: 20%;">
                文件大小(KB)
            </td>
            <td class="title" align="center" style="text-align: center; width: 20%;">
                结果
            </td>
        </tr>
        
        <div id="seestr" runat="server"></div>
    </table>
</div>
</form>
</body>
</html>