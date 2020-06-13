<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.AddRole, App_Web_own0w3ym" title="添加角色" enableeventvalidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加角色</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"> <span>后台管理</span>&gt;&gt;<span>用户管理</span> &gt;&gt; <a href="RoleManage.aspx">角色管理</a>&gt;&gt;<asp:Literal ID="Literal1" Text="添加角色"  runat="Server"></asp:Literal></div>
  <table width="100%" cellspacing="1" cellpadding="0" class="border" align="center">
    <tr>
      <td align="center" class="spacingtitle" colspan="2" style="height: 22px"><asp:Literal ID="LblTitle" Text="添加角色"  runat="Server"></asp:Literal></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right" style="width: 100px" valign="middle"> 角色名：</td>
      <td style="width: 100px"><asp:TextBox ID="txbRoleName" runat="server" class="l_input"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbRoleName"
                    Display="Dynamic" ErrorMessage="角色名不能为空">*</asp:RequiredFieldValidator>
        <asp:CustomValidator ID="cvRole" runat="server" ControlToValidate="txbRoleName" Display="Dynamic" ErrorMessage="角色名已经存在" OnServerValidate="CustomValidator1_ServerValidate"  Visible="False">*</asp:CustomValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="right" class="tdbgleft" style="width: 100px; height: 20px" valign="middle">角色描述：</td>
      <td align="left" style="width: 100px; height: 20px" valign="middle"><asp:TextBox ID="tbRoleInfo" class="x_input" runat="server" Height="72px" TextMode="MultiLine" Width="228px"></asp:TextBox></td>
    </tr>
  </table>
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
  <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
  &nbsp; &nbsp;
  <asp:Button ID="btnSave" runat="server" Text="保存角色" Width="95px" OnClick="Button2_Click" class="C_input" />
  &nbsp; &nbsp; &nbsp;&nbsp;
  <asp:Button ID="btnBack" class="C_input"  runat="server" Text="返回角色管理" Width="100px" OnClientClick="location.href='RoleManage.aspx';return false;" />
</form>
</body>
</html>