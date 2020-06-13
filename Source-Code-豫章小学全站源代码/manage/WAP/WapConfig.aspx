<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_WapConfig, App_Web_emowutw1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title><%=lang.Get("m_WapConfig_admin")%></title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript" src="/JS/Popmenu.js" type="text/JavaScript"></script>
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
    function OpenLink(lefturl,righturl)
    {
        if(lefturl!="")
        {
            parent.frames["left"].location =lefturl;
        }
        parent.frames["main_right"].location =righturl;
    }
    </script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
<div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext">
                Wap <%=lang.Get("m_WapConfig_manage")%></div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
                   Wap <%=lang.Get("m_WapConfig_manage")%>
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="WapTree.aspx?t=0" >WAP <%=lang.Get("m_WapConfig_column")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="WapTree.aspx?t=1" >WAP <%=lang.Get("m_WapConfig_add")%></a></li>

                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>
