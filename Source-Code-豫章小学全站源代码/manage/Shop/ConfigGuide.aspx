<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.ConfigGuide, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_ConfigGuide_mall")%></title>
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
    <div id="Guide_toptext">
        <%=lang.Get("m_ConfigGuide_mall")%></div>
</li>
<li id="Guide_main">
<div id="Guide_box">
    <div class="guideexpand" onclick="Switch(this)">
        <%=lang.Get("m_ConfigGuide_mall")%>
    </div>                    
    <div class="guide">
    <ul>                        
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'" style="display:none"><a href="ShopConfig.aspx"><%=lang.Get("m_ConfigGuide_mallconfig")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="DeliverType.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_deliver")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ProducerManage.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_vendor")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Producer.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_addvendor")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="TrademarkManage.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_brand")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Trademark.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_add")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="CardManage.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_vip")%></a></li>                      
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="CashManage.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_cash")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="ProductCashManage.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_metion")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="BossSite.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_set")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="MoneyManage.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_money")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../../User/Shopfee/Default.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_freight")%></a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="InvtoManage.aspx" target="main_right"><%=lang.Get("m_ConfigGuide_invoice")%></a></li>
    </ul>
    </div>
</div>
</li>
</ul>
</div>
</form>
</body>
</html>