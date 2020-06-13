<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_AddMailIdiograph, App_Web_tskucmgh" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=type %>签名</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 附件管理 &gt;&gt; 邮件订阅 &gt;&gt;<a href="MailIdiographList.aspx">签名列表</a>&gt;&gt;<%=type %>签名</div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg">
        <td align="center" class="spacingtitle" colspan="2"><%=type %>签名</td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="35%" align="right" class="tdbgleft"><strong>签名标签：</strong></td>
        <td><asp:TextBox ID="txtName" runat="server" class="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="35%" align="right" class="tdbgleft"><strong>签名内容：</strong></td>
        <td><asp:TextBox ID="txtContext" class="x_input" runat="server" Rows="3" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="35%" align="right" class="tdbgleft"><strong>签名状态：</strong></td>
        <td><asp:RadioButtonList ID="rblState" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="True" Selected="true">启用</asp:ListItem>
            <asp:ListItem Value="False">禁用</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td colspan="2" align="center"><asp:Button ID="Button1" class="C_input"  runat="server" Text="提  交" OnClick="Button1_Click" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>