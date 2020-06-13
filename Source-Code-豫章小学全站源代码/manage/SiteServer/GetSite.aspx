<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_GetSite, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
        
        <span>后台管理</span> &gt;&gt; <span>站群管理  </span>&gt;&gt; <span>子站管理</span> &gt;&gt;
        <span><a href='SitesManage.aspx'>子站列表</a></span>
    </div>
    <div class="clearbox">
    </div>
    <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;"
        width="100%">
        <tr class="tdbg">
            <td align="center" class="title" colspan="2" height="24" width="100%">
                子站信息
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="PubIPOneOrMores">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>账号：</strong>
            </td>
            <td align="left" height="24" width="80%">
                <%=SiteNum %>
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="PubNames">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>子站名称：</strong>
            </td>
            <td align="left" height="24" width="80%">
            <%=SiteName %>
            </td>
        </tr>
        <tr id="Tr2" class="tdbg" runat="server" >
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>IP地址：</strong>
            </td>
            <td align="left" height="24" width="80%">
            <%=SiteIP %>
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="PubClasss">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>站长姓名：</strong>
            </td>
            <td align="left" height="24" width="80%">
            <%=Name %>
            </td>
        </tr>
        <tr class="tdbg" id="PubTypes" runat="server">
            <td align="left" style="height: 24px" width="20%" class="tdbgleft">
                <strong>联系电话：</strong>
            </td>
            <td align="left" style="height: 24px" width="80%">
            <%=Tel %>
            </td>
        </tr>
        <tr id="Tr3" class="tdbg" runat="server">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>联系地址：</strong>
            </td>
            <td align="left" height="24" width="80%">
            <%=add %>
            </td>
        </tr>
        <tr class="tdbg">
            <td  class="tdbgleft" align="left">
                <strong>密钥加密方式：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 70%;">
            <%= Encrypttype%>
            </td>
        </tr>
        <tr class="tdbg" id="Encrypt" runat="server" visible="false">
            <td  class="tdbgleft" align="left">
                <strong>加密密钥：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
            <%=EncryptKey%>
             </td>
        </tr>
        <tr class="tdbg" id="Tr1" runat="server"  visible="false">
            <td  class="tdbgleft" align="left">
                <strong>加密许可</strong>
            </td>
            <td class="tdbg" style="text-align: left; word-break:break-all; width: 60%;">
            <%=Licence%>
             </td>
        </tr>
        <tr id="Tr4" class="tdbg" runat="server">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>截止时间：</strong>
            </td>
            <td align="left" height="24" width="80%">
            <%=endtime %>
            </td>
        </tr>
        <tr id="Tr5" class="tdbg" runat="server">
            <td align="left" height="24" width="20%" class="tdbgleft">
                <strong>子站链接状态：</strong>
            </td>
            <td align="left" height="24" width="80%">
            <%=SiteState %>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
