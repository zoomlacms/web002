<%@ page language="C#" autoeventwireup="true" inherits="Common_ShowFlash, App_Web_551hx03o" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>在线浏览Swf</title>
</head>
<body>
<form id="form1" runat="server">
  <div style="margin-left:80px">
    <embed  src='<%=swfurl%>' pluginspage="http://www.macromedia.com/shockwave/download/" type="application/x-shockwave-flash" width="800" height="800"></embed>
  </div>
</form>
</body>
</html>