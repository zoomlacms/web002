<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_PreView, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title></title>
<script type="text/javascript" src="/JS/jquery.js"></script>
<style type="text/css">
*{margin:0; padding:0;}
</style>
</head>
<body onload="GetHeight()">
<div id="hideArea" style="display:none">
<div id="NodeID" runat="server"></div>
</div>
<div id="mainr">
<iframe id="ifr" src="<%=strPath %>" width="100%" height="100%" frameborder="0"></iframe>
</div>
</body>
</html>
<script type="text/javascript">
    function GetHeight() {
        //为iframe定义高度
        var ifrHeight = document.documentElement.clientHeight;
        $("#mainr").height(ifrHeight);
    }
</script>