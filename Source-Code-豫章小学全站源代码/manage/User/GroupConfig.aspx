<%@ page language="C#" autoeventwireup="true" inherits="manage_User_GroupConfig, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员组设置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="GroupManage.aspx">会员组管理</a>&gt;&gt;会员组设置</div>
  <table class="border" width="100%" cellpadding="2" cellspacing="1">
    <tr>
      <td class="spacingtitle" colspan="2" align="center"><asp:Literal ID="LTitle" runat="server" Text="会员组设置"></asp:Literal></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 237px"><strong>会员组名称：</strong></td>
      <td><asp:Label ID="GroupName" runat="server" Text=""></asp:Label>
        <asp:HiddenField ID="Groupid" runat="server" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 237px"><strong>会员组描述：</strong></td>
      <td><asp:Label ID="GroupInfo" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 237px"><strong>选择用户模型：</strong></td>
      <td><asp:RadioButtonList ID="GroupModel" runat="server"></asp:RadioButtonList>
        <!--单选用这个-->
        <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
        <!--多选用这个--></td>
    </tr>
    <tr class="tdbgbottom">
      <td colspan="2">&nbsp;
        <asp:Button ID="EBtnSubmit" Text="保存" runat="server" OnClick="EBtnSubmit_Click" class="C_input" />
        &nbsp;&nbsp;
        <input name="Cancel" type="button" class="C_input" id="Cancel" value="取消" onclick="javascript:location.href='GroupManage.aspx'" /></td>
    </tr>
  </table>
</form>
</body>
</html>