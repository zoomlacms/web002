<%@ page language="C#" autoeventwireup="true" inherits="User_Cloud_CloudGuide, App_Web_4tcoj2v3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("u_CloudGuide_cloud")%></title>
<link href="/App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="/JS/jquery.js" type="text/javascript"></script>
<script src="/js/UserDefault.js" type="text/javascript" ></script>
</head>
<body class="user_left">
<form id="form1" runat="server">
<div class="left_font" onclick=" usershow('#td1','#span1')">
<span id="span1" class="imgbgover img_icon" onclick=" usershow('#td1','#span1')" ></span>
<%=lang.Get("u_CloudGuide_cloud")%></div>
<ul id="td1" class="tabtr">
<%--<asp:Repeater ID="GuidName" runat="server" >
      <ItemTemplate>
         <li><a href=""><%#Eval("Name")%></a></li>
      </ItemTemplate>
</asp:Repeater>--%>
<li><a href="../CloudManage.aspx?Type=file" target="main_right"><%=lang.Get("u_CloudGuide_doc")%></a></li>
<li><a href="../CloudManage.aspx?Type=photo" target="main_right"><%=lang.Get("u_CloudGuide_album")%></a></li>
<li><a href="../CloudManage.aspx?Type=music" target="main_right"><%=lang.Get("u_CloudGuide_music")%></a></li>
<li><a href="../CloudManage.aspx?Type=video" target="main_right"><%=lang.Get("u_CloudGuide_video")%></a></li>
</ul>
</form>
</body>
</html>
