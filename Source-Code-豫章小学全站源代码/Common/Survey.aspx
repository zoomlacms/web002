<%@ page language="C#" autoeventwireup="true" inherits="Common_Survey, App_Web_s2bhlxup" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>问卷调查</title>
<link href="../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <table class="border" width="100%" cellpadding="2" cellspacing="1">
    <tr>
      <td class="tdbg" align="center"><asp:Literal ID="LitSurveyName" runat="server" Text=""></asp:Literal></td>
    </tr>
    <asp:Literal ID="ResultHtml" runat="server"></asp:Literal>
    <tr class="tdbgbottom">
     <td align="center"><asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
     <asp:HiddenField ID="HdnSID" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>