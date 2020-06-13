<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Config.MailConfig, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮件参数</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/AdminDefaultTheme/style.css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation"> 后台管理&gt;&gt;系统配置&gt;&gt;邮件参数配置</div>
  <table width="99%" cellspacing="1" cellpadding="0" class="border">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>发送人邮箱：</strong></td>
      <td  ><asp:TextBox ID="TextBox1" runat="server" class="l_input" />
        </asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>发送邮件服务器(SMTP)：</strong></td>
      <td ><asp:TextBox ID="TextBox2" runat="server" class="l_input" />
        </asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>端口号：</strong></td>
      <td ><asp:TextBox ID="TextBox3" runat="server" class="l_input" />
        </asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>此服务器要求安全连接(SSL)：</strong></td>
      <td ><asp:CheckBox ID="CheckBox1" runat="server" Checked="True" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>身份验证方式：</strong></td>
      <td style="height: 23px;"><asp:RadioButton ID="RadioButton1" runat="server" GroupName="AuthenticationType"/>
        无<br />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="AuthenticationType"/>
        基本<br />
        如果您的电子邮件服务器要求在发送电子邮件时显式传入用户名和密码，请选择此选项。 <br />
        发件人的用户名：
        <asp:TextBox ID="TextBox5" runat="server" Columns="30" class="l_input" />
        </asp:TextBox>
        <br />
        发件人的密&nbsp;&nbsp;码：
        <asp:TextBox ID="TextBox6" TextMode="Password" runat="server" Columns="30" CssClass="l_input"></asp:TextBox>
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="AuthenticationType" />
        NTLM (Windows 身份验证) <br/>
        如果您的电子邮件服务器位于局域网上，并且您使用 Windows 凭据连接到该服务器，请选择此选项。 </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>系统邮件接收地址：</strong></td>
      <td ><asp:TextBox ID="TextBox4" Width="290" runat="server" class="l_input" />
        </asp:TextBox>
        用于接收系统运行、商务等邮件，多个地址用逗号分隔。 </td>
    </tr>
  </table>
  <div class="clearbox"></div>
  <asp:Button ID="Button1" runat="server" Text="保存设置" OnClick="Button1_Click" class="C_input" />
</form>
</body>
</html>