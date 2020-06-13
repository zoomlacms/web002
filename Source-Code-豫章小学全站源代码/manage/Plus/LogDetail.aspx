<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Log.LogDetail, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>日志详情</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;扩展功能 &gt;&gt; 日志管理 &gt;&gt; 日志详情</div>
	<table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
        <tr>
            <td class="spacingtitle" colspan="2" style="height: 26px; text-align:center">
                网站日志详细内容
            </td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>日志序号：</strong></td>
            <td align="left"  class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogID" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>日志类型：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogCate" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>日志优先级：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogPri" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>日志记录页面：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogPage" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>日志记录时间：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogTime" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>操作人：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitUserName" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>IP地址：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitUserIP" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>用户提交信息：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitPost" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>日志标题：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitTitle" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>日志内容：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitMessage" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" class="tdbgleft" style="height: 24px">
                <strong>异常源、堆栈跟踪：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitSource" runat="server"></asp:Literal></td>
        </tr>
    </table>
    <div style="text-align:center; margin-top:5px;">
        <input id="Button1" type="button" class="C_input"  value="返 回" onclick="javascript:window.location.href='LogManage.aspx'" /></div>                    
    </form>
</body>
</html>