<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_AddPageStyle, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加黄页样式</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; <span></span> 企业黄页 &gt;&gt; <span><a href="PageStyle.aspx">黄页样式管理</a> &gt;&gt; <span><a href="AddPageStyle.aspx"></a>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span></span></div>
<div class="clearbox"></div>    

<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody1">

    <tr class="tdbg">
        <td colspan="2" align="center" class="title">
            <span>添加黄页样式</span></td>
    </tr>
    <tr class="tdbg" id="1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="26%" height="24" align="left" class="tdbgleft"><strong>样式名称：</strong><br />数字越大排列越前</td>
      <td width="74%" align="left">
          <asp:TextBox ID="styleName" class="l_input" runat="server" Width="259px"></asp:TextBox>
          <font color=red>*
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="styleName"
                  ErrorMessage="样式名称不能为空!"></asp:RequiredFieldValidator></font></td>
    </tr>
    <tr class="tdbg" id="Tr2" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
      <td height="24" align="left" class="tdbgleft"><strong>启用状态</strong></td>
      <td align="left">
          <asp:RadioButtonList ID="isTrue" runat="server" RepeatDirection="Horizontal" Width="109px">
              <asp:ListItem Selected="True" Value="1">启用</asp:ListItem>
              <asp:ListItem Value="0">停用</asp:ListItem>
          </asp:RadioButtonList></td>
    </tr>
            <tr class="tdbg" id="Tr1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" align="left" class="tdbgleft"><strong>默认样式</strong></td>
      <td align="left">
          <asp:RadioButtonList ID="IsDefault" runat="server" RepeatDirection="Horizontal" Width="190px">
              <asp:ListItem Value="1">设为默认</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">取消默认</asp:ListItem>
          </asp:RadioButtonList></td>
    </tr>
      <tr class="tdbg" id="Tr3" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" align="left" class="tdbgleft">
          <strong>排列顺序</strong></td>
      <td align="left"><asp:TextBox ID="orderid" class="l_input" runat="server" Width="247px">0</asp:TextBox>
          </td>
    </tr>


    <tr class="tdbg" id="Tr11" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" align="left" class="tdbgleft"><strong>添加时间</strong></td>
      <td align="left">
          <asp:TextBox ID="addtime"  class="l_input" runat="server" Width="165px" onclick="calendar();"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" id="Tr18">
      <td height="24" colspan="2" align="center">
          <asp:HiddenField ID="lblid" runat="server" />
          <asp:Button ID="Button1" class="C_input"  runat="server" Text="添加样式" OnClick="Button1_Click" />
          <asp:Button ID="Button2" class="C_input"  runat="server" Text="取消添加" OnClick="Button2_Click" /></td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>