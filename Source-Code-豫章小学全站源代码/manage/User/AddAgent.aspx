<%@ page language="C#" autoeventwireup="true" inherits="manage_User_AddAgent, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加代理商房间</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 附件管理&gt;&gt;客服管理 &gt;&gt;<a href='ServiceSeat.aspx'>客服席位</a> &gt;&gt;添加代理房间</div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="right" class="tdbgleft"><strong>代理商名称：</strong></td>
        <td><asp:TextBox ID="txtName" runat="server" class="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="right" class="tdbgleft"><strong>代理房间：</strong></td>
        <td><asp:TextBox ID="TextBox1" runat="server" class="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="25%" align="right" class="tdbgleft"><strong>代理时间：</strong></td>
        <td><asp:TextBox ID="TextBox2" runat="server"  class="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td colspan="2" align="center"><asp:Button ID="Button1" class="C_input" runat="server" Text="添加"  OnClick="Button1_Click" />
          <asp:Button ID="Button2" class="C_input" runat="server" Text="返回" CausesValidation="false" onclick="Button2_Click" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>