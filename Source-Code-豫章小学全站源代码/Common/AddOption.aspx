<%@ page language="C#" autoeventwireup="true" inherits="Common_AddOption, App_Web_551hx03o" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加分类</title>
<link href="../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr class="tdbg">
      <td colspan="2" align="center"><asp:Literal ID="Literal1" runat="server" Text="添加选项"></asp:Literal></td>
    </tr>
    <tr class="tdbg">
      <td width="22%">选项名称：</td>
      <td width="78%"><asp:TextBox ID="classname" runat="server" Width="196px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="选项名称不能为空!" ControlToValidate="classname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg">
      <td>选项值：</td>
      <td><asp:TextBox ID="classvalue" runat="server" Width="196px"></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="返回" onclick="Button2_Click" CausesValidation="false" /></td>
    </tr>
  </table>
</form>
</body>
</html>