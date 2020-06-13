<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.FileUpload, App_Web_s2bhlxup" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>图片上传</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="tdbg">
<form id="form1" runat="server">
  <table class="tdbg" style="height: 100%; border: 0; width: 100%" runat="server" id="uppp">
    <tr class="tdbg">
      <td valign="top"><asp:FileUpload ID="fileupload" runat="server"/>
        <asp:Button ID="uploadok" runat="server" Text="上传" OnClick="uploadok_Click"/></td>
      <td valign="top" style="display:none"> 是否上传水印： </td>
      <td valign="top" style="display:none"><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
          <asp:ListItem  Value="1">是</asp:ListItem>
          <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
  </table>
</form>
</body>
</html>