<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Common.FileUpload, App_Web_yxogs14x" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>上传文件</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body >
<form id="form1" runat="server" enctype="multipart/form-data">
  <div  style="width: 249px;">
    <asp:FileUpload ID="FupFile" runat="server" />
    <asp:Button ID="BtnUpload" runat="server"  Text="上传" OnClick="BtnUpload_Click" />
    <asp:RequiredFieldValidator ID="ValFile" runat="server"  ErrorMessage="请选择上传路径" ControlToValidate="FupFile"></asp:RequiredFieldValidator>
    <asp:Label ID="LblMessage" runat="server" ForeColor="red" Text=""></asp:Label>
    <asp:HiddenField ID="HiddenField1" runat="server" />
  </div>
</form>
</body>
</html>