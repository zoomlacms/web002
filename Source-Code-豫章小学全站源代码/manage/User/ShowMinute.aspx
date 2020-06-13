<%@ page language="C#" autoeventwireup="true" inherits="manage_User_ShowMinute, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>详细信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;企业办公&gt;&gt;网页聊天系统&gt;&gt;详细信息</div>
<div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
      <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;"> 发送者:
          <asp:Label ID="label1" Text="" runat="server"/></td>
      </tr>
      <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;"> 接收者:
          <asp:Label ID="label2" Text="" runat="server"/></td>
      </tr>
      <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;"> 内&nbsp;&nbsp;容:
          <asp:Label ID="label3" Text="" runat="server"/></td>
      </tr>
      <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;"> 时&nbsp;&nbsp;间:
          <asp:Label ID="label4" Text="" runat="server"/></td>
      </tr>
      <tr>
        <td align="center"><input ID="Button" type="button" runat="server" value="返回" class="C_input" onclick="javascript:window.location.href='MsgEx.aspx'" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>