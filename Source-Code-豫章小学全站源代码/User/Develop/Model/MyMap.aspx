<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_Model_MyMap, App_Web_thjaqyj3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
<title>我的地图</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="/user/Develop/Css/global.css" />
<script src="<%=mt %>" type="text/javascript"></script>
<%--调用google API读取地图--%>
<script type="text/javascript" src="http://fw.qq.com/ipaddress" charset="gb2312"></script>
<%--调用QQAPI获取用户地址--%>
<script src="../../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script src="../JS/GoogleMaps.js" type="text/javascript"></script>
</head>
<body onload="initialize(<%=uid %>,<%=flag %>);setheight();" onunload="GUnload()" id="aaa">
<form id="form1" runat="server">
<div class="us_topinfo" style="display:none; width: 98%">
    您现在的位置：
    <a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;
    <a title="会员中心" href="/User/" target="_parent">会员中心</a> &gt;&gt;我的地图
</div>
<div style="height:20px"></div>
<div class="urlmain" style="height: 800px;">
    <div style="float: left; width: 150px; height: 20px; line-height: 20px; border: solid 1px #000; border-bottom: none; text-align: center;">在线地图</div>
    <div style="float: left; width: 848px; height: 20px; border-bottom: solid 1px #000;"></div>
    <div style="clear: both;"></div>
    <div style="width: 100%; height: 100%; border: solid 1px #000; border-top:none;">
        <div style="height:40px;"></div>
        <div id="map" style="margin: auto; width: 80%; height: 500px; border: solid 1px #ccc;"></div>
        <div style="margin: auto; margin-top: 20px; width: 90%; height: 50px; line-height: 50px; text-align: center;">
            <a href="InsetMap.aspx" class="C_map">创建或更新地图</a>
        </div>
        <div style="margin: auto; margin-top: 20px; width: 80%; height: 50px; line-height: 20px;">调用方法：
            <asp:TextBox runat="server" ID="txtbord" Rows="5" TextMode="MultiLine" CssClass="ifrmap"></asp:TextBox>
            <p class="tips">提示：将代码复制到使用地图的区域或在设计平台调用地图标签</p>
        </div>
    </div>
</div>
<div style="height:80px;"></div>
</form>
</body>
</html>