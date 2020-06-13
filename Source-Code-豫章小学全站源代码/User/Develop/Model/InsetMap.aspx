<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_Model_InsetMap, App_Web_thjaqyj3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
<body onunload="GUnload()" onload="ShowMap(<%=uid %>,'');">
<form id="form1" runat="server">
<div class="us_topinfo" style="display:none; width: 98%;">
    您现在的位置：<a title="网站首页" href="/" target="_blank">
    <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; 
    <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; 
    <a title="在线地图" href="MyMap.aspx">在线地图</a> &gt;&gt; 编辑与更新地图
</div>
<div style="height:20px"></div>
<div class="urlmain" style="height: 800px;">
<div style="float:left; width:150px; height:20px; line-height:20px; border:solid 1px #000; border-bottom:none; text-align:center;">编辑与更新地图</div>
<div style="float:left; width:848px; height:20px; border-bottom:solid 1px #000;"></div>
<div style="clear:both;"></div>
<div style="width:100%; height:100%; border:1px solid #000; border-top:none;">
    <div style="height:20px;"></div>
	<div style="margin: auto; width: 80%; height: 30px; line-height: 30px; text-align: left;">
        地区选择：<input value="放大" id="maxmap" type="button" /><input id="minmap" type="button" value="缩小" />
        <asp:DropDownList runat="server" ID="drop"></asp:DropDownList>
        <asp:DropDownList runat="server" ID="drop1">
            <asp:ListItem Value="" Text="请选择"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div id="map" class="Mymap"></div>
    <br />
    <p class="tips">提示：鼠标在地图区拖动可以创建您的标注</p>
    <div style="margin: auto; margin-top: 20px; width: 90%; height: 50px; line-height: 50px; text-align: center;">
        <input type="button" id="Bbtn" value="保存地图" />
        <input type="button" id="Button1" value="返回我的地图" onclick="javascript: window.location.href='MyMap.aspx';" />
    </div>
</div>
<div style="height:40px;"></div>
</div>
<input type="hidden" id="hlngx" />
<input type="hidden" id="hlngy" />
<input type="hidden" id="hlngz" />
</form>
</body>
</html>
<script type="text/javascript"> 
$("#drop").change(function () {
    ShowMap(<%=uid %>,$("#drop").val());
        $.get('../ashx/GoogleMaps.ashx?mt=' + new Date().getTime() + "&v2=xml&Xname=" + escape($("#drop").val()), function (data) {
            var tr=data.split(',');
            var gm;
            for(var i=0;i<tr.length;i++)
            {
                gm +="<option value=\""+tr[i]+"\" >"+tr[i]+"</option>";
            }
            $("#drop1").html(gm);
        });
});
    $("#drop1").change(function () {
        if($("#drop1").val().replace(" ","").length>0)
        {
        ShowMap(<%=uid %>,$("#drop1").val());  
        }
    });
</script>