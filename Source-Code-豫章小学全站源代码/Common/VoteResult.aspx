<%@ page language="C#" autoeventwireup="true" inherits="Common_VoteResult, App_Web_s2bhlxup" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>投票结果</title>
<link href="../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <table class="border" width="100%" cellpadding="2" cellspacing="1">
    <tr>
      <td class="spacingtitle" colspan="3" align="center"><asp:Literal ID="LitSurveyName" runat="server" Text=""></asp:Literal></td>
    </tr>
    <asp:Literal ID="ResultHtml" runat="server"></asp:Literal>
    <tr class="tdbgbottom">
      <td colspan="3"><input name="Cancel" type="button" class="inputbutton" id="Cancel" value="取消" onclick="window.close();" /></td>
    </tr>
  </table>
</form>
</body>
</html>