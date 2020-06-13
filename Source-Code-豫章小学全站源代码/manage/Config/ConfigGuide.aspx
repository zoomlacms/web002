<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_ConfigGuide, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_ConfigGuide_config")%></title>
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
            <li id="Guide_top"><div id="Guide_toptext"><%=lang.Get("m_ConfigGuide_config")%></div></li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_ConfigGuide_config")%></div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="SiteInfo.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_web")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="SiteOption.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_webdata")%></a></li>
                            <%--<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="WapOption.aspx" target="main_right">WAP参数配置</a></li>--%>
                            <%--<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="XmlConfig.aspx" target="main_right">地址参数配置</a></li>--%>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="MobileMsgConfig.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_sms")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="MailConfig.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_email")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ThumbConfig.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_thumbnail")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="IPLockConfig.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_ip")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="AppConfig.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_maintain")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Sensitivity.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_filter")%></a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>