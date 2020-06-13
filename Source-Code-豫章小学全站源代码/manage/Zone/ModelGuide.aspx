<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ZoneModelGuide, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_ModelGuide_space")%></title>
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
function OpenLink(lefturl,righturl)
{
    if(lefturl!="")
    {
        parent.frames["left"].location =lefturl;
    }
    try {
        parent.MDILoadurl(righturl); return false;
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
            <div id="Guide_toptext">SNS <%=lang.Get("m_ModelGuide_space")%></div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">SNS <%=lang.Get("m_ModelGuide_space")%> </div>                    
                <div class="guide">
                <ul>     
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/ZoneConfig.aspx" target="main_right"><%=lang.Get("m_ModelGuide_set")%></a></li>                   
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/ZoneManage.aspx" target="main_right"><%=lang.Get("m_ModelGuide_member")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/ZoneApplyManage.aspx" target="main_right"><%=lang.Get("m_ModelGuide_audit")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/ZoneStyleManage.aspx" target="main_right"><%=lang.Get("m_ModelGuide_template")%></a></li>
                    
                    <%--<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Zone\BannerManage.aspx" target="main_right">栏目管理</a></li>--%>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/FriendSearchManage.aspx" target="main_right"><%=lang.Get("m_ModelGuide_search")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/ProductManage.aspx" target="main_right"><%=lang.Get("m_ModelGuide_goods")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/CarManage.aspx" target="main_right"><%=lang.Get("m_ModelGuide_grab")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/LargessMoney.aspx" target="main_right"><%=lang.Get("m_ModelGuide_game")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/GSManage.aspx" target="main_right"><%=lang.Get("m_ModelGuide_ethnic")%></a></li>               
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/UnitConfig.aspx" target="main_right"><%=lang.Get("m_ModelGuide_spatial")%></a></li>                   
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/SnsSchool.aspx" target="main_right"><%=lang.Get("m_ModelGuide_school")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/SnsClassRoom.aspx" target="main_right"><%=lang.Get("m_ModelGuide_class")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'" style="display:none"> <a href="../Zone/SnsStudentModel.aspx" target="main_right"><%=lang.Get("m_ModelGuide_model")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/LabelHelp.aspx" target="main_right"><%=lang.Get("m_ModelGuide_label")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Zone/Mtit.aspx" target="main_right"><%=lang.Get("m_ModelGuide_plugin")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Component/Component.aspx" target="main_right"><%=lang.Get("m_ModelGuide_list")%></a></li>
                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>

