<%@ page language="C#" autoeventwireup="true" inherits="manage_User_EditCus, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.radioBut { text-align:left; }
</style>
</head>
<body>
<form id="form1" runat="server">
  <div> <br />
    <br />
    <table cellpadding="2" cellspacing="1" border="0" width="400" class="border" align="center">
      <tr align="center" class="title">
        <td><strong>升级提示</strong></td>
      </tr>
      <tr class="tdbg">
        <td valign="top" height="100"><br />
          该客户已存在，请选择以下操作:
          <asp:RadioButtonList ID="rbSelect" runat="server" CssClass="radioBut">
            <asp:ListItem Value="1">系统自动改名升级</asp:ListItem>
            <asp:ListItem Value="2">覆盖旧有客户信息</asp:ListItem>
            <asp:ListItem Value="3">取消操作返回列表</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr align="center" class="tdbg">
        <td><asp:Button ID="btnTrue" runat="server" Text="确　定" class="C_input" Width="60px" onclick="btnTrue_Click" />
          <asp:Button ID="btnCan" runat="server" Text="取  消" class="C_input" Width="60px"  onclick="btnCan_Click"/></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>