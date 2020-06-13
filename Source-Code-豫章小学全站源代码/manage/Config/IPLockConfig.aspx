<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Config.IPLockConfig, App_Web_bjsozxub" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="IPWeb.ascx" TagName="IPWeb" TagPrefix="ZL" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>IP访问限定</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;IP访问限定</div>
<table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
    <tr align="center">
        <td colspan="2" class="spacingtitle">
            <strong>IP访问限定配置</strong>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:200px">
            <strong>全站来访限定方式：</strong></td>
        <td class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <asp:RadioButtonList ID="LockIPType" runat="server">
                <asp:ListItem Value="0">不启用来访限定功能，任何IP都可以访问本站。</asp:ListItem>
                <asp:ListItem Value="1">仅仅启用白名单，只允许白名单中的IP访问本站。</asp:ListItem>
                <asp:ListItem Value="2">仅仅启用黑名单，只禁止黑名单中的IP访问本站。</asp:ListItem>
                <asp:ListItem Value="3">同时启用白名单与黑名单，先判断IP是否在白名单中，如果不在，则禁止访问；如果在则再判断是否在黑名单中，如果IP在黑名单中则禁止访问，否则允许访问。</asp:ListItem>
                <asp:ListItem Value="4">同时启用白名单与黑名单，先判断IP是否在黑名单中，如果不在，则允许访问；如果在则再判断是否在白名单中，如果IP在白名单中则允许访问，否则禁止访问。</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 200px">
            <strong>全站IP段白名单：</strong></td>
        <td class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <ZL:IPWeb ID="IPLockWhite" runat="server" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:200px">
            <strong>全站IP段黑名单：</strong></td>
        <td class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <ZL:IPWeb ID="IPLockBlack" runat="server" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:200px">
            <strong>后台来访限定方式：</strong></td>
        <td class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <asp:RadioButtonList ID="AdminLockIPType" runat="server">
                <asp:ListItem Value="0">不启用来访限定功能，任何IP都可以访问本站。</asp:ListItem>
                <asp:ListItem Value="1">仅仅启用白名单，只允许白名单中的IP访问本站。</asp:ListItem>
                <asp:ListItem Value="2">仅仅启用黑名单，只禁止黑名单中的IP访问本站。</asp:ListItem>
                <asp:ListItem Value="3">同时启用白名单与黑名单，先判断IP是否在白名单中，如果不在，则禁止访问；如果在则再判断是否在黑名单中，如果IP在黑名单中则禁止访问，否则允许访问。</asp:ListItem>
                <asp:ListItem Value="4">同时启用白名单与黑名单，先判断IP是否在黑名单中，如果不在，则允许访问；如果在则再判断是否在白名单中，如果IP在白名单中则允许访问，否则禁止访问。</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:200px">
            <strong>后台IP段白名单：</strong></td>
        <td class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <ZL:IPWeb ID="IPLockAdminWhite" runat="server" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:200px">
            <strong>后台IP段黑名单：</strong></td>
        <td class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <ZL:IPWeb ID="IPLockAdminBlack" runat="server" /></td>
    </tr>        
</table>
    <br />            
    <asp:Button ID="Button1" runat="server" Text="保存设置" class="C_input" OnClick="Button1_Click"  /><br />
</form>
</body>
</html>