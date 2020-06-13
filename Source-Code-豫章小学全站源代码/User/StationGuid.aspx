<%@ page language="C#" autoeventwireup="true" inherits="User_StationGuid, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("u_StationGuid_nav")%></title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery.js" type="text/javascript"></script>
<script src="../js/UserDefault.js" type="text/javascript" ></script>
</head>
<body class="user_left">
<form id="form1" runat="server">
<div class="left_font" onclick=" usershow('#td1','#span1')">
<span id="span1" class="imgbgover img_icon" onclick=" usershow('#td1','#span1')" ></span>
<%=lang.Get("u_StationGuid_page")%></div>
<ul id="td1" class="tabtr">
<li><a href="Pages/Default.aspx" target="main_right"><%=lang.Get("u_StationGuid_page")%></a></li>
<li><a href="Pages/Modifyinfo.aspx" target="main_right"><%=lang.Get("u_StationGuid_config")%></a></li>
<li><a href="Pages/ClassManage.aspx" target="main_right"><%=lang.Get("u_StationGuid_part")%></a></li>
<li><a href="Pages/ChangeSkins.aspx"target="main_right"><%=lang.Get("u_StationGuid_style")%></a></li>
<li><a href="Info/CompanyInfo.aspx" target="main_right"><%=lang.Get("u_StationGuid_info")%></a></li>
<li><a href="Info/Certificate.aspx" target="main_right"><%=lang.Get("u_StationGuid_certificate")%></a></li>
</ul>

<div class="left_font"  onclick=" usershow('#td4','#span4')"> 
<span id="span4" class="imgbgout img_icon" onclick=" usershow('#td4','#span4')" ></span>
<%=lang.Get("u_StationGuid_sitegroup")%></div>
<ul id="td4" class="tabtr">
<li><a href="/User/Develop/SiteAdmin/Default.aspx" target="_blank"><%=lang.Get("u_StationGuid_website")%></a></li>
<li><a href="javascript:void(0)" target="main_right"><%=lang.Get("u_StationGuid_sub")%></a></li>
<li><a href="javascript:void(0)"target="main_right"><%=lang.Get("u_StationGuid_audit")%></a></li>
</ul>            
</form>
</body>
</html>