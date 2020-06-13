<%@ page language="C#" autoeventwireup="true" inherits="t_pinglun, App_Web_vevnwosu" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-评论</title>
    <link href="../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <SCRIPT src="/js/artZoom.js" type=text/javascript></SCRIPT>
    <script type="text/javascript" src="../JS/ajaxrequest.js"></script>
    <script type="text/javascript" src="../JS/Microb.js"></script>
    <script type="text/javascript" language="javascript">
        function Show(obj) {
            var con = document.getElementById("con_" + obj).style.display;
            if (con == "") {
                document.getElementById("con_" + obj).style.display = "none";
            } else {
                document.getElementById("con_" + obj).style.display = "";
            }
        }
    </script>
    <link rel="stylesheet" type="text/css" href="../App_Themes/Microblog/style.css" />
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
                      <li class="font1"><asp:Literal ID="lblAddress" runat="server"></asp:Literal></li>
                    </ul>  
                    </div>
                    <br />
                </div>
                <div class="gan_k">
                    <p class="p1">
                        <font class="gok"><a href="Attation.aspx?Type=0">
                            <asp:Literal ID="Attention" runat="server"></asp:Literal></a></font><br />
                            <asp:Literal ID="hfAtt" runat="server"></asp:Literal>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="Attation.aspx?Type=1">
                            <asp:Literal ID="Fans" runat="server"></asp:Literal></a></font><br />
                            <asp:Literal ID="liHfFans" runat="server"></asp:Literal>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="UserInfo/info_MyWeibo.aspx">
                            <asp:Literal ID="Allnum" runat="server"></asp:Literal></a></font><br />
                            <asp:Literal ID="liMicb" runat="server"></asp:Literal>
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
                    <asp:ImageButton ID="ibSearch" runat="server" ImageUrl="../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox></div>
            <div class="wrap01_tit">
                <span><a href="#">24小时活跃用户</a></span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font><br />
                                    <%#GetRemark(Eval("Remark","{0}"))%><br />
                                    <%#GetLastMob(Eval("UserID","{0}")) %><br />
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="wrap02_bottom">
                </ul>
            </div>
            <div class="clear">
            </div>
               <div class="wrap01_tit">
                <span>人气推荐 top10</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater3" runat="server">
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
                         <li style="float: right; margin-right: 40px !important; margin-right:30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
                
            </div>
            <!--右边顶部 -->
            <div id="r_k_top">
            </div>
            <div id="r_k_main" runat="server">
                <div class="top_tit01">
                    <b><a href='pinglun.aspx?Type=0'>收到的评论</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="pinglun.aspx?Type=1">发送的评论</a></b></div>
                <div class="lin">
                </div>
                <asp:Repeater ID="repHot" runat="server">
                    <ItemTemplate>
                        <div class="r_k_main_content01">
                            <img src="../App_Themes/Microblog/images/themest<%#Container.ItemIndex+1 %>.png"
                                alt="" />
                            <img src="../App_Themes/Microblog/images/su.jpg" id="su" alt="" />
                            <ul>
                                <li>
                                    <asp:HiddenField ID="pid" Value='<%#Eval("id") %>">' runat="server" />
                                </li>
                                <li><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("UserId")%>"><%#GetUserName(Eval("UserId","{0}"))%></a>：<%#Eval("Content")%><%#GetBords(Eval("Id", "{0}"))%></li>
                                <li>
                                <div style="float:right"><%#GetLink(Eval("ID", "{0}"), Eval("UserId", "{0}"))%>
                                </div>
                                </li>
                                <li style="width: 100%; float: right">
                                    <div id='con_<%#Eval("id") %>' style="width: 95%; border: solid 1px #999; display: none; float: right">  
                                        <div style="float: right;">
                                            <input id="txtHuifu<%#Eval("id") %>" style="width:500px;margin-left: 15px; margin-right: 15px; height:23px" />
                                            <input id='btnCom_<%#Eval("id") %>' type="button" value="回复 " onclick="GetHui(<%#Eval("id") %>)" />
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="lin01">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div id="PageList" runat="server">
                </div>
                <div class="clear">
                </div>
                <div class="up">
                    <img src="../App_Themes/Microblog/images/up.jpg" alt="" /><a href="#">返回顶部</a></div>
            </div>
            <div id="r_k_end">
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <!--右边结束 -->
        <div class="clear">
        </div>
    </div>
    <div id="warp_bottom">
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
        <p>
            Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
    </div>
    </form>
</body>
</html>
