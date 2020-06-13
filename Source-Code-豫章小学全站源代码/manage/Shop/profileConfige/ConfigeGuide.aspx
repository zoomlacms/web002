<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profileConfige_ConfigeGuide, App_Web_w1dcdbqq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>返利配置信息</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
        返利信息配置</div>
</li>
<li id="Guide_main">
<div id="Guide_box">
    <div class="guideexpand" onclick="Switch(this)">
        返利信息配置
    </div>                    
    <div class="guide">
     <ul>       
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'" ><a href="HonorConfige.aspx" target="main_right">兑现信息管理</a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'" ><a href="SmellCashConfige.aspx" target="main_right">小额兑现信息管理</a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'" ><a href="RedEnvlop.aspx" target="main_right">红包信息管理</a></li>
        <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'" ><a href="MakeMoneyRegu.aspx" target="main_right">赚钱计划规则管理</a></li>
      </ul>
    </div>
</div>
</li>
</ul>
</div>
</form>
</body>
</html>
