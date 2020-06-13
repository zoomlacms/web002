<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_PubGuide, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_PubGuide_module")%></title>
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
    function OpenLink(lefturl, righturl)
	 {
        if (lefturl != "") 
		{
            parent.frames["left"].location = lefturl;
        }
        try {
        parent.MDIOpen(righturl); return false;
            } catch (Error) 
			{
               parent.frames["main_right"].location = righturl;
            }
      }
	function gotourl (url)
	 {
	 try {
		 parent.MDILoadurl(url); void (0);
		 } catch (Error)
	     {
		 parent.frames["main_right"].location = "../" + url; void (0);
	     }
	 }
</script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
    <form id="formGuide" runat="server">
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext"><%=lang.Get("m_PubGuide_module")%></div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)">
                        <%=lang.Get("m_PubGuide_module")%>
                    </div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                               <a href="../Pub/pubmanage.aspx" target="main_right"><%=lang.Get("m_PubGuide_module")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:void(0);" onclick="OpenLink('PubsGuide.aspx','../Pub/pubmanage.aspx')"><%=lang.Get("m_PubGuide_info")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                              <a href="../Content/ModelManage.aspx?ModelType=7" target="main_right"><%=lang.Get("m_PubGuide_interactive")%><font color="red"><%=lang.Get("m_PubGuide_model")%></font><%=lang.Get("m_PubGuide_manage")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                               <a href="../Pub/PubRecycler.aspx" target="main_right"><%=lang.Get("m_PubGuide_archive")%></a></li>
                        </ul>
                    </div>
                    <div class="guideexpand" onclick="Switch(this)">
                        <%=lang.Get("m_PubGuide_bid")%>
                    </div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                             <a href="../Pub/BidConfig.aspx" target="main_right"><%=lang.Get("m_PubGuide_set")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                              <a href="../Pub/Bidmanage.aspx" target="main_right"><%=lang.Get("m_PubGuide_bid")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                               <a href="../Pub/Settlement.aspx" target="main_right"><%=lang.Get("m_PubGuide_settle")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                             <a href="../Pub/Paylog.aspx" target="main_right"><%=lang.Get("m_PubGuide_record")%></a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
