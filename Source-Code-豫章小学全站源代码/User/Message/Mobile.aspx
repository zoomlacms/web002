<%@ page language="C#" autoeventwireup="true" inherits="User_Message_Mobile, App_Web_4fbteau0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>手机短信</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/App_Themes/AdminDefaultTheme/index.css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo"> 您现在的位置： <a title="网站首页" href="/" target="_blank">
    <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
    </a>&nbsp;&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&nbsp;&gt;&gt; <a title="发送手机短信" href="/User/Message/Mobile.aspx">发送手机短信</a> </div>
  <div class="us_topinfo">
    <ul>
      <li><a href="MessageSend.aspx">写短消息</a></li>
      <li><a href="Message.aspx">收件箱</a></li>
      <li><a href="MessageOutbox.aspx">发件箱</a></li>
      <li><a href="MessageDraftbox.aspx">草稿箱</a></li>
      <li><a href="MessageGarbagebox.aspx">垃圾箱</a></li>
      <li><a href="Mobile.aspx">手机短信</a></li>
    </ul>
  </div>
  <div style="margin-top: 10px;" class="us_seta">
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" colspan="2"></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="height: 28px; width: 15%;">接收方手机号码：</td>
        <td><table id="TblAddMessage" width="100%" visible="true" runat="server">
            <tr>
              <td><asp:TextBox ID="TxtInceptUser" runat="server" Width="326px" class="l_input"></asp:TextBox>
              (多条信息发送以半角逗号区隔，最多支持100个/次超100个请自行做循环)
                <asp:RequiredFieldValidator ControlToValidate="TxtInceptUser" runat="server">手机号码不能为空 </asp:RequiredFieldValidator>
                 </td>
              <td></td>
            </tr>
          </table></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="height: 23px; width: 15%;">短信内容：<br />
          (字数70个字以内)</td>
        <td><asp:TextBox ID="EditorContent" runat="server" Rows="10" TextMode="MultiLine" Width="99%" class="x_input"></asp:TextBox>
          <asp:RequiredFieldValidator ID="ValrContent" runat="server" ControlToValidate="EditorContent" ErrorMessage="短消息内容不能为空" Display="Dynamic">*</asp:RequiredFieldValidator></td>
      </tr>
      <tr align="center" class="tdbg">
        <td colspan="2" style="height: 50px;" align="center"><asp:Button ID="BtnSend" runat="server" Text="发送" OnClick="BtnSend_Click" class="C_input" />
          &nbsp;&nbsp;
          <asp:Button ID="BtnReset" runat="server" Text="清除" OnClientClick="return CheckIsMobile(document.getElementById('TxtInceptUser').value)" OnClick="BtnReset_Click" class="C_input" />
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" /></td>
      </tr>
    </table>
  </div>
  <div style=" border:1px solid #C6E3F7; padding:10px;">
   <asp:Label ID="LblMobile" runat="server" Text="Label" style="color:Red;"></asp:Label>
  提示：系统支持以Mobile.aspx?MB=[手机号码]&txt=[发送内容]方式GET将手机号码传值发送，如：Mobile.aspx?MB=13177777714&txt=默认短信内容。

  </div>
</form>
</body>
</html>