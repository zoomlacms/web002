<%@ page language="C#" autoeventwireup="true" inherits="Common_OfficeToFlash, App_Web_551hx03o" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>Office转Swf</title>
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<table style="border-style: none; border-color:inherit; border-width: 0; height: 20%; width: 100%">
<tr class="tdbg">
  <td valign="top"><asp:FileUpload ID="FupFile" runat="server" />
	<asp:Button ID="BtnUpload" runat="server"  Text="上传" OnClick="BtnUpload_Click" />
	<asp:RequiredFieldValidator ID="ValFile" runat="server" ErrorMessage="请选择上传路径" ControlToValidate="FupFile"></asp:RequiredFieldValidator>
	<asp:Label  ID="LblMessage" runat="server" ForeColor="red" Text=""></asp:Label>
	<asp:HiddenField ID="HiddenNodeDir" runat="server" />
	<asp:HiddenField ID="hfUpLoadDir" runat="server" />
	<span onclick="if(parent.document.getElementById('txt_<%=ViewState["FieldName"] %>').value.split(',').length!=2){alert('flash路径错误！');return false;} window.open('ShowFlash.aspx?path='+parent.document.getElementById('txt_<%=ViewState["FieldName"] %>').value.split(',')[1],'');"  onmouseover="this.style.cursor='pointer';"">在线浏览</span></td>
</tr>
</table>
</form>
</body>
</html>