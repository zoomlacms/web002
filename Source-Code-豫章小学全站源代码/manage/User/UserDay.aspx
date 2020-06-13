<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserDay, App_Web_tskucmgh" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>节日提醒</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script src="/JS/pacalendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; <a href="UserManage.aspx">用户管理</a> &gt;&gt; 节日提醒</div>
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
    <tr class="tdbg">
      <td align="center" class="spacingtitle" colspan="2">信息统计 </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="200px">短信余额</td>
      <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr class="tdbg">
      <td class="style1">发送次数 </td>
      <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    </tr>
  </table>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg">
        <td align="center" class="spacingtitle" colspan="2">节日提醒 </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="200px"> 选择日期 </td>
        <td><asp:TextBox ID="SendDate" CssClass="l_input" runat="server" Width="181px" onclick="calendar('SendDate')"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="SendDate" Display="Dynamic" ErrorMessage="日期不能为空！"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ControlToValidate="SendDate" ErrorMessage="日期格式不正确！" ValidationExpression="(19|20)[0-9]{2}[-]([1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg">
        <td class="style1">发送条件</td>
        <td><asp:CheckBoxList ID="SendDay" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="0" Text="今天" Selected="True"></asp:ListItem>
            <asp:ListItem Value="1" Text="明天" Selected="True"></asp:ListItem>
          </asp:CheckBoxList></td>
      </tr>
      <tr class="tdbg">
        <td class="style1">发送目标</td>
        <td><asp:CheckBoxList ID="Sendto" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="0" Text="邮箱" Selected="True"></asp:ListItem>
            <asp:ListItem Value="1" Text="手机短信" Selected="True"></asp:ListItem>
          </asp:CheckBoxList></td>
      </tr>
      <tr class="tdbg">
        <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text="发送" CssClass="C_input"  onclick="Button1_Click" />
          <asp:Button ID="Button2" runat="server" Text="取消" CssClass="C_input" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>