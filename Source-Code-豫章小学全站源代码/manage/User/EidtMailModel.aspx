<%@ page language="C#" autoeventwireup="true" inherits="manage_User_EidtMailModel, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;邮件订阅&gt;&gt;编辑邮件模板</div>
<div>
<table width="100%" height="227" border="0" cellpadding="2" cellspacing="1" class="border">
  <tr class="tdbg">
    <td colspan="2" align="center" class="spacingtitle" > 编辑邮件模板</td>
  </tr>
  <tr style="width: 100%" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td style="white-space: normal; width: 30%;" class="tdbgleft" align="right"><strong>邮件标题：</strong></td>
    <td><asp:DropDownList ID="DropDownList1" runat="server"> </asp:DropDownList></td>
  </tr>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td style="white-space: normal; width: 30%; height: 69px;" class="tdbgleft" align="right"><strong>邮件内容：<br />
      (请在内容中使用<br />
      {UserName},{Url}<br />
      两个关键字符)</strong></td>
    <td style="height: 24px; width: 592px;"><textarea cols="80" id="Procontent" width="580px" height="200px" name="Procontent" rows="10" runat="server"></textarea>
      <script id="headscript" type="text/javascript">
		//<![CDATA[
		CKEDITOR.replace('Procontent',
		{
			skin: 'v2',
			enterMode: 2,
			shiftEnterMode: 2,
			toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
		});
		//]]>
	</script></td>
  </tr>
  <tr style="width: 100%" class="tdbg">
    <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text="提  交"  class="C_input"/></td>
  </tr>
</table>
</div>
</form>
</body>
</html>