<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.AddOn.EditJSTemplate, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>编辑广告JS模板</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/Main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="JSTemplate.aspx">广告JS模板管理</a>&gt;&gt; 广告JS模板编辑</div>
  <div class="clearbox"></div>
  <table width="100%" class="border" border="0" cellpadding="2" cellspacing="1">
    <tr align="center">
      <td class="spacingtitle"><b>修改模板内容</b></td>
    </tr>
    <tr class="tdbg">
      <td style="height: 350px" align="center"><asp:TextBox ID="TxtADTemplate" runat="server" Height="326px" TextMode="MultiLine" Width="582px"></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td style="height: 50px" align="center"><asp:Button ID="EBtnSaverTemplate" class="C_input"  runat="server" Text="保存修改结果" OnClick="EBtnSaverTemplate_Click" />
        &nbsp;&nbsp; </td>
    </tr>
  </table>
  <asp:HiddenField ID="HdnZoneType" runat="server" />
</form>
</body>
</html>