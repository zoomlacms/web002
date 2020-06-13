<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.CreateLink, App_Web_0tiy15lx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>Print Server</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
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
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
<form id="formGuide" runat="server">
<div id="Div1">
	<ul>
		<li id="Guide_top">
			<div id="Guide_toptext"><%=lang.Get("m_Print_Server_printout")%></div>
		</li>
		<li id="Guide_main">
			<div id="Guide_box">
				<div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_Print_Server_printer")%></div>
				<div class="guide">
					<ul>
					<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Print_Type.aspx" target="main_right"><%=lang.Get("m_Print_Server_type")%></a></li>
					<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="PrintMaskList.aspx" target="main_right"><%=lang.Get("m_Print_Server_lib")%></a></li>
					<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Print_Photo.aspx" target="main_right"><%=lang.Get("m_Print_Server_pic")%></a></li>
				</div>
				<div class="guideexpand" onclick="Switch(this)">
					<%=lang.Get("m_Print_Server_other")%>
				</div>
				<div class="guide">
					<ul>
					   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Print_Photo.aspx" target="main_right">DOC <%=lang.Get("m_Print_Server_output")%></a></li>
					   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Print_Photo.aspx" target="main_right">PDF <%=lang.Get("m_Print_Server_output")%></a></li>
                     </ul>
				</div>
			</div>
		</li>
	</ul>
</div>
</form>
</body>
</html>