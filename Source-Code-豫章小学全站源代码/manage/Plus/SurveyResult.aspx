<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.SurveyResult, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>问卷投票结果</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt;<a href="SurveyManage.aspx">问卷投票管理</a>&gt;&gt;问卷投票结果</div>
  <table class="border" width="100%" cellpadding="2" cellspacing="1">
    <tr>
      <td class="spacingtitle" colspan="3" align="center"><asp:Literal ID="LitSurveyName" runat="server" Text=""></asp:Literal></td>
    </tr>
    <asp:Literal ID="ResultHtml" runat="server"></asp:Literal>
    <tr class="tdbgbottom">
      <td colspan="3"><input name="print" type="button"  id="Button1" class="C_input"  value="打印" onclick="window.print();" />
        &nbsp;&nbsp;
        <input name="Cancel" type="button" id="Cancel" class="C_input"  value="取消" onclick="window.location.href='SurveyManage.aspx';" /></td>
    </tr>
  </table>
</form>
</body>
</html>