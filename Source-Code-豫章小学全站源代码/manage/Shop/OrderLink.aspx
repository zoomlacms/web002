<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.OrderLink, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_OrderLink_manage")%></title>
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
            <div id="Guide_toptext"><%=lang.Get("m_OrderLink_order")%></div>
        </li>
        <li id="Guide_main">
            <div id="Div2">
                <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_OrderLink_cart")%></div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="CartManage.aspx" target="main_right"><%=lang.Get("m_OrderLink_record")%></a></li>
                  </ul>
                </div>
            </div>
                 <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
                    <%=lang.Get("m_OrderLink_orders")%>
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="OrderList.aspx" target="main_right"><%=lang.Get("m_OrderLink_list")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="/User/Shopfee/OrderList.aspx" target="main_right"><%=lang.Get("m_OrderLink_purchase")%></a></li>
                     <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="UserOrderlist.aspx" target="main_right"><%=lang.Get("m_OrderLink_shop")%></a></li>
                     <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="StoreOrderlist.aspx" target="main_right"><%=lang.Get("m_OrderLink_rapid")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="OtherOrder/Hotel_Order_Manager.aspx" target="main_right"><%=lang.Get("m_OrderLink_hotel")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="OtherOrder/Flight_Order_Management.aspx" target="main_right"><%=lang.Get("m_OrderLink_ticket")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="OtherOrder/TravelOrder_Manager.aspx" target="main_right"><%=lang.Get("m_OrderLink_travel")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="OrderConfi.aspx" target="main_right"><%=lang.Get("m_OrderLink_info")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="SystemOrderModel.aspx?Type=site" target="main_right"><%=lang.Get("m_OrderLink_config")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="SystemOrderModel.aspx?Type=shop" target="main_right"><%=lang.Get("m_OrderLink_shopconfig")%></a></li>
                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>
