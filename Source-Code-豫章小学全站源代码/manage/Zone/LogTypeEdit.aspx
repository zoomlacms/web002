<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_LogTypeEdit, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head id="Head1" runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div>
<div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>会员空间管理</span> &gt;&gt; <a href="GSManage.aspx">空间族群管理</a>  &gt;&gt; <a href="LogTypeManage.aspx">族群类型管理</a>  |  <a href="LogTypeAdd.aspx">[添加类型]</a>
	</div>
    <div class="clearbox"></div> 
<table width="100%" height="100" border="0" cellpadding="2" cellspacing="1" class="border">
  <tr class="tdbg">
    <td colspan="2" align="center"  class="spacingtitle" >族群类型修改</td>
  </tr>
  <tr class="tdbg">
    <td width="24%" align="center" class="tdbgleft">类型名称：</td>
    <td width="76%">&nbsp;<asp:TextBox ID="Nametxt" runat="server" MaxLength="15"></asp:TextBox>
        <span style="color: #ff0000">* </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nametxt"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
  </tr>
  <tr class="tdbg">
    <td align="center" class="tdbgleft">&nbsp;</td>
    <td>&nbsp;<asp:Button ID="addbtn" runat="server" Text="保  存" Width="84px" OnClick="addbtn_Click" /></td>
  </tr>
</table>
    </div>
</form>
</body>
</html>