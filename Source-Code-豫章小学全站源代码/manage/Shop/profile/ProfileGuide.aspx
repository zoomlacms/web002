<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_ProfileGuide, App_Web_j5qlofg5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>返利管理</title>
<link type="text/css" rel="stylesheet" href="../../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../../App_Themes/AdminDefaultTheme/main.css" />
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
            <div id="Guide_toptext">推广返利</div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
               <div class="guideexpand" onclick="Switch(this)">统计报表</div>                    
                <div class="guide">
                <ul>   
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="StatisticsBriefing.aspx" target="main_right">统计简报</a></li>
                </ul>
                </div>
            </div>
        </li>
        <li id="Li1">
            <div id="Div2">
                <div class="guideexpand" onclick="Switch(this)">
                   推广营销
                </div>                    
                <div class="guide">
                <ul>     
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="config.aspx" target="main_right">基本设置</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="LmUserManage.aspx" target="main_right">联盟会员</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="LmUserListTree.aspx" target="main_right">联盟会员树状图</a></li>
                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>