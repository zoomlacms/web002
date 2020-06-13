<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_MailShow, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>查看邮件</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;邮件订阅&gt;&gt;<a href="SendMailList.aspx">已发送邮件</a>&gt;&gt;查看邮件信息</div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg">
        <td colspan="2" align="center" class="spacingtitle"> 查看邮件信息</td>
      </tr>
      <tr class="tdbg">
        <td align="center" id="tdtitle" runat="server" class="tdbgleft"></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" id="tdtime" runat ="server" align="center"></td>
      </tr>
      <tr class="tdbg">
        <td id="tdcontext" runat="server" ></td>
      </tr>
      <tr class="tdbg">
        <td></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>