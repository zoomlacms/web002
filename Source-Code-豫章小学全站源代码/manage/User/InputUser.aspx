<%@ page language="C#" autoeventwireup="true" inherits="manage_User_InputUser, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head >
<title>导入用户</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
<div class="r_navigation">后台管理&gt;&gt;用户管理&gt;&gt;会员管理&gt;&gt;<a href="InputUser.aspx">导入用户</a></div>
  <div class="border">
    <table width="100%" border="0" cellpadding="0" cellspacing="1">
      <tr>
        <td colspan="4" class="spacingtitle" align="center">会员导入</td>
      </tr>
      <tr class="tdbg">
        <td width="220" align="right" class="tdbgleft" style="width: 15%; height: 22px;"> 选择文件： </td>
        <td align="left" class="style3" colspan="3"><asp:FileUpload ID="FileUpload1" runat="server" Width="250px" /></td>
      </tr>
      <tr class="tdbg">
        <td width="220" align="right" class="tdbgleft" style="width: 15%; height: 22px;"> 初始密码： </td>
        <td align="left" class="style3" colspan="3"><asp:TextBox ID="userpwd" TextMode="Password" CssClass="l_input" 
                        runat="server" Width="172px"></asp:TextBox>
          默认为空 </td>
      </tr>
    </table>
    <table width="100%" border="0" class="tdbg" cellpadding="0" cellspacing="1">
      <tr class="tdbg">
        <td style="height: 21px" colspan="4" align="center"><asp:Button ID="Button1" runat="server" Text="导入" CssClass="C_input" onclick="Button1_Click" />
          &nbsp;&nbsp;
          <asp:Button ID="btnCancel" class="C_input" runat="server" Text="取　消" Width="70px" OnClientClick="parent.Dialog.close();return false;" TabIndex="13" /></td>
      </tr>
    </table>
  </div>
  状态： <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</form>
</body>
</html>