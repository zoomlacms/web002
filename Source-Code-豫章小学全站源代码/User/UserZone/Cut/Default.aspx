<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Pcut, App_Web_efmtsymw" responseencoding="UTF-8" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head id="Head1" runat="server">
<title>网页剪刀</title>
<link href="../../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css">
<link href="../../../App_Themes/UserThem/cut.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../../../JS/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="../../../JS/Tsinghuap.menu.js"></script>
<script type="text/javascript" src="../../../JS/menuload.js"></script>
<script type="text/javascript" src="../../../JS/CutDragDef.js"></script>
<script type="text/javascript" src="../../../JS/CutPage.js"></script>
<script type="text/javascript" src="../../../JS/DefaultMenu.js"></script>
</head>
<body onmouseup="mouseUp()">
    <div id="Cut_top">
        <div id="logo"><a href="<%Call.Label("{$SiteUrl/}"); %>"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a></div>
        <div id="Cut_top_r">
            <iframe src="/Search/indexSearch.aspx" marginwidth="1" marginheight="1" scrolling="no"  border="0" frameborder="0" width="360px" height="28px"></iframe>
            <a href="/User/Register.aspx">会员注册</a> <a href="/user">用户登陆</a> <a href="/User/GetPassword.aspx">找回密码</a><a href="PortalList.aspx">网页主页</a>
        </div>
    </div>
    <div id="CutUrl" style="display: none; width: 100%; height: 1000px;">
        <iframe id="CutIframe" style="width: 100%; height: 1000px; position: relative;">
        </iframe>
    </div>
    <div id="pcut_menu">
        <div id="pcut_mm">
            <div id="p_0"><a href="?menuid=0">个人主页</a></div>
            <div id="p_1"><a href="?menuid=1">互动组件</a></div>
            <%
                if (Session["pageSign"] != null)
                {
                    System.Collections.Generic.List<ZoomLa.Model.User.M_PageSign> pageSigns = (System.Collections.Generic.List<ZoomLa.Model.User.M_PageSign>)Session["pageSign"];
                    foreach (ZoomLa.Model.User.M_PageSign mps in pageSigns)
                    { 
            %>
            <div id="p_<%=mps.Id%>">
                <a href="javascript:singleClick(<%=mps.Id%>);"  ondblclick="dblClick(<%=mps.Id%>)">
                    <%=mps.PageSign%></a>
                <%
                    if (Request.QueryString["menuid"] != null)
                    {
                        if (mps.Id > 1 && Convert.ToInt32(Request.QueryString["menuid"]) == mps.Id)
                        {
                %>
                <img title="删除" alt="删除" onclick="removeMenu(<%=mps.Id  %>)" src="../../../App_Themes/AdminDefaultTheme/images/close2.gif" />
                <%
                    }
                 }
                %>
            </div>
            <%
                }
        }
            %>
            <span id="addnew"><a href="javascript:void(0);"><img src="../../../App_Themes/AdminDefaultTheme/images/padd.jpg" width="15" height="15" />添加页签</a></span>
        </div>
    </div>
    <div id="Cut_home">
        网页剪取：
        <input type="text" id="txtUrl" value="http://www.zoomla.cn/" onkeyup="if(event.keyCode==13){ addcut();}" />
        <input type="button" id="txtOK" value="猛点我选定" onclick="addcut()" />
    </div>
    <div id="ho">

        <div id="home0" class="<%=getWidth()[0]%>">
            <span style="width: 100%; height: 1px; display: block;"></span>
            <%if (menuid == 0)
              { %>
            <div id="divCut14">
                <h1 class="gd">
                    <div class="title"><span><a href="#">更多>></a></span>相关应用</div>
                </h1>
                <div class="left_nav">
                    <ul>
                        <li><a href="/3d" target="_blank">3D网上超市</a></li>
                        <li><a href="/manage/Panoramic/PanoramicShow.aspx?id=1" target="_blank">三维全景</a></li>
                        <li><a href="/Questions/Default.aspx?id=1" target="_blank">在线组卷</a></li>
                        <li><a href="/try" target="_blank">眼镜试戴</a></li>
                    </ul>
                </div>
                <div class="title"><span><a href="#">更多>></a></span>快速导航</div>
                <div class="left_nav">
                    <ul>
                        <li><a href="#">教学中心</a></li>
                        <li><a href="#">视频中心</a></li>
                        <li><a href="#">教案下载</a></li>
                        <li><a href="#">教学中心</a></li>
                    </ul>
                </div>
                <div class="title">
                    <span><a href="#">更多>></a></span>密码箱</div>
                <div class="left_nav">
                    <ul>
                        <li><a href="http://www.kaixin001.com" target="_blank">开心网</a></li>
                        <li><a href="http://www.renren.com" target="_blank">人人网</a></li>
                        <li><a href="http://www.hx008.com" target="_blank">华夏互联</a></li>
                        <li><a href="http://www.51.com" target="_blank">51我的家</a></li>
                    </ul>
                </div>
            </div>
            <%} %>
        </div>
        <div id="home1" class="<%=getWidth()[1]%>">
            <%
if (Cuts != null && showCount > Cuts.Count)
{
    showCount = Cuts.Count;
}
if (Cuts != null)
{
    for (int i = 0; i < showCount; i++)
    {
        cut = Cuts[i];
        if (menuid == cut.MenuID)
        {
            %>
            <div id="divCut<%=i %>" class="divCut">
                <span class="<%=getClass()[0] %>"><a id="showORnone<%=i %>" title="<%=getsh(i)[0] %>" href="javascript:blockORnone(<%=cut.Id %>,'showORnone<%=i %>','divUrl<%=i %>')"
                    class=" <%=getsh(i)[1] %>"></a></span><span class="<%=getClass()[1] %>"><a id="atitle<%=i %>" class="atitle">
                        <%=cut.Title%></a></span>
                <h1 class="<%=getClass()[2] %>">
                </h1>
                <span class="<%=getClass()[3] %>"><a id="edit<%=i %>" title="编辑" href="javascript:editCut(<%=cut.Id %>,'atitle<%=i %>','edit<%=i%>')"
                    class=" aPic bgImg1"></a><a title="最大" href="javascript:maxCut('atitle<%=i %>','iframecut<%=i %>','cuthidden<%=i %>')"
                        class=" aPic bgImg2"></a><a title="删除" href="javascript: closeDiv(<%=cut.Id %>,'divCut<%=i %>')"
                            class=" aPic bgImg3"></a></span>
                <%= getCutDiv(i, cut)%>
            </div>
            <%
}
    }
} 
            %>
        </div>
        <div id="home2" class="<%=getWidth()[2]%>">
        <%if (menuid == 0)
          { %>
            <div id="divCut15">
                <h1 class="gd">
                    <div class="title"><span><a href="#">更多>></a></span>社区游戏与会员</div>
                </h1>
                <div class="rihgt_f">
                    <ul>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <%} %>
        </div>
  </div>
    <div id="editDiv" style="width: 250px; height: 200px; border: 10px #e6f2f8  solid; background-color: #fff; position: absolute; top: 300px; left: 50px; z-index: 9;
        display: none;">
        <div class="atitle">
            编辑：<a id="inputTitle" class="atitle">请输入</a><a class="acolse" href="javascript:javascript:hiddendiv('editDiv');">关闭</a></div>
        <div style="text-align: center; padding-top: 30px;">
            标题：
            <input id="ediText" type="text" class="ediText" />
            <br />
            <br />
            <br />
            <input id="editxtId" type="text" value="1" style="display: none;" />
            <input id="titleaid" type="text" value="1" style="display: none;" />
            <input id="editOK" onclick="editOK()" type="button" class="C_input" style="height: 22px;"  value="确定" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input id="editClose" onclick=" hiddendiv('editDiv')" class="C_input" type="button" style="height: 22px;" value="取消" />
        </div>
    </div>
    <div id="maxCut" style="width: 1000px; height: 768px; border: 1px #bbd5e4 solid; margin: 10px 15px; display: none; background-color: #fff; position: absolute; z-index: 10;">
        <div id="maxdivtitle" class="divTitle" style="width: 1000px;">
            <a class=" aPic bgImg4"></a><a id="maxTitle" class="atitle">输入标题</a>
            <div class="minspan"><a title="还原" href="javascript:hiddendiv('maxCut')" class="aPic bgImg6"></a></div>
        </div>
        <div id='divUrlMax' class="divUrlMax">
            <div id="maxcuthidden" style='width: 653px; height: 231px; overflow: hidden; margin: auto;'>
                <iframe id="iframemax" frameborder='0' scrolling='no' src=' ' style='width: 1024px;  height: 1500px; margin-top: 0px; margin-left: 0px;'></iframe>
            </div>
        </div>
    </div>
    
    <div id="cut_bottom">
        <p>
            <script language="javascript" type="text/javascript"> 
<!--
                var year = "";
                mydate = new Date();
                myyear = mydate.getYear();
                year = (myyear > 200) ? myyear : 1900 + myyear;
                document.write(year); 
--> 
            </script>
            &nbsp;Copyright&copy;&nbsp;
            <%Call.Label("{$SiteName/}"); %>
            All rights reserved.</p>
    </div>
</body>
</html>
