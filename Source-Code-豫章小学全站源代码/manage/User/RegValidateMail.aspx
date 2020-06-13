<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_RegValidateMail, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮件内容</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;邮件订阅&gt;&gt;验证邮件内容</div>
  <div>
    <table width="100%" height="227" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg">
        <td colspan="2" align="center" class="spacingtitle" > 验证邮件内容</td>
      </tr>
      <tr style="width: 100%" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td style="white-space: normal; width: 30%;" class="tdbgleft" align="right"><strong>邮件标题：</strong></td>
        <td><asp:TextBox ID="txtTitle" runat="server" Width="400px" class="l_input"></asp:TextBox></td>
      </tr>
      <tr style="width: 100%" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td style="white-space: normal; width: 30%; height: 69px;" class="tdbgleft" align="right"><strong>邮件内容：<br />
          (请在内容中使用<br />
          {UserName},{Url}<br />
          两个关键字符)</strong></td>
        <td><asp:TextBox ID="txtContext" runat="server" Width="400px" TextMode="multiLine" Rows="15" class="x_input"></asp:TextBox></td>
      </tr>
      <tr style="width: 100%" class="tdbg">
        <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text="提  交" OnClick="Button1_Click" class="C_input"/></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>