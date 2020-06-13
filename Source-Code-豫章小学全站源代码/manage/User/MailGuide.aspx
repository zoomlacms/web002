<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_MailGuide, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_MailGuide_email")%></title>
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
    <div id="Guide_toptext"><%=lang.Get("m_MailGuide_email")%></div>
  </li>
  <li id="Guide_main">
    <div id="Div2">
      <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_MailGuide_article")%>&nbsp;</div>
      <div class="guide">
        <ul>
          <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/SubscriptListManage.aspx?menu=all" target="main_right"><%=lang.Get("m_MailGuide_sub")%></a></li>
          <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/SubscriptListManage.aspx?menu=audit" target="main_right"><%=lang.Get("m_MailGuide_audit")%></a></li>
        </ul>
      </div>
    </div>
    <div id="Guide_box">
      <div class="guideexpand" onclick="Switch(this)"> <%=lang.Get("m_MailGuide_email")%>&nbsp;</div>
      <div class="guide">
        <ul>
          <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/EidtMailModel.aspx" target="main_right"><%=lang.Get("m_MailGuide_mailedite")%></a></li>
          <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/RegValidateMail.aspx" target="main_right"><%=lang.Get("m_MailGuide_content")%></a></li>
          <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/SendMailList.aspx" target="main_right"><%=lang.Get("m_MailGuide_send")%></a></li>
          <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/MailListManage.aspx" target="main_right"><%=lang.Get("m_MailGuide_list")%></a></li>
          <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/AddMail.aspx" target="main_right"><%=lang.Get("m_MailGuide_mail")%></a></li>
          <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/MailIdiographList.aspx" target="main_right"><%=lang.Get("m_MailGuide_signature")%></a></li>
        </ul>
      </div>
    </div>
  </li>
</ul>
</div>
</form>
</body>
</html>