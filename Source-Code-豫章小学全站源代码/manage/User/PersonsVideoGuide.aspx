<%@ page language="C#" autoeventwireup="true" inherits="manage_User_PersonsVideoGuide, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_PersonsVideoGuide_video")%></title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
     function Switch(obj) {
         obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
         var nextDiv;
         if (obj.nextSibling) {
             if (obj.nextSibling.nodeName == "DIV") {
                 nextDiv = obj.nextSibling;
             }
             else {
                 if (obj.nextSibling.nextSibling) {
                     if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                         nextDiv = obj.nextSibling.nextSibling;
                     }
                 }
             }
             if (nextDiv) {
                 nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
             }
         }
     }
     function OpenLink(lefturl, righturl) {
         if (lefturl != "") {
             parent.frames["left"].location = lefturl;
         }

         try {
             parent.MDIOpen(righturl); return false;
         } catch (Error) {
             parent.frames["main_right"].location = righturl;
         }
     }

     function gotourl(url) {
         try {
             parent.MDILoadurl(url); void (0);
         } catch (Error) {
             parent.frames["main_right"].location = "../" + url; void (0);
         }
     }
</script>
</head>
<body>
<form id="formGuide" runat="server">
  <div id="Div1">
    <ul>
      <li id="Guide_top">
        <div id="Guide_toptext"><%=lang.Get("m_PersonsVideoGuide_video")%></div>
      </li>
      <li id="Guide_main">
        <div id="Guide_box">
          <div class="guideexpand" onclick="Switch(this)"> <%=lang.Get("m_PersonsVideoGuide_video")%></div>
          <div class="guide">
            <ul>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/VideoRoom.aspx" target="main_right"><%=lang.Get("m_PersonsVideoGuide_room")%> </a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/VideoHall.aspx" target="main_right"><%=lang.Get("m_PersonsVideoGuide_hall")%></a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/VideoUserManage.aspx" target="main_right"><%=lang.Get("m_PersonsVideoGuide_user")%></a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/AdminiStrator.aspx" target="main_right"><%=lang.Get("m_PersonsVideoGuide_admin")%></a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/Agent.aspx" target="main_right"><%=lang.Get("m_PersonsVideoGuide_agent")%></a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/Wiipointscard.aspx" target="main_right"><%=lang.Get("m_PersonsVideoGuide_card")%></a></li>
              <%--  <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="..//CN/nite/Content/VideoVerify.aspx" target="main_right">客户端管理</a></li>--%>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="/CN/nite/Content/VideoVerify.aspx" target="main_right"><%=lang.Get("m_PersonsVideoGuide_game")%></a></li>
            </ul>
          </div>
        </div>
      </li>
    </ul>
  </div>
</form>
</body>
</html>