<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_FinanceGuide, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>SiteServer</title>
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
<body id="Guidebody" style="margin: 0px; margin-top:1px; ">
<form id="formGuide" runat="server">
<div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext"> 财务管理</div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)"> 财务管理</div>              
            </div>
            <div class="guide">
                <ul>                        
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/Todaydetail.aspx" target="main_right">今日收入明细</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/TopupNum.aspx" target="main_right">充入金额</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/consumeNum.aspx" target="main_right">消费金额</a></li>               
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/MainTopup.aspx" target="main_right">主站充值记录</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/MemberTopup.aspx" target="main_right">会员充值</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/PayOnline.aspx" target="main_right">在线付费记录查看</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/AgentManage.aspx" target="main_right">代理商管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/PointCardManage.aspx" target="main_right">点卡管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../SiteServer/AgentTopup.aspx" target="main_right">代理商充值记录查询</a></li>
                </ul>
           </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>
