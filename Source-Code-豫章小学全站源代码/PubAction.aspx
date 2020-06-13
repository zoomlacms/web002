<%@ page language="C#" autoeventwireup="true" inherits="PubAction, App_Web_m53mud2n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>互动模块</title>
<script src="/JS/ajaxrequest.js"></script>
<script>
    function ActionSec(obj, url) {
        //obj -1未登录,1为成功  url :要跳转的路径
        if (obj == -1) {
            alert("提交失败!");
        }
        if (obj == 1) {
            alert("提交成功!");
        }
        //alert(obj);
        window.location.href = url;
    }

</script>
</head>
<body>
<form id="form1" runat="server"></form>
</body>
</html>