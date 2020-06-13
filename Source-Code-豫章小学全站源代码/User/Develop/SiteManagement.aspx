<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteManagement, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html >
<head runat="server">
<title>网即通-网站管理</title>
<link href="Css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="whole">
        <div class="Advertisement"><img src="/user/develop/images/advertisement.jpg" alt="Google广告" /></div>
        <div class="Content" style="font-size:12px;">
            <div class="Function">
                <div class="Website2">
                    <div class="Title">
                    <div  class="font4">我的网站：</div>
                    </div>
                    <div>
                        <div class="Website1"  style="margin-top:15px"><asp:Label ID="lbname" runat="server" Text="Label"></asp:Label></div>
                        <div class="Website1"  style="margin-top:15px"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
                    </div>
                </div>
                <div class="Website">
                    <div class="Title"><div class="font4"> 帐号密码：</div></div>
                    <div>
                        <div  class="Website1" style="margin-top:15px">
                            修改密码：<a href="SiteAdmin/UpdatePwd.aspx" target="_self">修改帐户/密码</a>
                        </div>
                        <div  class="Website1" style="margin-top:15px ; display:none;" >
                            登录地址：<a href="#"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;收藏</a>
                        </div>
                    </div>
                </div>
                <div class="Questions">
                    <div class="Title"><div  style=" padding-left:10px; padding-top:5px;"> <img src="images/15.jpg" />常见问题：</div></div>
                    <div>
                        <ul><%Call.Label("{ZL.Label id=\"输出指定节点标题_无时间属性\" NodeID=\"102\" TitleNum=\"30\" ShowNum=\"10\" /}"); %></ul>
                    </div>
                </div>
            </div>
            <%--******************rigth**************************--%>
            
            <div class="Link">
             <%--******************rigth1**************************--%>
                <div class="Title2"> <div class="font4">操作引导：</div></div>
             <%--******************rigth3**************************--%>
                <div class="rigth1">
                    <div class="rigth1_1">
                        <div class="font"><span style=" font-size:22px; font-weight:bold;">1.</span>完善网站信息</div>
                        <div class="css">
                            <div class="font2"><a href="Model/siteinfobase.aspx" target="_self"><img border=0 src="images/1.jpg" /></a><br /><br /><a href="Model/siteinfobase.aspx" target="_self">基本设置</a> </div>
                            <div class="font2"><a href="/user/Develop/InsertUrlRewr.aspx" target="_self"><img border=0 src="images/2.jpg" /></a><br /><br /><a href="/user/Develop/InsertUrlRewr.aspx" target="_self">域名绑定</a> </div>
                            <div class="font2"><a href="siteAdmin/Counter.aspx" target="_self"><img border=0 src="images/3.png" /></a><br /><br /><a href="siteAdmin/Counter.aspx" target="_self">流量统计</a> </div>
                        </div>
                    </div>
                    <div class="rigth1_1">
                        <div class="font"><span style=" font-size:22px; font-weight:bold;">3.</span>美化设计网站</div>
                        <div class="css">
                            <div class="font3"><a href="/User/Develop/Default.aspx" target="_parent"><img border=0 src="images/7.jpg" /></a><br /><br /><a href="/User/Develop/Default.aspx" target="_parent">设计网页</a></div>
                            <div class="font3"><a href="/User/Develop/SiteAdmin/Default.aspx" target="_parent"><img border=0 src="images/8.jpg" /></a><br /><br /><a href="/User/Develop/SiteAdmin/Default.aspx" target="_parent">网页管理</a></div>
                        </div>
                    </div>
                    <div class="rigth1_1">
                        <div class="font"><span style=" font-size:22px; font-weight:bold;">5.</span>搜索引擎优化设置</div>
                        <div class="rigth1_2">&nbsp; &nbsp; &nbsp; &nbsp;在您完成了网站基本的美化和功能设置工作后，请对您的网页做关键词优化工作。这样有利于您的网站被搜索引擎抓取便于网站的推广。</div>
                        <div class="rigth1_3">
                           <input id="Button1" type="button" value="优化" onclick="location.href='Model/siteinfobase.aspx'" /> </div>
                    </div>
                </div>
                 <%--******************rigth2**************************--%>
                <div class="rigth2">
                    <div class="rigth1_1">
                        <div class="font"><span style=" font-size:22px; font-weight:bold;">2.</span>添加或修改网站内容 </div>
                        <div class="css">
                            <div class="font2"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=2" target="_self"><img border=0 src="images/4.png" /></a><br /><br /><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=2" target="_self">文章</a></div>
                            <div class="font2"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=6" target="_self"><img border=0 src="images/5.jpg" /></a><br /><br /><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=6" target="_self">商品</a></div><!--/User/Develop/AppStore.aspx-->
                            <div class="font2"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=3" target="_self"><img border=0 src="images/6.jpg" /></a><br /><br /><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=3" target="_self">相册</a></div>
                        </div>
                    </div>
                    <div class="rigth1_1">
                        <div class="font"><span style=" font-size:22px; font-weight:bold;">4.</span>开通或设置网站功能 </div>
                        <div class="css">
                            <div class="font2"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=98" target="_self"><img border=0 src="images/9.jpg" /></a><br /><br /><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=98" target="_self">购物</a></div>
                            <div class="font2"><a href="SiteAdmin/Member.aspx" target="_self"><img border=0 src="images/10.jpg" /></a><br /><br /><a href="SiteAdmin/Member.aspx" target="_self">会员</a></div>
                            <div class="font2"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=96" target="_self"><img border=0 src="images/11.jpg" /></a><br /><br /><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=96" target="_self">论坛</a></div>
                        </div>
                    </div>
                    <div class="rigth1_1">
                    <div class="font"><span style=" font-size:22px; font-weight:bold;">6.</span>备份和网站重置 </div>
                    <div class="css">
                            <div class="font5"><div style ="text-align:center"><a href="SiteAdmin/BackupSite.aspx"><img border=0 src="images/12.jpg" /></a></div><div style ="text-align:center"><a href="SiteAdmin/BackupSite.aspx" target="_self">网站备份</a></div></div>
<%--                            <div class="font5"><div style ="text-align:center"><img border=0 src="images/14.jpg" /></div><div style ="text-align:center"><input id="Button3" type="button" value="网站重置" /></div></div>
--%>                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
    </form>
</body>
</html>