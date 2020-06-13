<%@ page language="C#" autoeventwireup="true" inherits="Plugins_Map, App_Web_y3f5bxz0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head>
<title>地图标注-拖动可创建新标注</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="/user/Develop/Css/global.css" />
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=" type="text/javascript"></script>
<script type="text/javascript" src="http://fw.qq.com/ipaddress" charset="gb2312"></script> <%--调用QQAPI获取用户地址--%>
<script src="/JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script src="../JS/GoogleMap.js" type="text/javascript"></script>
</head>
<body onload="ShowMap(<%=uid %>,'',<%=mid %>);setheight();" onunload="GUnload()">
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
