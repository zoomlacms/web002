<%@ page language="C#" autoeventwireup="true" inherits="manage_Flex_UserUpload, App_Web_vh0dja20" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html >
<head runat="server">
<title>上传图片</title>
<link href="../../App_Themes/AdminDefaultTheme/material.css" rel="stylesheet" type="text/css" />
<script src="../../JS/jquery-1.4.js" type="text/javascript"></script>
 <script type="text/javascript">
     function checkedImg() {
         var b = false;
         var str = $("#uploadImg").val();
         var begin = str.lastIndexOf('.');
         if (begin > -1) {
             str = str.substring(begin + 1, str.length);
             var arr = new Array("png", "jpg", "gif", "jpeg", "svg", "PNG", "JPG", "GIF", "JPEG", "SVG");
             for (var i = 0; i < arr.length; i++) {
                 if (arr[i] == str) {
                     b = true;
                     break;
                 }
             }
         }
         if (!b) {
             alert("只能上传 *.jpg，*.png，*.gif，*.jpeg，*.svg 格式的图片");
         }
         return b;
     }

     function closeWin() {
         alert(parent.window.location.href); 
         window.close();
     }
    </script>
</head>
<body style=" background:#e8f5ff;">
<form id="form1" runat="server">
    <div style=" margin-top:-10px; background:#e8f5ff;" >
        <input type="file" id="uploadImg" name="uploadImg" runat="server" />
        <asp:Button ID="btnUp" runat="server" OnClientClick="return checkedImg();"  onclick="Button1_Click" Text="上传" />
 </div>
</form>
</body>
</html>
