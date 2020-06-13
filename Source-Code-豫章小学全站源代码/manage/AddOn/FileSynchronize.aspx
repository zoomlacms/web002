<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_FileSynchronize, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
	
	<span>后台管理</span> &gt;&gt; <span>系统配置</span> &gt;&gt; <span><a href="FileseeManage.aspx">文件比较</a></span> &gt;&gt; <span>
                               文件同步管理</span>
                               </div>	
<div class="clearbox"></div>  




 <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
    <tr align="center">
        <td colspan="2" class="spacingtitle">
            <strong>
            <asp:Label ID="LblTitle" runat="server" Text="添加服务器" Font-Bold="True"></asp:Label>
            </strong>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="left" style="width: 40%">
            <strong>服务器名称：</strong><br />
            在此输入在前台显示的镜像服务器名，如广东下载、上海下载等。
        </td>
        <td class="tdbg" style="text-align: left; width: 60%;">
            <asp:TextBox ID="TxtServerName" runat="server" Width="290px" class="l_input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValrServerName" runat="server" ErrorMessage="下载服务器名称不能为空"
                ControlToValidate="TxtServerName"></asp:RequiredFieldValidator></td>
    </tr>
   </table>
</form>
</body>
</html>
