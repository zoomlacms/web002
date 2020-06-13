<%@ page language="C#" autoeventwireup="true" inherits="manage_Template_TemplateLink, App_Web_balgrtw4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_TemplateLink_tag")%></title>
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
function search() {
	var LabelCate = "";
	var LabelName = document.getElementById("Lname").value;
	window.open('../Template/LabelManage.aspx?Cate=' + LabelCate + '&lblkey='+ LabelName,"main_right");
}
</script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
<div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext"><%=lang.Get("m_TemplateLink_style")%></div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_TemplateLink_style")%></div>                    
                <div class="guide">
                <ul>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Template/TemplateSet.aspx" target="main_right"><%=lang.Get("m_TemplateLink_program")%></a></li>                        
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Template/TemplateManage.aspx" target="main_right"><%=lang.Get("m_TemplateLink_template")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Template/LabelManage.aspx" target="main_right"><%=lang.Get("m_TemplateLink_tagmanage")%></a></li>
                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Template/CSSManage.aspx" target="main_right"><%=lang.Get("m_TemplateLink_stylemanage")%></a></li>
                <%--<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Template/LabelImport.aspx" target="main_right">标签导入</a></li>--%>                   
                </ul>
                </div>
            </div>
        </li>
    </ul>
</div>
<div style="margin-top:20px; padding-left:5px;">
<%=lang.Get("m_TemplateLink_byname")%>：<br />
<input id="Lname" style="width:120px;" runat="server" class="l_input" />
<input type="button" onclick="search()" value="<%=lang.Get("m_TemplateLink_search") %>" class="C_input" Style=""/>
</div>
</form>
</body>
</html>