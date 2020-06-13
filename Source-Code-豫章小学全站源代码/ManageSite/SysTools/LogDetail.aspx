<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Log.LogDetail, App_Web_grzskapq" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>日志详情</title>
   <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
		<span>当前位置：功能导航 >><a href="LogDetail.aspx">网站日志详细内容</a></span>
	</div>	 
	<table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">       
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC; height: 24px;">
                <strong>日志序号：</strong></td>
            <td align="left"  class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogID" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color:#F0F6FC;height: 24px">
                <strong>日志类型：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogCate" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>日志优先级：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogPri" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>日志记录页面：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogPage" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>日志记录时间：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitLogTime" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>操作人：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitUserName" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>IP地址：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitUserIP" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>用户提交信息：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitPost" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>日志标题：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitTitle" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>日志内容：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitMessage" runat="server"></asp:Literal></td>
        </tr>
        <tr>
            <td align="left" style="width: 35%;background-color: #F0F6FC;height: 24px">
                <strong>异常源、堆栈跟踪：</strong></td>
            <td align="left" class="tdbg" style="word-wrap:break-word;word-break:break-all">
                <asp:Literal ID="LitSource" runat="server"></asp:Literal></td>
        </tr>
    </table>
    </div>
    <div style="text-align:center; margin-top:5px;">
        <input id="Button1" type="button" value="返 回" onclick="javascript:window.location.href='LogManage.aspx?Cate=1&nid=0'" /></div>                    
    </form>
</body>
</html>
