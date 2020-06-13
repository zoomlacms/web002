<%@ page language="C#" autoeventwireup="true" inherits="manage_CallStat_PageLeft, App_Web_jul0migs" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_ADGuide_menu")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/Main.css" type="text/css" rel="stylesheet" />
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
      <div id="Guide_toptext"><%=lang.Get("m_ADGuide_visit")%></div>
    </li>
    <li id="Guide_main">
        <div id="Guide_box">                
            <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_ADGuide_visit")%></div>
            <div class="guide">
            <ul>                        
                <%--<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatInfoListReport.aspx" target="main_right">综合统计</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/CodeReference.aspx" target="main_right">统计代码调用</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatVisitorReport.aspx" target="main_right">访问记录</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatTimeReport.aspx?w=year" target="main_right">年报表</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatTimeReport.aspx?w=year&type=all" target="main_right">全部年</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatTimeReport.aspx?w=month" target="main_right">月报表</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatTimeReport.aspx?w=month&type=all" target="main_right">全部月</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatTimeReport.aspx?w=week" target="main_right">周报表</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatTimeReport.aspx?w=week&type=all" target="main_right">全部周</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatTimeReport.aspx?w=day" target="main_right">日报表</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/StatTimeReport.aspx?w=day&type=all" target="main_right">全部日</a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../CallStat/CallCity.aspx" target="main_right">地区配置</a></li>--%>
                
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Counter.aspx" target="main_right"><%=lang.Get("m_ADGuide_nav")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Ip.aspx" target="main_right"><%=lang.Get("m_ADGuide_total")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Month.aspx" target="main_right"><%=lang.Get("m_ADGuide_daily")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Year.aspx" target="main_right"><%=lang.Get("m_ADGuide_month")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Local.aspx" target="main_right"><%=lang.Get("m_ADGuide_region")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Browser.aspx" target="main_right"><%=lang.Get("m_ADGuide_browser")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Os.aspx" target="main_right"><%=lang.Get("m_ADGuide_operate")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/Site.aspx" target="main_right"><%=lang.Get("m_ADGuide_access")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Counter/CodeReference.aspx" target="main_right"><%=lang.Get("m_ADGuide_calls")%></a></li>
            </ul>
            </div>
        </div>
    </li>
    </ul>
</div>
</form>
</body>
</html>