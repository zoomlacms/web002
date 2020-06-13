<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_DataAssert_, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>表内容批处理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt;扩展功能&gt;&gt;数据维护&gt;&gt;表内容批处理</div>
  <div class="spacingtitle">表内容处理</div>
  <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200px"><strong>请选择数据库：</strong></td>
      <td><asp:DropDownList ID="DatabaseList" runat="server" Width="200px"  class="l_input" AutoPostBack="True" OnSelectedIndexChanged="TableDownList_SelectedIndexChanged" /></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200px;"><strong>主表：</strong></td>
      <td style="height: 22px"><asp:DropDownList ID="DbTableDownList" runat="server" Width="200px" class="l_input" AutoPostBack="True" OnSelectedIndexChanged="DBTableDownList_SelectedIndexChanged"/></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200;"><strong>输出字段：</strong></td>
      <td><asp:ListBox ID="DbFieldDownList" runat="server" Height="220px" Width="200px" class="l_input" SelectionMode="Multiple" /></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200;"><strong>将被替换内容：</strong></td>
      <td><asp:TextBox ID="TextBox1" runat="server" Width="200px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200;"><strong> 替换后的内容：</strong></td>
      <td><asp:TextBox ID="TextBox2" runat="server" Width="200px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200;" colspan="2"><asp:Button ID="Button1" runat="server" Text="批量替换" class="C_input"  onclick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="取消" class="C_input"  onclick="Button2_Click"/></td>
    </tr>
  </table>
</form>
</body>
</html>