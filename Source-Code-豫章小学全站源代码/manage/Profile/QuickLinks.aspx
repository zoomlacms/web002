<%@ page language="C#" autoeventwireup="true" inherits="manage_Profile_QuickLinks, App_Web_sb3jeyxx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_QuickLinks_nav")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">    
    function Switch(obj)
    {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling)
        {
            if(obj.nextSibling.nodeName=="DIV")
            {
                nextDiv = obj.nextSibling;
            }
            else
            {
                if(obj.nextSibling.nextSibling)
                {
                    if(obj.nextSibling.nextSibling.nodeName=="DIV")
                    {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }
            if(nextDiv)
            {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none"; 
            }
        }
    }
    function OpenLink(lefturl, righturl)
    {
        if(lefturl!="")
        {
            parent.frames["left"].location = lefturl; 
        }

        try {
            parent.MDIOpen(righturl);void (0);
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
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
<div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext"><%=lang.Get("m_QuickLinks_table")%></div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
                    <%=lang.Get("m_QuickLinks_Qnav")%>
                </div>                    
                <div class="guide">
                <ul>                
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Profile/Worktable.aspx" target="main_right"><%=lang.Get("m_QuickLinks_home")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Content/ContentManage.aspx" target="main_right"><%=lang.Get("m_QuickLinks_content")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Shop/ProductManage.aspx" target="main_right"><%=lang.Get("m_QuickLinks_goods")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Shop/OrderList.aspx" target="main_right"><%=lang.Get("m_QuickLinks_order")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Content/ModelManage.aspx?ModelType=1" target="main_right"><%=lang.Get("m_QuickLinks_model")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Content/NodeManage.aspx" target="main_right"><%=lang.Get("m_QuickLinks_node")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Template/TemplateManage.aspx" target="main_right"><%=lang.Get("m_QuickLinks_template")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Template/LabelManage.aspx" target="main_right"><%=lang.Get("m_QuickLinks_label")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../User/UserManage.aspx" target="main_right"><%=lang.Get("m_QuickLinks_member")%></a></li> 
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Content/CreateHtmlContent.aspx" target="main_right"><%=lang.Get("m_QuickLinks_publish")%></a></li>                      
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Config/SiteInfo.aspx" target="main_right"><%=lang.Get("m_QuickLinks_config")%></a></li>
                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>