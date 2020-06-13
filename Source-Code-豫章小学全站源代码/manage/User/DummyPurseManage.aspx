<%@ page language="C#" autoeventwireup="true" inherits="manage_User_DummyPurseManage, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>虚拟币管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;会员管理&gt;&gt;<a href='UserManage.aspx'>会员列表</a>&gt;&gt;会员虚拟币操作</div>
  <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="2" class="spacingtitle"><asp:Label ID="Lbl_t" runat="server" Text="会员虚拟币操作"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%" align="right"> 会员名：</td>
      <td ><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%" align="right"> 会员虚拟币：</td>
      <td ><asp:Label ID="lblExp" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%" align="right"> 虚拟币操作：</td>
      <td class="bqright"><asp:RadioButtonList ID="rblExp" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Value="1" Selected="True">加虚拟币</asp:ListItem>
          <asp:ListItem Value="2">减虚拟币</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%" align="right"> 虚拟币：</td>
      <td ><asp:TextBox ID="TxtScore" runat="server" class="l_input"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" ID="Rev_1" ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtScore" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%" align="right"> 备注：</td>
      <td ><asp:TextBox ID="TxtDetail" runat="server" Rows="10" TextMode="MultiLine" 
                Width="50%" class="l_input" Height="60px"></asp:TextBox></td>
    </tr>
    <tr class="tdbgbottom">
      <td colspan="2"><asp:HiddenField ID="Hdn_t" runat="server" />
        <asp:HiddenField ID="HdnUserID" runat="server" />
        <asp:Button ID="EBtnSubmit" Text="执 行" OnClick="EBtnSubmit_Click" runat="server" class="C_input" /></td>
    </tr>
  </table>
</form>
</body>
</html>