<%@ page language="C#" autoeventwireup="true" inherits="manage_Workload_WorkloadGuide, App_Web_bbiau0zi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_WorkloadGuide_work")%></title>
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
            parent.MDIOpen(righturl); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + righturl; ; void (0);
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
      <div id="Guide_toptext"><%=lang.Get("m_WorkloadGuide_work")%></div>
    </li>   
    <li id="Guide_main">
        <div id="Guide_box">                
            <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_WorkloadGuide_work")%></div>
            <div class="guide">
            <ul>                        
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Workload/Subject.aspx?Type=subject" target="main_right"><%=lang.Get("m_WorkloadGuide_part")%></a></li>
                 <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Workload/Subject.aspx?Type=manager" target="main_right"><%=lang.Get("m_WorkloadGuide_admin")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Workload/Subject.aspx?Type=dateTime" target="main_right"><%=lang.Get("m_WorkloadGuide_create")%></a></li>
            </ul>
            </div>
        </div>
    </li>
    </ul>
</div>
</form>
</body>
</html>
