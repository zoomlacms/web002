<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_CommunityLeft, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("u_CommunityLeft_nav")%></title>
<link href="../../App_Themes/UserThem/user.css"rel="stylesheet" type="text/css" />
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="../../JS/UserDefault.js"></script>
</head>
<body  class="user_left">
<div class="left_font" onclick="usershow('#td1','#span1')" > <span id="span1" class="imgbgover img_icon" onclick="usershow('#td1','#span1')" ></span> <%=lang.Get("u_CommunityLeft_interactive")%></div>
<ul id="td1"  class="tabtr">
  <li><a href="UserZone/Default.aspx" target="main_right"><%=lang.Get("u_CommunityLeft_space")%></a></li>
  <li><a href="UserZone/UserQuestFriend.aspx" target="main_right" ><%=lang.Get("u_CommunityLeft_community")%></a></li>
  <li><a href="Survey/SurveyAll.aspx" target="main_right" ><%=lang.Get("u_CommunityLeft_vote")%></a></li>
  <li><a href="UserZone/Cut/List.aspx" target="main_right" ><%=lang.Get("u_CommunityLeft_scissor")%></a></li>
</ul>
<div class="left_font" onclick="usershow('#td2','#span2')" > <span id="span2" class="imgbgout img_icon" onclick="usershow('#td2','#span2')" ></span><%=lang.Get("u_CommunityLeft_chat")%></div>
<ul id="td2"  class="tabtr">
  <li><a href="javascript:void(0);" onclick="window.open('/user/Usertalk/TalkIndex.aspx?'+Math.random(), 'newwindow', 'height=730, width=1028, top=0, left=0, toolbar=no, menubar=no, scrollbars=no,resizable=no,location=no, status=no');" ><%=lang.Get("u_CommunityLeft_online")%></a> </li>
  <li><a href="javascript:void(0);" onclick="window.open('/Plugins/chat/Default.aspx');" ><%=lang.Get("u_CommunityLeft_video")%></a> </li>
  <li><a href="javascript:void(0);" onclick="window.open('/Plugins/Chat/room/Videos.html?MID=3&UID=8');" ><%=lang.Get("u_CommunityLeft_one")%></a></li>

</ul>
<div class="left_font" onclick="usershow('#td3','#span3')" > <span id="span3" class="imgbgout img_icon" onclick="usershow('#td2','#span2')" ></span><%=lang.Get("u_CommunityLeft_help")%></div>
<ul id="td3"  class="tabtr">
  <li><a href="../Edit/Default.aspx?ID=0" target="main_right" ><%=lang.Get("u_CommunityLeft_write")%></a></li>
  <li><a href="../Edit/EditList.aspx" target="main_right" ><%=lang.Get("u_CommunityLeft_list")%></a></li>
</ul>
</body>
</html>