<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Cut_Portal, App_Web_efmtsymw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<!DOCTYPE html>
<html >
<head id="Head1"  runat="server">
<title><%=userName%>-个人主页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css">
<link href="../../../App_Themes/UserThem/cut.css" rel="stylesheet" type="text/css">
<script src="../../../JS/jquery-1.4.js" type="text/javascript"></script>
</head>
<body>
<form id="Form1" runat=server>
<div id="Cut_top">
  <div id="logo"><a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a></div>
  <div id="Cut_top_r">
    <iframe src="/Search/indexSearch.aspx" marginwidth="1" marginheight="1" scrolling="no" border="0" frameborder="0" width="380px" height="28px"></iframe>
    <a href="ModuleTerrace.aspx" target="_blank">组件平台</a><a href="PortalList.aspx" >网友主页</a>退出登录</a> </div>
</div>
<div id="menu" style=" width:100%; height:30px;" >
  <asp:Repeater runat="server" ID="R_menu">
    <ItemTemplate>
      <div id='p_<%# Eval("id") %>' class="menu_btn" style="padding:auto;"><a href='?menuid=<%# Eval("id") %>&Uid=<%=Uid %>' ><%# Eval("pageSign") %></a></div>
    </ItemTemplate>
  </asp:Repeater>
  </div>
  <div style="wdith:100%; height:5px;"></div>

  <%
        if (Paget != 0) { 
            %>
<div>
  <iframe id="CIframe" src="<%=Cuts[0].Url %>?menuid=<%=Cuts[0].MenuID %>" style=" width:100%; height:1000px;"></iframe>
</div>
<%
        }
        else
        {   
         %>
  <div id="mainCount"  style="margin-top:5px;">
  <div id="ddCut0" class="div">
    <%
    if (showCount > Cuts.Count)
    { 
        showCount = Cuts.Count;
    }
        for (int i = 0; i < showCount; i++)
        {
           cut = Cuts[i];
            int j =Convert.ToInt32(Cuts[i].LevelCut);
            if (j == 0)
            {
               
            %>
    <div id="divCut<%=i %>" class="divCut" > <span class="ss"><a id="showORnone<%=i %>" title="<%=getsh(i)[0] %>" href="javascript:void(0);"  class=" <%=getsh(i)[1] %>"> </a></span> <span class="tt"><a id="atitle<%=i %>" class="atitle"><%=cut.Title%></a></span>
      <h1 class="yd" title="<%=cut.Id %>"></h1>
      <span class="clo"><a id="edit<%=i %>" title="编辑" href="javascript:void(0);" class=" aPic bgImg1"></a><a title="最大" href="javascript:void(0);" class=" aPic bgImg2"> </a><a title="删除" href="javascript:void(0);" class=" aPic bgImg3"></a></span> <%= getCutDiv(i, cut)%> </div>
    <%
}
        }
          %>
  </div>
  <div id="ddCut1">
    <%
    if (showCount > Cuts.Count)
    {
        showCount = Cuts.Count;
    }
        for (int i = 0; i < showCount; i++)
        {
            cut = Cuts[i];
            int j =Convert.ToInt32(Cuts[i].LevelCut);
            if (j == 1)
            {
            %>
    <div id="divCut<%=i %>" class="divCut" > <span class="ss"><a id="showORnone<%=i %>" title="<%=getsh(i)[0] %>" href="javascript:void(0);"  class=" <%=getsh(i)[1] %>"> </a></span> <span class="tt"><a id="atitle<%=i %>" class="atitle"><%=cut.Title%></a></span>
      <h1 class="yd" title="<%=cut.Id %>"></h1>
      <span class="clo"><a id="edit<%=i %>" title="编辑" href="javascript:void(0)" class=" aPic bgImg1"></a><a title="最大" href="javascript:void(0);" class=" aPic bgImg2"> </a><a title="删除" href="javascript: closeDiv(<%=cut.Id %>,'divCut<%=i %>')" class=" aPic bgImg3"></a></span> <%= getCutDiv(i, cut)%> </div>
    <%
}
        }
          %>
  </div>
  <div id="ddCut2" class="div">
    <%
    if (showCount > Cuts.Count)
    {
        showCount = Cuts.Count;
    }
        for (int i = 0; i < showCount; i++)
        {
            cut = Cuts[i];
            int j =Convert.ToInt32(Cuts[i].LevelCut);
            if (j == 2)
            {
            %>
    <div id="divCut<%=i %>" class="divCut" > <span class="ss"><a id="showORnone<%=i %>" title="<%=getsh(i)[0] %>" href="javascript:void(0);"  class=" <%=getsh(i)[1] %>"> </a></span> <span class="tt"><a id="atitle<%=i %>" class="atitle"><%=cut.Title%></a></span>
      <h1 class="yd" title="<%=cut.Id %>"></h1>
      <span class="clo"><a id="edit<%=i %>" title="编辑" href="javascript:void(0);" class=" aPic bgImg1"></a><a title="最大" href="javascript:void(0)" class=" aPic bgImg2"> </a><a title="删除" href="javascript:void(0);" class=" aPic bgImg3"></a></span> <%= getCutDiv(i, cut)%> </div>
    <%
}
        }
          %>
  </div>
</div>

<% }%>
<script type="text/javascript" src="http://v1.jiathis.com/code/jiathis_r.js?move=0&amp;btn=r5.gif" charset="utf-8"></script>
<div class="clear"></div>
 
 </form>
</body>
</html>