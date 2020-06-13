<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.UserApi, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>Api接口配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="UserManage.aspx">会员管理</a> &gt;&gt;Api整合接口配置</div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
    <tr>
      <td class="spacingtitle" align="center" colspan="2" valign="middle"　style="height: 23px"> Discuz论坛Api接口整合配置</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>是否启用Discuz!NT论坛：</strong></td>
      <td ><asp:RadioButtonList ID="RBLDZ" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="False">否</asp:ListItem>
          <asp:ListItem Value="True">是</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>是否启用Discuz!论坛：</strong></td>
      <td ><asp:RadioButtonList ID="Discuz" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="False">否</asp:ListItem>
          <asp:ListItem Value="True">是</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="title" align="center" style="height: 23px" valign="middle" colspan="2"><strong>DPO(Dvbbs、PowerEasy、Oblog)接口整合信息配置</strong></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>是否启用接口：</strong></td>
      <td ><asp:RadioButtonList ID="RBLEnable" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="False">否</asp:ListItem>
          <asp:ListItem Value="True">是</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>接口ID：</strong></td>
      <td ><asp:Label ID="LblAppID" runat="server" Text="other"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>系统键值：</strong></td>
      <td ><asp:TextBox ID="TxtSysKey" class="l_input" runat="server" Width="150px"></asp:TextBox>
        <strong>&nbsp; </strong></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>接口地址：</strong></td>
      <td ><asp:TextBox ID="TxtUrls" class="l_input" runat="server" Width="50%"></asp:TextBox>
        <strong>&nbsp;
        将接口地址用"|"隔开，地址必须以http://开头</strong></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" colspan="2" style="height: 23px" align="center"><asp:Button ID="btnSubmit" class="C_input"  runat="server" OnClick="btnSubmit_Click" Text="保存" />
        &nbsp;
        <asp:Button ID="btnCancel" class="C_input"  runat="server" Text="取 消" OnClick="btnCancel_Click" /></td>
    </tr>
  </table>
</form>
</body>
</html>