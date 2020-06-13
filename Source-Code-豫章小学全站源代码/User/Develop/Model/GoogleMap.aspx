<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_Model_GoogleMap, App_Web_thjaqyj3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head>
<title>地图标注-拖动可创建新标注</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="/user/Develop/Css/global.css" />
<script src="<%=mt %>" type="text/javascript"></script><%--调用google API读取地图--%>
<script type="text/javascript" src="http://fw.qq.com/ipaddress" charset="gb2312"></script> <%--调用QQAPI获取用户地址--%>
<script src="../../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script src="../JS/GoogleMaps.js" type="text/javascript"></script>
</head>
<body onload="initialize(<%=uid %>,<%=flag %>);setheight();" onunload="GUnload()" id="aaa">
<div id="map">
</div>
</body>
</html>
<script type="text/javascript">
    function setheight() {
        document.getElementById("map").style.height = (document.documentElement.clientHeight - 20) + "px";
        document.getElementById("map").style.height = (document.documentElement.clientwidth - 300) + "px";
    }
</script>