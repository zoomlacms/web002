<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_Ationcreate, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>默认生成配置</title>
<link rel="Stylesheet" href="../Style/style.css" type="text/css" />
<link rel="Stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="myForm" runat="server">
  <div class="column">
    <div class="columntitle"> 当前位置：功能导航 >> 默认生成配置 </div>
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr class="tdbg">
        <td style="width: 200px;" align="right"><strong>生成首页扩展名：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButtonList ID="IndexEx" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
            <asp:ListItem Value="1">.htm</asp:ListItem>
            <asp:ListItem Value="2">.shtml</asp:ListItem>
            <asp:ListItem Value="3">.aspx</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 200px; height: 23px;"><strong>生成静态目录：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="txtCatalog" runat="server"></asp:TextBox>
          目录名前后不要加斜杠"/" </td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 200px; height: 23px;"><strong>网站首页模板：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox1')+'&nid=<%=Request.QueryString["nid"] %>&FilesDir=',650,480)" class="button" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" ID="Submit" Text="保 存" runat="server" onclick="Submit_Click" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>