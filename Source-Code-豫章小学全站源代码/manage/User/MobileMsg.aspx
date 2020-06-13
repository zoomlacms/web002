<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.Manage.User.MobileMsg, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>发送手机短信</title>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"> 后台管理&gt;&gt; 附件管理&gt;&gt; 邮件订阅&gt;&gt;手机短信</div>
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="2" class="spacingtitle"><b>发送手机短信</b></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="right" style="height: 28px; width: 25%;">短信余额：</td>
      <td align="left"><asp:Label ID="LblMobile" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="right" style="height: 28px; width: 15%;">&nbsp;接收人号码：<br />
        (多条信息发送以半角逗号区隔，最多支持100个/次超100个请自行做循环))</td>
      <td><table id="TblAddMessage" width="100%" visible="true" runat="server">
          <tr>
            <td><asp:TextBox ID="TxtInceptUser" runat="server" Width="326px" class="l_input"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtInceptUser" runat="server">号码不能为空 </asp:RequiredFieldValidator></td>
            <td>&nbsp; <span style="color: #0000ff">&lt;=【</span><a href="#" onclick="SelectUser();"> <span style="text-decoration: underline; color: Green;">会员手机列表</span></a><span style="color: #0000ff">】</span></td>
          </tr>
        </table></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="right" style="height: 23px; width: 15%;">短信内容：<br />
        (字数70个字以内)</td>
      <td><asp:TextBox ID="EditorContent" runat="server" Rows="10" TextMode="MultiLine" Width="99%" class="x_input"></asp:TextBox>
        <asp:RequiredFieldValidator ID="ValrContent" runat="server" ControlToValidate="EditorContent" ErrorMessage="*短消息内容不能为空" Display="Dynamic"></asp:RequiredFieldValidator></td>
    </tr>
    <tr align="center" class="tdbg">
      <td colspan="2" style="height: 50px;" align="center"><asp:Button ID="BtnSend" runat="server" Text="发送" OnClick="BtnSend_Click" class="C_input" />
        &nbsp;&nbsp;
        <asp:Button ID="BtnReset" runat="server" Text="清除" OnClick="BtnReset_Click" class="C_input" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" /></td>
    </tr>
  </table>
  </div>
</form>
</body>
</html>
<script type="text/javascript">
    function SelectUser() {
        window.open('UserMobile.aspx?OpenerText=<%=TxtInceptUser.ClientID %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
    }
</script>