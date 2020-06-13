<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_MircGuide, App_Web_hihf5f3l" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_MircGuide_blog")%></title>
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
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
<div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext"><%=lang.Get("m_MircGuide_blog")%></div>
        </li>
        <li id="Li2">
            <div id="Div3">
                <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_MircGuide_blog")%></div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Microblog/MbUser.aspx" target="main_right"><%=lang.Get("m_MircGuide_user")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Microblog/ContentManage.aspx" target="main_right"><%=lang.Get("m_MircGuide_groadcast")%></a></li>
                </ul>
                </div>
            </div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
                 <%=lang.Get("m_MircGuide_topic")%>
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Microblog/ThemeManage.aspx" target="main_right"> <%=lang.Get("m_MircGuide_topic")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Microblog/AddTheme.aspx" target="main_right"> <%=lang.Get("m_MircGuide_add")%></a></li>
                </ul>
                </div>
            </div>
        </li>
        <li id="Li1">
            <div id="Div2">
                <div class="guideexpand" onclick="Switch(this)">
                 <%=lang.Get("m_MircGuide_category")%>
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Microblog/ClassManage.aspx" target="main_right"><%=lang.Get("m_MircGuide_category")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Microblog/AddClass.aspx" target="main_right"><%=lang.Get("m_MircGuide_addcategory")%></a></li>
                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>
