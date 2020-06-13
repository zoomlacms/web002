<%@ page language="C#" autoeventwireup="true" inherits="manage_User_AddPointGroup, App_Web_tskucmgh" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加积分等级</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; <a href="UserManage.aspx">会员管理</a> &gt;&gt;<a href="PointGroup.aspx">积分等级管理</a> &gt;&gt;<asp:Literal ID="LNav" runat="server" Text="添加积分等级"></asp:Literal></div>
  <table width="100%" cellpadding="2" cellspacing="1" class="border">
    <tr>
      <td class="spacingtitle" colspan="2" align="center"><asp:Literal ID="LTitle" runat="server" Text="添加积分等级"></asp:Literal></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 35%"><strong>积分等级：</strong></td>
      <td><asp:TextBox class="l_input" ID="txtPointGroup" runat="server" Width="156" MaxLength="200" />
        <font color="red">*</font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPointGroup">积分等级不能为空</asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>积分值：</strong></td>
      <td><asp:TextBox class="l_input" ID="txtPoint" runat="server">0</asp:TextBox>
        (用户多少积分可升级为此等级)
        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="请输入有效数据！" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"  ControlToValidate="txtPoint"></asp:CompareValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>备注：</strong></td>
      <td><asp:TextBox class="x_input" ID="TxtDescription" runat="server" TextMode="MultiLine" Width="372px" Height="61px" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>等级图片：</strong></td>
      <td><asp:TextBox ID="imgUrl" runat='server' class="l_input"></asp:TextBox>
        <iframe id="bigimgs" style="top: 2px" src="/manage/Shop/FileUpload.aspx?menu=imgUrl" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></td>
    </tr>
  </table>
  <div class="clearbox"> </div>
  <table width="100%" cellpadding="2" cellspacing="1" class="border">
    <tr class="tdbgbottom">
      <td colspan="2"><asp:HiddenField ID="HdnGroupID" runat="server" />
        <asp:Button ID="EBtnSubmit" Text="保存设置" OnClick="EBtnSubmit_Click" runat="server" class="C_input" />
        &nbsp;&nbsp;
        <input name="Cancel" type="button" class="C_input" id="Cancel" value="返回列表" onclick="location.href='PointGroup.aspx'" /></td>
    </tr>
  </table>
</form>
</body>
</html>