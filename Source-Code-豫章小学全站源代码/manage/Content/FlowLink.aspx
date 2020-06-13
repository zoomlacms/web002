<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.FlowLink, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_FlowLink_nav")%></title>
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
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
<form id="formGuide" runat="server">
<div id="Guide_back">
<ul>
    <li id="Guide_top">
        <div id="Guide_toptext"><%=lang.Get("m_FlowLink_manage")%></div>
    </li>
    <li id="Guide_main">
        <div id="Guide_box">
            <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_FlowLink_manage")%></div>
            <div class="guide">
                <ul>
                 <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><%=flow %></li>
                 <%if(ZoomLa.Components.SiteConfig.SiteOption.ContentConfig==1 ){%>
                 <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Content/FlowManager.aspx" target="main_right"><%=lang.Get("m_FlowLink_manage")%></a></li>
                 <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Content/AddFlow.aspx" target="main_right"><%=lang.Get("m_FlowLink_add") %></a></li>
                </ul>
            </div>
        </div>
    </li>
    <li id="Li1">
        <div id="Guide_main">
            <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_FlowLink_step") %></div>
            <div class="guide">
                <ul style="text-align: left">
                    <asp:Repeater ID="rpName" runat="server" DataSourceID="odsFlow">
                        <ItemTemplate>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Content/FlowProcessManager.aspx?id=<%# Eval("id") %>&name=<%#Eval("flowName") %>" target="main_right"><%#Eval("flowName") %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:ObjectDataSource ID="odsFlow" runat="server" SelectMethod="GetFlowAll" TypeName="ZoomLa.BLL.B_Flow">
                    </asp:ObjectDataSource>
                </ul>
            </div>
        </div>
    </li>            
    <%}%>
</ul>
</div>
</form>
</body>
</html>