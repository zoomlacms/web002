<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AddToSpecial, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>批量添加内容到专题</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
function SelectAll()
{
    for(var i=0;i<document.getElementById('ListSpecial').length;i++)
    {
        document.getElementById('ListSpecial').options[i].selected=true;
    }
}
function UnSelectAll()
{
    for(var i=0;i<document.getElementById('ListSpecial').length;i++)
    {
        document.getElementById('ListSpecial').options[i].selected=false;
    }
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 内容管理 &gt;&gt; 批量添加内容到专题</div>
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
	<tr align="center">
		<td colspan="2" class="spacingtitle">
			批量添加内容到专题
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft" style="width: 25%" align="left">
			<strong>内容ID：</strong>
		</td>
		<td class="bqright">
			<asp:TextBox ID="TxtContentID" class="l_input" runat="server" Width="298px" Enabled="false"></asp:TextBox>
		</td>
	</tr>
	<tr class="tdbg">
		<td class="tdbgleft" style="width: 25%" align="left">
			<strong>目标专题：</strong><br />
			<font color="red">提示：</font>可以按住“Shift”<br />
			或“Ctrl”键进行多个专题的选择
		</td>
		<td class="bqright">
			<asp:ListBox ID="ListSpecial" runat="server" Rows="10" Width="300px" SelectionMode="Multiple"></asp:ListBox>
			<br />
			<br />
			<input id="Button2" onclick="SelectAll()" type="button"class="C_input"  style="width:137px;"  value="  选定所有专题  " />&nbsp;
			<input id="Button3" onclick="UnSelectAll()" type="button" class="C_input" style="width:146px;"  value="取消选定所有专题" />
		</td>
	</tr>
	<tr class="tdbg">
		<td class="bqright" align="left" colspan="2">
			&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" class="C_input"  style="width:100px;"  Text="批量处理" OnClick="Button1_Click" />&nbsp;&nbsp;
			<input name="Cancel" type="button"  id="BtnCancel" class="C_input"  style="width:100px;"  value="取消" onclick="Redirect('ContentManage.aspx')" />
		</td>
	</tr>
</table>
</form>
</body>
</html>