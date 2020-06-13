<%@ page language="C#" autoeventwireup="true" inherits="_3D_fileupload, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>Upload Pic</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body class="tdbg">
<form id="form1" runat="server">
    <div class="tdbg">
    <asp:FileUpload ID="fileupload" runat="server" Width="260px" /><asp:Button ID="uploadok" runat="server" Text="UpLoad" OnClick="uploadok_Click" />
    </div>
</form>
</body>
</html>