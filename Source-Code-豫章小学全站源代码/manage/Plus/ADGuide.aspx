<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_ADGuide, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_ADGuide_ad")%></title>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/Main.css" type="text/css" rel="stylesheet" />
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
        try {  parent.frames["main_right"].location = "../" + url; void (0);
            //parent.MDILoadurl(url); void (0);
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
        <li id="Guide_top"><div id="Guide_toptext"><%=lang.Get("m_ADGuide_ad")%></div></li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_ADGuide_slot")%></div>
                <div class="guide">
                    <ul>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Plus/ADZoneManage.aspx" target="main_right"><%=lang.Get("m_ADGuide_slot")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Plus/ADManage.aspx" target="main_right"><%=lang.Get("m_ADGuide_ad")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Plus/JSTemplate.aspx" target="main_right"><%=lang.Get("m_ADGuide_template")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Plus/ADAdbuy.aspx" target="main_right"><%=lang.Get("m_ADGuide_adapply")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Plus/ChartManage.aspx" target="main_right"><%=lang.Get("m_ADGuide_chart")%></a></li>
                    </ul>
                </div>
                <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_ADGuide_dimensional")%></div>
                <div class="guide">
                    <ul>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Panoramic/PanoramicManage.aspx" target="main_right"><%=lang.Get("m_ADGuide_panorama")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Panoramic/MusicManage.aspx" target="main_right"><%=lang.Get("m_ADGuide_music")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../AddOn/Maps.aspx" target="main_right"><%=lang.Get("m_ADGuide_map")%></a></li>
                        <%
                            if (HttpContext.Current.Request.Url.Host == "www.zoomla.cn")
                            {
                        %>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                            <a href="../Panoramic/Managecer.aspx" target="main_right"><%=lang.Get("m_ADGuide_authorize")%></a></li>
                        <%
                            }
                        %>
                    </ul>
                </div>
                <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_ADGuide_addesign")%></div>
                <div class="guide">
                    <ul>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Animation/default.aspx" target="main_right" onclick="javascript:window.top.switchSysBar()"><%=lang.Get("m_ADGuide_onlinedesign")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Flex/MyMaterial.aspx" target="main_right"><%=lang.Get("m_ADGuide_material")%></a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Flex/MyWork.aspx" target="main_right"><%=lang.Get("m_ADGuide_work")%></a></li>
                    </ul>
                </div>
             
                <!--<div class="guideexpand" onclick="Switch(this)">FMcold</div>
                <div class="guide">
                    <ul>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                            <a href="javascript:gotourl('/Print/bin-debug/Default.html');window.top.leftMenuMove();">FM Space</a></li>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                            <a href="javascript:gotourl('/Print/src/FlexADManage.aspx');">FM Product</a></li>
                    </ul>
                </div>
                -->
            </div>
        </li>
    </ul>
</div>
</form>
</body>
</html>