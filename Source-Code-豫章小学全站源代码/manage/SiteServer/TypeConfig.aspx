<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_TypeConfig, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>SiteServer</title>
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
        function loado() {
            document.getElementById("LinkButton1").innerHTML = "loading...";
        }
    </script>

</head>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
    <form id="formGuide" runat="server">
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">主站共享信息</div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)">主站共享信息 </div>
                </div>
                <div class="guide">
                    <ul>
                        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                            <a href="../SiteServer\ChildPros.aspx" target="main_right">获取主站共享信息</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
