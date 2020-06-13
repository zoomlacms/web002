<%@ page language="C#" autoeventwireup="true" inherits="manage_User_CustomerGuide, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_CustomerGuide_onlineservice")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/Main.css" type="text/css" rel="stylesheet" />
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
        parent.frames["main_right"].location = righturl;
    }
    function ShowMains(lefturl, righturl) {
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
<form id="form1" runat="server">
  <div id="Div1">
    <ul>
      <li id="Guide_top">
        <div id="Guide_toptext"><%=lang.Get("m_CustomerGuide_service")%></div>
      </li>
      <li id="Guide_main">
        <div id="Guide_box">
          <div class="guideexpand" onclick="Switch(this)"> <%=lang.Get("m_CustomerGuide_service")%></div>
          <div class="guide">
            <ul>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/ServiceSeat.aspx" target="main_right"><%=lang.Get("m_CustomerGuide_seat")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/ServiceCode.aspx" target="main_right"><%=lang.Get("m_CustomerGuide_online")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:void(0);" onclick="ShowMains('Onlineuser.aspx','../User/ALLOnlineInfo.aspx')"><%=lang.Get("m_CustomerGuide_info")%></a></li>
            </ul>
          </div>
        </div>
      </li>
    </ul>
    <ul>
      <li id="Li2">
        <div>
          <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_CustomerGuide_chatroom")%></div>
          <div class="guide">
            <ul>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/RoomManage.aspx" target="main_right"><%=lang.Get("m_CustomerGuide_game")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/MsgEx.aspx" target="main_right"><%=lang.Get("m_CustomerGuide_chat")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/UserGroup.aspx" target="main_right"><%=lang.Get("m_CustomerGuide_usergroup")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/SelectFrient.aspx" target="main_right"><%=lang.Get("m_CustomerGuide_friend")%></a> </li>
            </ul>
          </div>
        </div>
      </li>
    </ul>
  </div>
</form>
</body>
</html>