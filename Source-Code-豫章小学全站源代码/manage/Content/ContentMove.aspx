<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ContentMove, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>内容批量移动</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;内容管理&gt;&gt; 内容批量移动</div>
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
	<tr align="center">
		<td colspan="2" class="spacingtitle">
			批量移动内容到其他节点
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft" style="width: 20%" align="right">
			内容ID：
		</td>
		<td class="bqright">
			<asp:TextBox ID="TxtContentID" class="l_input" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtContentID" ErrorMessage="内容ID不能为空"></asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr class="tdbg">
		<td class="tdbgleft" style="width: 20%" align="right">
			目标节点：
		</td>
		<td class="bqright">
			<asp:DropDownList ID="DDLNode" runat="server">
			</asp:DropDownList>
		</td>
	</tr>
	<tr class="tdbg">
		<td class="bqright" align="left" colspan="2">
			&nbsp;&nbsp;<asp:Button ID="Button1" class="C_input" runat="server" Text="批量处理" OnClick="Button1_Click" />&nbsp;&nbsp;
			<input name="Cancel" type="button" class="C_input" id="BtnCancel" value="取消" onclick="Redirect('ContentManage.aspx')" />
		</td>
	</tr>
</table>
</form>
</body>
</html>