<%@ page language="C#" autoeventwireup="true" inherits="manage_File_Addlinkname, App_Web_lz1ef1my" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_Addlinkname_station")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
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
<body id="Guidebody">
<form id="form1" runat="server">
   <div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext"><%=lang.Get("m_Addlinkname_station")%></div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
             <%=lang.Get("m_Addlinkname_station")%>
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../File/Addlinkhttp.aspx" target="main_right"><%=lang.Get("m_Addlinkname_manage")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../File/tjlink.aspx" target="main_right"><%=lang.Get("m_Addlinkname_add")%></a></li>
                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>
