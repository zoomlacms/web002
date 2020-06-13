<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.Shop.FileUpload, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>图片上传</title>
</head>
<body class="tdbg">
<form id="form1" runat="server">
<div>
<asp:FileUpload ID="fileupload" runat="server" Width="260px" /><asp:Button ID="uploadok" runat="server"  Text="上传" OnClick="uploadok_Click"/>
</div>
</form>
</body>
</html>