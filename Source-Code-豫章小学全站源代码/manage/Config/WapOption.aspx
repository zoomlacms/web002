<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_WapOption, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>WAP参数</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt;系统配置 &gt;&gt;Wap参数配置 </div>
  <table width="99%" cellspacing="1" cellpadding="0" class="border">
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200px; height: 23px;"><strong>Wap首页模板：</strong></td>
      <td><asp:TextBox ID="IndexTemp" runat="server"></asp:TextBox>
        <input type="button" value="选择模板"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('IndexTemp')+'&FilesDir=',650,480)"  class="button" /></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200px; height: 23px;"><strong>Wap栏目页模板：</strong></td>
      <td><asp:TextBox ID="ListTemp" runat="server"></asp:TextBox>
        <input type="button" value="选择模板"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ListTemp')+'&FilesDir=',650,480)"  class="button" /></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200px; height: 23px;"><strong>Wap内容页模板：</strong></td>
      <td><asp:TextBox ID="ContentTemp" runat="server"></asp:TextBox>
        <input type="button" value="选择模板"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ContentTemp')+'&FilesDir=',650,480)" class="button" /></td>
    </tr>
  </table>
  <br />
  <asp:Button ID="Button1" runat="server" Text="保存设置" OnClick="Button1_Click" />
  <br />
</form>
</body>
</html>