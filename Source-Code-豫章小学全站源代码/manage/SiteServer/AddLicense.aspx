<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_AddLicense, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt; <span>站群管理 </span> &gt;&gt; <span>许可/密钥管理</span> &gt;&gt; <a href="AddSiteinfo.aspx">添加子站许可</a></div>
    <div class="clearbox">
    </div>
    <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
        <tr class="tdbg">
            <td align="center" class="title" colspan="2" height="24" width="100%">
                <asp:Label ID="Lbtitle" runat="server" Text="添加子站许可"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="PubIPOneOrMores">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>子站名称：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <asp:TextBox ID="PubTableName3" runat="server" Width="145px"  />&nbsp;<font color="red">*</font>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
