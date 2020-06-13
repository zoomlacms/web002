<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_AppConfig, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>网站信息配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt;维护中心
    <asp:HiddenField ID="HiddenSele" runat="server" />
    <asp:HiddenField ID="HiddenText" runat="server" />
  </div>
  <table width="99%" cellspacing="1" cellpadding="0" class="border">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>是否重新安装：</strong></td>
      <td><asp:CheckBox ID="CheckBox1" runat="server" />
        点击即需要重新安装数据库，请慎重.</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>设置调试模式：</strong></td>
      <td colspan="1"><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="3">
          <asp:ListItem Value="0">停用自定义错误</asp:ListItem>
          <asp:ListItem Value="1">启用自定义错误</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>防盗链后缀名：</strong></td>
      <td colspan="1"><asp:TextBox ID="TextBox1" runat="server" Width="483px" Height="64px" TextMode="MultiLine" class="x_input"></asp:TextBox></td>
    </tr>
  </table>
  <br />
  <asp:Button ID="Button1" runat="server" Text="保存设置" OnClick="Button1_Click" class="C_input" />
  <br />
</form>
</body>
</html>