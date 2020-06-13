<%@ page language="C#" autoeventwireup="true" inherits="manage_Panoramic_Addcer, App_Web_c4rklp3o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>全景授权</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 扩展功能&gt;&gt;<a href="PanoramicManage.aspx">全景管理</a>&gt;&gt;<a href="Managecer.aspx">授权管理</a><&gt;&gt;添加授权</div>
    <div>
      <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
        <tr>
          <td colspan="2" class="spacingtitle" align="center"><asp:Label ID="TitleLabel" runat="server" Text="添加授权"></asp:Label></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" align="right" style="width:300px"> 网站域名: </td>
          <td><asp:TextBox ID="domain" runat="server" class="l_input" Width="242px"></asp:TextBox>
            &nbsp;前面请不要加http:// 如：www.zoomla.cn
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="domain" ErrorMessage="网站域名不允许为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" align="right"> 授权状态: </td>
          <td><asp:RadioButtonList ID="carstart" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Selected="True" Value="none">试用</asp:ListItem>
              <asp:ListItem Value="true">通过授权</asp:ListItem>
              <asp:ListItem Value="false">未通过授权</asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbg" align="center" colspan="2"><asp:Button ID="Button1" runat="server" Text="添加" CssClass="C_input" onclick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="取消" CssClass="C_input" CausesValidation="false" 	onclick="Button2_Click" /></td>
        </tr>
      </table>
  </div>
</form>
</body>
</html>