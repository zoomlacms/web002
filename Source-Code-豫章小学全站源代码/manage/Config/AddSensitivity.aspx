<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_AddSensitivity, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>过滤敏感词汇</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt; 网站配置&gt;&gt;添加过滤敏感词汇</div>
  <table width="99%" cellspacing="1" cellpadding="0" class="border">
      <td class="spacingtitle" colspan="2" align="center"><asp:Label ID="Label1" runat="server" Text="添加敏感词汇"></asp:Label></td>
    <tr class="tdbg">
      <td class="tdbgleft"> 关键字 </td>
      <td><asp:TextBox ID="keyword" runat="server" CssClass="l_input" Width="185px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="关键字不能为空！" ControlToValidate="keyword"></asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft"> 状态 </td>
      <td><asp:CheckBox ID="istrue" runat="server" Checked="true" Text="启用" /></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbg" colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text=" 添 加 " CssClass="C_input" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text=" 返 回 " CssClass="C_input" onclick="Button2_Click" CausesValidation="false" /></td>
    </tr>
  </table>
</form>
</body>
</html>