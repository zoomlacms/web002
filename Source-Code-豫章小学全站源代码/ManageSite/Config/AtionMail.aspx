<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_AtionMail, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>邮件发送配置</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
<form id="myForm" runat="server">
  <div class="column">
    <div class="columntitle"> 当前位置：功能导航 >>邮件发送配置</div>
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="200" align="left"><strong>发送邮件服务器(SMTP)：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" ID="MailDomain" runat="server" >mail.zoomla.cn</asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="MailDomain" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="MailDomain" ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="200" align="left" ><strong>SMTP端口号：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="24" ID="MailDomainPort" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="MailDomainPort"  ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="MailDomainPort" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="SMTP端口必须为大于零的整数" runat="server" />
          <asp:CompareValidator ID="CompareValidator1" ControlToValidate="MailDomainPort" Operator="GreaterThan"  ValueToCompare="0" Display="Dynamic" ErrorMessage="SMTP端口必须为大于零的整数" runat="server" /></td>
      </tr>
      <tr>
        <td width="200" align="left"><strong>发件邮箱：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" ID="MailServerUserName" runat="server" >admin@admin.com</asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="MailServerUserName"  ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="MailServerUserName"  ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="200" align="left"><strong>发件邮箱用户名：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" ID="txtMailUserName" runat="server" >mail.zoomla.cn</asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="MailDomain"  ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="MailDomain" ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="200" align="left"><strong>发件邮箱密码：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"  Columns="35" MaxLength="50" TextMode="Password" ID="MailServerPassword" runat="server"  >8888</asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="MailServerPassword"  ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="MailServerPassword"  ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" ID="Submit" Text="修 改" runat="server" onclick="Submit_Click" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>