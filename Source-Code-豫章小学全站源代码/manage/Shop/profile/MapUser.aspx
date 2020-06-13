<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_ShenFeng_MapUser, App_Web_j5qlofg5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>地图导航</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="spacingtitle">
<asp:Label ID="Lbl_t" runat="server" Text="">会员地图管理</asp:Label>
    </div>
<div>
<img src="map.jpg" border="0" usemap="#Map">
<map name="Map">
  <area shape="rect" coords="91,156,132,181" href="../../User/UserManage.aspx?uid=新疆区" title="新疆区">
  <area shape="poly" coords="235,154,230,166,213,171,203,186,212,199,237,204,261,207,281,219,296,242,292,257,282,266,294,274,308,273,317,278,329,271,336,253,301,222,301,217,303,206,278,205,265,194,267,184,256,183,246,176,246,160,239,157,236,155" href="../../User/UserManage.aspx?uid=甘肃省" title="甘肃省">
  <area shape="rect" coords="190,229,246,256" href="../../User/UserManage.aspx?uid=青海省" title="青海省">
  <area shape="rect" coords="104,283,157,315" href="../../User/UserManage.aspx?uid=西藏区" title="西藏区">
  <area shape="rect" coords="404,389,444,411" href="../../User/UserManage.aspx?uid=广东省" title="广东省">
  <area shape="rect" coords="367,333,416,360" href="../../User/UserManage.aspx?uid=湖南省" title="湖南省">
  <area shape="rect" coords="424,341,450,361" href="../../User/UserManage.aspx?uid=江西省" title="江西省">
  <area shape="rect" coords="453,363,483,380" href="../../User/UserManage.aspx?uid=福建省" title="福建省">
  <area shape="rect" coords="466,319,503,336" href="../../User/UserManage.aspx?uid=浙江省" title="浙江省">
  <area shape="rect" coords="270,304,318,327" href="../../User/UserManage.aspx?uid=四川省" title="四川省">
  <area shape="rect" coords="254,376,297,408" href="../../User/UserManage.aspx?uid=云南省" title="云南省">
  <area shape="rect" coords="316,357,359,377" href="../../User/UserManage.aspx?uid=贵州省" title= "贵州省">
  <area shape="rect" coords="338,397,385,422" href="../../User/UserManage.aspx?uid=广西区" title="广西区">
  <area shape="rect" coords="378,293,425,317" href="../../User/UserManage.aspx?uid=湖北省" title="湖北省">
  <area shape="rect" coords="333,298,360,333" href="../../User/UserManage.aspx?uid=重庆省" title="重庆省">
  <area shape="rect" coords="387,260,429,284" href="../../User/UserManage.aspx?uid=河南省" title="河南省">
  <area shape="rect" coords="440,289,469,311" href="../../User/UserManage.aspx?uid=安徽省" title="安徽省">
  <area shape="rect" coords="470,263,492,304" href="../../User/UserManage.aspx?uid=江苏省" title="江苏省">
  <area shape="rect" coords="501,293,535,316" href="../../User/UserManage.aspx?uid=上海市" title="上海市">
  <area shape="rect" coords="349,228,375,278" href="../../User/UserManage.aspx?uid=陕西省" title="陕西省">
  <area shape="rect" coords="322,205,345,247" href="../../User/UserManage.aspx?uid=宁夏区" title="宁夏区">
  <area shape="rect" coords="377,216,411,242" href="../../User/UserManage.aspx?uid=山西省" title="山西省">
  <area shape="rect" coords="411,195,430,228" href="../../User/UserManage.aspx?uid=河北省" title="河北省">
  <area shape="rect" coords="438,220,467,242" href="../../User/UserManage.aspx?uid=山东省" title="山东省">
  <area shape="rect" coords="441,192,474,212" href="../../User/UserManage.aspx?uid=天津市" title="天津市"> 
  <area shape="rect" coords="392,161,433,185" href="../../User/UserManage.aspx?uid=北京市" title="北京市">
  <area shape="rect" coords="304,168,365,198" href="../../User/UserManage.aspx?uid=内蒙古" title="内蒙古">
  <area shape="rect" coords="467,142,509,171" href="../../User/UserManage.aspx?uid=辽宁省" title="辽宁省">
  <area shape="rect" coords="484,114,545,137" href="../../User/UserManage.aspx?uid=吉林省" title="吉林省">
  <area shape="rect" coords="497,70,558,95"   href="../../User/UserManage.aspx?uid=黑龙江省" title="黑龙江省">
  <area shape="rect" coords="491,375,520,417" href="../../User/UserManage.aspx?uid=台湾省" title="台湾省">
  <area shape="rect" coords="431,420,474,432" href="../../User/UserManage.aspx?uid=香港特区" title="香港特区">
  <area shape="rect" coords="405,431,436,445" href="../../User/UserManage.aspx?uid=澳门特区" title="澳门特区">
  <area shape="rect" coords="357,448,395,474" href="../../User/UserManage.aspx?uid=海南省" title="海南省">
</map>
</div>
    </form>
</body>
</html>