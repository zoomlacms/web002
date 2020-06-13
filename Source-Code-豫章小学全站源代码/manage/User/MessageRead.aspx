<%@ page language="C#" title="读取短消息" autoeventwireup="true" inherits="User.MessageRead, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>读取短消息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td colspan="2" class="spacingtitle"><b>会员短消息</b></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" style="height: 28px; width: 100%;"><strong>发件人：</strong>
          <asp:Label ID="LblSender" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" style="height: 28px; width: 100%;"><strong>收件人：</strong>
          <asp:Label ID="LblIncept" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" style="height: 28px; width: 100%;"><strong>发送时间：</strong>
          <asp:Label ID="LblSendTime" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" style="height: 28px; width: 100%;"><strong>消息主题：</strong>
          <asp:Label ID="LblTitle" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" style="height: 28px; width: 100%;"><strong>消息内容：</strong></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" style="height: 28px; width: 100%;"><asp:Label ID="LblContent" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="height: 28px; width: 100%; text-align: center"><asp:Button ID="BtnDelete" runat="server" Text="删除" OnClick="BtnDelete_Click" OnClientClick="return confirm('是否要删除此短消息？')" class="C_input" />
          <asp:Button ID="BtnReply" runat="server" Text="回复" OnClick="BtnReply_Click" class="C_input" />
          <asp:Button ID="BtnReturn" runat="server" OnClick="BtnReturn_Click" Text="返回" class="C_input" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>