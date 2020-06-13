<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Common.FileUpload, App_Web_krvwsitc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>上传文件</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.style1 { width: 249px; height: 11px; }
.style2 { width: 82px; height: 11px; }
.style3 { height: 11px; }
</style>
</head>
<body class="tdbg">
<form id="form1" runat="server" enctype="multipart/form-data">
  <table style="height: 100%; border: 0; width: 100%">
	<tr class="tdbg">
	  <td valign="top" class="style1"><asp:FileUpload ID="FupFile" runat="server" />
		<asp:Button ID="BtnUpload" runat="server" Text="上传" OnClick="BtnUpload_Click" /></td>
	  <td class="style2" id="show1" runat="server" visible="false"> 是否上传水印 </td>
	  <td class="style3" id="show2" runat="server" visible="false"><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
		  <asp:ListItem Value="1">是</asp:ListItem>
		  <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
		</asp:RadioButtonList></td>
	  <td class="style3"><asp:RequiredFieldValidator ID="ValFile" runat="server" ErrorMessage="请选择上传路径" ControlToValidate="FupFile"></asp:RequiredFieldValidator>
		<asp:Label ID="LblMessage" runat="server" ForeColor="red" Text=""></asp:Label></td>
	  <asp:HiddenField ID="HiddenField1" runat="server" />
	</tr>
  </table>
</form>
</body>
</html>