<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_CounterLink, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>网站统计</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/MasterPage.css" type="text/css" rel="stylesheet" />
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
        <div id="Guide_toptext"> 网站统计</div>
      </li>
      <li id="Guide_main">
        <div id="Guide_box">
          <div class="guideexpand" onclick="Switch(this)"> 网站统计 </div>
          <div class="guide">
            <ul>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Plus/StatReport.aspx" target="main_right">访问综合统计</a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Plus/StatInit.aspx" target="main_right">统计数据初始化</a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Plus/StatOnline.aspx" target="main_right">在线用户统计</a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Plus/StatCode.aspx" target="main_right">统计代码调用</a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Plus/StatConfig.aspx" target="main_right">统计参数设置</a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Plus/IPManage.aspx" target="main_right">IP库管理</a></li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Plus/StatIP.aspx" target="main_right">IP库添加</a></li>
            </ul>
          </div>
        </div>
      </li>
    </ul>
  </div>
</form>
</body>
</html>
