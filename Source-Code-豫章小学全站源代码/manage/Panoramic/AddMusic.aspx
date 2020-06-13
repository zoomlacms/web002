<%@ page language="C#" autoeventwireup="true" inherits="manage_Panoramic_AddMusic, App_Web_c4rklp3o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加音乐</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation"> 后台管理  &gt;&gt;扩展功能 &gt;&gt;<a href="PanoramicManage.aspx">全景管理</a> &gt;&gt; 音乐库管理 </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1">
      <tr>
        <td colspan="2" class="spacingtitle" align="center"><asp:Label ID="TitleLabel" runat="server" Text="添加音乐"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width:300px"> 音乐名称: </td>
        <td><asp:TextBox ID="musicname" runat="server" class="l_input"></asp:TextBox>
          输入音乐名称
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="musicname" ErrorMessage="请输入音乐名称"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 音乐地址: </td>
        <td><asp:TextBox ID="musicurl" runat="server" class="l_input" Width="356px"></asp:TextBox>
          请添加网络地址。如:http://网址
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="musicurl" ErrorMessage="请输入音乐地址"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 是否启用: </td>
        <td><asp:CheckBox ID="IsTrue" runat="server" Text="启用" Checked="true" />
          (停用则全景中无法选择此音乐) </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbg" align="center" colspan="2"><asp:Button ID="Button1" runat="server" Text="添加" CssClass="C_input" onclick="Button1_Click" />
          &nbsp;
          <asp:Button ID="Button2" runat="server" Text="取消" CssClass="C_input" CausesValidation="false" onclick="Button2_Click" /></td>
      </tr>
    </table>
</form>
</body>
</html>