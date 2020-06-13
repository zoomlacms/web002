<%@ page language="C#" autoeventwireup="true" inherits="manage_User_JobsGuide, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_JobsGuide_manage")%></title>
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
        <div id="Guide_toptext"><%=lang.Get("m_JobsGuide_member")%></div>
      </li>
      <li id="Guide_main">
        <div id="Guide_box">
          <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_JobsGuide_recruit")%> </div>
          <div class="guide">
            <ul>
              <div style="display:none">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
              </div>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/Jobsconfig.aspx" target="main_right"><%=lang.Get("m_JobsGuide_talent")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/Jobsinfos.aspx?modeid=qiye" target="main_right"><%=lang.Get("m_JobsGuide_recruit")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/Jobsinfos.aspx?modeid=zhappin" target="main_right"><%=lang.Get("m_JobsGuide_job")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/Jobsinfos.aspx?modeid=geren" target="main_right"><%=lang.Get("m_JobsGuide_resume")%></a> </li>
              <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../User/JobsRecycler.aspx?modeid=qiye" target="main_right"><%=lang.Get("m_JobsGuide_recycle")%></a> </li>
            </ul>
          </div>
        </div>
      </li>
    </ul>
  </div>
</form>
</body>
</html>