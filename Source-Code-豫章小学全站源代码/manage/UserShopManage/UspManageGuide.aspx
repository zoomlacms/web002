<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_UspManageGuide, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_UspManageGuide_set")%></title>
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
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
<div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext"><%=lang.Get("m_UspManageGuide_set")%></div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
                    <%=lang.Get("m_UspManageGuide_setnav")%>
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ShopinfoManage.aspx" target="main_right"><%=lang.Get("m_UspManageGuide_setinfo")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'" style="display:"><a href="Shoplabelsclass.aspx" target="main_right"><%=lang.Get("m_UspManageGuide_label")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ShopSearchKey.aspx" target="main_right"> <%=lang.Get("m_UspManageGuide_search")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ShopRemark.aspx" target="main_right"><%=lang.Get("m_UspManageGuide_comment")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ShopScutcheon.aspx" target="main_right"><%=lang.Get("m_UspManageGuide_brand")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ShopGrade.aspx" target="main_right"> <%=lang.Get("m_UspManageGuide_level")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ProducerManage.aspx" target="main_right"> <%=lang.Get("m_UspManageGuide_vendor")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:void(0);" onclick="OpenLink('../AddOn/PayPlatLink.aspx','../AddOn/PayPlatManage.aspx')"> <%=lang.Get("m_UspManageGuide_pay")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="DeliverType.aspx"><%=lang.Get("m_UspManageGuide_delivery")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ShopMailConfig.aspx" target="main_right"><%=lang.Get("m_UspManageGuide_email")%></a></li>
                </ul>
                </div>
            </div>
        </li>
        <li id="Li1">
            <div id="Div2">
                <div class="guideexpand" onclick="Switch(this)">
                    <%=lang.Get("m_UspManageGuide_flowerset")%>
                </div>                    
                <div class="guide">
                <ul>     
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="AddFloBasprice.aspx" target="main_right"> <%=lang.Get("m_UspManageGuide_add")%></a></li>                   
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="FlowaPriManage.aspx" target="main_right"> <%=lang.Get("m_UspManageGuide_floral")%></a></li>
                 </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>
