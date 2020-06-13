<%@ page language="C#" autoeventwireup="true" inherits="manage_Component_ComponentGurid, App_Web_vh0dja20" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>组件分类导航</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" rel="stylesheet" type="text/css" />
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
<body>
    <form id="formGuide" runat="server">
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">
                    组件分类管理</div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)">
                        组件分类管理</div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="Component/ComClassManage.aspx" target="main_right">组件分类管理</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="Component/ComChildManage.aspx" target="main_right">组件子类管理</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
