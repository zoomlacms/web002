<%@ page language="C#" autoeventwireup="true" inherits="Common_Vote, App_Web_551hx03o" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>投票调查</title>
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
      <td colspan="3"><asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click"  />
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="查看结果" OnClick="Button2_Click" />
        <asp:HiddenField ID="HdnSID" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>