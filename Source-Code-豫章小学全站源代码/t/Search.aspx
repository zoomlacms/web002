<%@ page language="C#" autoeventwireup="true" inherits="Microb_Search, App_Web_vevnwosu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-搜索</title>
<link href="../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<script src="/JS/ajaxrequest.js"></script>
<script src="/JS/Microb.js"></script>
<SCRIPT src="/js/jquery.js" type=text/javascript></SCRIPT>
<SCRIPT src="/js/artZoom.js" type=text/javascript></SCRIPT>
<style>
.r_k_m_content{margin:0px 15px; }
</style>
</head>
<body>
<form id="form1" runat="server">
    <div id="warp">
        <div id="warp_l">
            <div id="warp_write">
            </div>
            <!--顶部白色撑下来 -->
            <div id="warp_ltop">
            </div>
            <div class="warp_lbgs">
                <div id="reg_l">
                    <div style=" float:left; width:80px; text-align:center;">
                        <asp:Image ID="userface" runat="server" />
                    </div>
                    <div style=" float:left;">
                    <ul>
                      <li class="warp_d"><a href="UserInfo/info_Jiben.aspx"><asp:Literal ID="lblName" runat="server"></asp:Literal></a></li>
                      <li class="font1"><asp:Literal ID="lblAddress" runat="server"></asp:Literal>
                    </ul>  
                    </div>
                    <br />
                </div>
                <div class="gan_k">
                    <p class="p1">
                        <font class="gok"><a href="Attation.aspx?Type=0">
                            <asp:Literal ID="Attention" runat="server"></asp:Literal></a></font><br />
                            <asp:Literal ID="hfAtt" runat="server" Visible="false"></asp:Literal>
                              <a href="/t/Attation.aspx?Type=0>">关注</a></li>
                           
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="Attation.aspx?Type=1">
                            <asp:Literal ID="Fans" runat="server"></asp:Literal></a></font><br />
                            <asp:Literal ID="liHfFans" runat="server" Visible="false"></asp:Literal>
                              <a href="/t/Attation.aspx?Type=1">粉丝</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="UserInfo/info_MyWeibo.aspx">
                            <asp:Literal ID="Allnum" runat="server"></asp:Literal></a></font><br />
                            <asp:Literal ID="liMicb" runat="server" Visible="false"></asp:Literal>
                              <a href="/t/UserInfo/info_MyWeibo.aspx">微博</a>
                    </p>
                </div>
                <div class="lin" style=" display:none;">
                </div>
                <div id="mobil" style="display:none">
                    <a href="">绑定手机上微博 随时随地看微博</a></div>
                <div class="nav">
                </div>
            </div>
            <div class="warp_lbot">
            </div>
            <div id="search">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" 
                        ImageUrl="../App_Themes/Microblog/images/s_b.jpg" 
                        onclick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
           <div class="wrap01_tit">
                <span>24小时活跃用户</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <li>
                             <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>"><%#Eval("UserName") %></a></font><br />
                                     <a href="#"><%#GetRemark(Eval("Remark","{0}")) %></a><br />
                                    <a href="#"><%#GetLastMob(Eval("UserID","{0}")) %></a><br />
                                </span>
                             </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="wrap02_bottom">
                </ul>
            </div>
            <div class="clear">
            </div>
            <div class="wrap01_tit">
                <span><a href="#">大家关注的主题</a></span></div>
            <div class="wrap02_content">
                <ul>
                <asp:Repeater ID="repTheme" runat="server">
                        <ItemTemplate>
                            <li><a href="ThemeVBlog.aspx?id=<%#Eval("Id") %>">
                                <%#Eval("ThemeCon","{0}")%></a>(<%#Eval("Attention") %>)</li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <span><a href="Topic.aspx">更多关注主题.....</a></span>
            </div>
            <div class="wrap02_bottom">
            </div>
             <div class="wrap01_tit"><span>人气推荐 top10</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                      <li><img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>"><%#Eval("UserName") %></a></font>
                                     <div style="margin-top:5px"><%#GetAttion(Eval("Userid","{0}")) %></div>
                                </span></li>
                    </ItemTemplate>
                </asp:Repeater>
                </ul>
                 <span style="float:right;margin-right:10px;"> <a href="/t/Fans.aspx">更多人气推荐...</a></span>
                <ul class="wrap02_bottom">
                </ul>
                  </div>
            <div class="clear"></div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
          <div id="warp_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="Content.aspx">者吧首页</a></li>
                        <li><a href="Topic.aspx">主题者吧</a></li>
                        <li><a href="TongCheng.aspx">同城者吧</a></li>
                        <li><a href="/t/MyMicrob.aspx">我的首页</a></li>
                        <li><a href="UserInfo/info_MyWeibo.aspx">我的者吧</a></li>
                        <li><asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                        <li style="float:right; margin-right:40px">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
             <div id="r_k_top"></div>
             
            <div id="r_k_main">
             <div class="r_k_m_content">
             <div class="tabStyle2"><ul id="SearLi" runat="server"></ul></div>
                <input type="text" id="searchKey" class="sear_input" maxlength="50" runat="server" name="searchKey" value="搜者吧/名人/标签"/>
               <asp:Button ID="btnsearch" runat="server" Text="搜索" onclick="btnsearch_Click" /></div>
                <div class="top_tit01"><b>您搜索的结果：</b></div>
                <div id="noContent" runat='server' visible="false" style="border:#CCC 1px solid;line-height:50px;font-size:14px;text-align:center">没有您要搜索的信息</div>
                <div id="Topic" runat="server">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="r_k_main_content01">
                            <img src="<%#GetUserFace(Eval("Inputer","{0}")) %>" width="50px" height="50px" />
                            
                            <ul>
                                <li><span>
                                <a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("MbID")%>">  <font color="#1A74E2"><%#Eval("Inputer")%></font></a>：</span><%#ShowIco(Eval("Content","{0}"))%></li>
                                <li><%#GetTime(Eval("CreateTime","{0}"))%></li>
                            </ul>
                        </div>
                        <div class="lin01"></div>
                    </ItemTemplate>
                </asp:Repeater></div>
                <div id="friend" runat="server">
                    <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="r_k_main_content01"> 
                        <img src="<%#GetUserFace(Eval(GetPara(),"{0}")) %>" width="50px" height="50px"/>
                            <ul>
                              <div class="userName"><strong><%#GetUserName(Eval(GetPara(), "{0}"))%></strong></div>
                              <span>TA关注<%#GetAttioninfo(Eval(GetPara(), "{0}"), "1")%>人,TA的粉丝<%#GetAttioninfo(Eval(GetPara(), "{0}"), "0")%>人</a></span>
                                <div class="funBox"><span style="float:right">
                                <input id='btn<%#Eval(GetPara()) %>' type="button" class="addAttention" onclick='Attions(0,<%#Eval(GetPara()) %>,2,<%#GetUserIds() %>)' value="立即关注" style='display:<%#getShow(Eval(GetPara(),"{0}"),"0")%>' />
                                <input id="cbtn<%#Eval(GetPara()) %>" type="button" value="取消关注" onclick='Attions(1,<%#Eval(GetPara()) %>,2,<%#GetUserIds() %>)' style='display:<%#getShow(Eval(GetPara(),"{0}"),"1")%>'" /></span></div>
                            </ul>
                        </div>
                        <div class="lin01">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                </div>
                <div class="up">
                  <div id="PageList" runat="server">
                </div>
                <div class="clear">
                </div>
                    <img src="../App_Themes/Microblog/images/up.jpg" /><a href="#">返回顶部</a></div>
                     
             </div>
    </div>
     <div class="clear">
        </div>

    </div>
        
    <div id="warp_bottom">
    </div>
    </div>
    <div id="copyright">
        <ul>
            <li><a href="">关于我们</a></li>
            <li>|</li>
            <li><a href="">网站地图</a></li>
            <li>|</li>
            <li><a href="">免责声明</a></li>
            <li>|</li>
            <li><a href="">版权申明</a></li>
            <li>|</li>
            <li><a href="">招贤纳士</a></li>
            <li>|</li>
            <li><a href="">广告服务</a></li>
            <li>|</li>
            <li><a href="">网站合作</a></li>
            <li>|</li>
            <li><a href="">帮助中心</a></li>
            <li>|</li>
            <li><a href="">投稿指南</a></li>
            <li>|</li>
            <li><a href="">联系我们</a></li>
            <li>|</li>
            <li><a href="">友情链接</a></li>
        </ul>
        <p>Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
    </div>
    </form>
</body>
</html>
