<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.StatisticLink, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_StatisticLink_sale")%></title>
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
            <div id="Guide_toptext"><%=lang.Get("m_StatisticLink_sale")%></div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_StatisticLink_sale")%></div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="TotalSale.aspx" target="main_right"><%=lang.Get("m_StatisticLink_total")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ProductSale.aspx" target="main_right"><%=lang.Get("m_StatisticLink_rank")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="CategotySale.aspx" target="main_right"><%=lang.Get("m_StatisticLink_category")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="UserOrders.aspx" target="main_right"><%=lang.Get("m_StatisticLink_order")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="UserExpenditure.aspx" target="main_right"><%=lang.Get("m_StatisticLink_shop")%></a></li>
                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>