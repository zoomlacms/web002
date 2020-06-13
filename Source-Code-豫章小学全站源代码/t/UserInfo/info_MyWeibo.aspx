<%@ page language="C#" autoeventwireup="true" inherits="Weibo_UserInfo_info_MyWeibo, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>我的微博</title>
    <link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <style>
        #flotop
        {
            width: 100%;
        }
        #flotop
        {
            height: 30px;
            background: url(../images/top_bg.gif) repeat-x;
            z-index: 99;
        }
        /*顶部高为30px导航样式**/
        #msgDiv, #mgDiv
        {
            z-index: 10001;
            width: 550px;
            height: 350px;
            background: white;
            border: #CCC 1px solid;
            position: absolute;
            left: 50%;
            top: 20%;
            font-size: 12px;
            margin-left: -225px;
            display: none;
        }
        #bgDiv
        {
            display: none;
            position: absolute;
            top: 0px;
            left: 0px;
            right: 0px;
            background-color: #777;
            filter: progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=25,finishOpacity=75)opacity: 0.6;
        }
        /*弹出层*/
        #msgShut, #mgShut
        {
            width: 30px;
            height: 20px;
            cursor: pointer;
            line-height: 20px;
            text-align: center;
            float: right;
            color: #F00;
            font-weight: bold;
        }
    </style>
    <script src="/JS/ajaxrequest.js"></script>
    <script src="/JS/Microb.js"></script>
    <script type="text/javascript">

        var url = window.location.href;

        function g_del(id) {   //删除
            g_dels(id, url);
        }

        function g_Dile(userid, forid, id) {  //添加
            g_Diles(userid, forid, id, url);
        }

        function Comm(Obj, val) {
            var value = Obj.value.replace(/(^\s*)|(\s*$)/g, "");
            var tips = document.getElementById("tip" + val);

            if (Obj.value.length <= 140) {
                tips.innerHTML = "还能输入" + (140 - Obj.value.length) + "个字";
                document.getElementById("btnCom_" + val).disabled = "";
            } else {
                tips.innerHTML = "<font color='red'>超出" + (Obj.value.length - 140) + "个字</font>";
                document.getElementById("btnCom_" + val).disabled = "disabled";
            }
        }

    </script>
    <script src="/js/jquery.js" type="text/javascript"></script>
    <script src="/js/artZoom.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="hftype" />
    <div id="warp">
        <div id="warp_l">
            <div id="warp_write">
            </div>
            <!--顶部白色撑下来 -->
            <div id="warp_ltop">
            </div>
            <div class="warp_lbg">
                <div class="gan_rtheg">
                    <p class="p1">
                        <font class="gok"><a href="../Attation.aspx?Type=0&uid=<%=Request.QueryString["uid"] %>">
                            <asp:Literal ID="Attention" runat="server"></asp:Literal></a></font><br />
                        <a href="/t/Attation.aspx?Type=0&uid=<%=Request.QueryString["uid"] %>">关注</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="../Attation.aspx?Type=1&uid=<%=Request.QueryString["uid"] %>">
                            <asp:Literal ID="Fans" runat="server"></asp:Literal></a></font><br />
                        <a href="/t/Attation.aspx?Type=1&uid=<%=Request.QueryString["uid"] %>">粉丝</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="info_MyWeibo.aspx?uid=<%=Request.QueryString["uid"] %>">
                            <asp:Literal ID="Allnum" runat="server"></asp:Literal></a></font><br />
                        <a href="/t/userinfo/info_MyWeibo.aspx?uid=<%=Request.QueryString["uid"] %>">微博</a>
                    </p>
                </div>
                <div class="lin">
                </div>
                <div class="nav">
                </div>
                <div class="gl">
                    <span>个人资料</span><br />
                    <p id="p123" runat="server">
                        填写教信息、职业信息，与同学、同事一起微博</p>
                    <asp:Label runat="server" ID="BirthDay" Text=""></asp:Label><br />
                    <asp:Label runat="server" ID="labQQ" Text=""></asp:Label><br />
                    <asp:Label runat="server" ID="lbqMSN" Text=""></asp:Label><br />
                </div>
                <div class="tj" id="DivUpd" runat='server'>
                    <a href="info_Jiben.aspx">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="info_Jiben.aspx">更多>></a></div>
                <div class="gl">
                    <span>
                        <asp:Literal ID="lblName" runat="server"></asp:Literal>的标签</span><br />
                    <div id="lables" runat="server">
                        <asp:DataList ID="dlBiaoQian" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                            <ItemTemplate>
                                <%#GetCont(Eval("BiaoQian", "{0}"))%>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
                <div class="gl" id="labless" runat="server">
                    <p>
                        添加描述自己的职业、兴趣爱好等方面的词语，找到同类，也让同类找到你</p>
                </div>
                <div class="tj" id="DivLab" runat="server">
                    <a href="info_Biaoqian.aspx">添加</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="info_Biaoqian.aspx">管理>></a></div>
            </div>
            <div class="warp_lbot">
            </div>
            <div id="search">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" CausesValidation="false" ImageUrl="../../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人" onfocus="this.value=''"></asp:TextBox>
            </div>
            <div class="wrap01_tit">
                <span>24小时活跃用户</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font><br />
                                    <%#GetRemark(Eval("Remark","{0}"))%><br />
                                    <%#GetLastMob(Eval("UserID","{0}")) %><br />
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div style="clear: both;" class="wrap02_bottom">
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="wrap01_tit">
                <span><a href="#">大家关注的主题</a></span></div>
            <div class="wrap02_content">
                <ul>
                    <asp:Repeater ID="repTheme" runat="server">
                        <ItemTemplate>
                            <li><a href="/t/ThemeVBlog.aspx?id=<%#Eval("Id") %>">
                                <%#Eval("ThemeCon") %></a>(<%#Eval("TopicNum")%>)</li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <span><a href="/t/Topic.aspx">更多关注主题.....</a></span>
            </div>
            <div style="clear: both;" class="wrap02_bottom">
            </div>
            <div class="wrap01_tit">
                <span>人气推荐 top10</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font>
                                    <div style="margin-top: 5px">
                                        <%#GetAttion(Eval("Userid","{0}")) %></div>
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <span style="float: right; margin-right: 10px;"><a href="/t/Fans.aspx">更多人气推荐...</a></span>
                <div style="clear: both;" class="wrap02_bottom">
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="warp_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="../Content.aspx">者吧首页</a></li>
                        <li><a href="../Topic.aspx">主题者吧</a></li>
                        <li><a href="../TongCheng.aspx">同城者吧</a></li>
                        <li><a href="../MyMicrob.aspx">我的首页</a></li>
                        <li><a href="info_MyWeibo.aspx">我的者吧</a></li>
                        <li>
                            <asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                        <li style="float: right; margin-right: 40px !important; margin-right: 30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
            <div id="r_k_top">
            </div>
            <div id="r_k_main">
                <div class="top_im">
                    <asp:Image ID="Image1" runat="server" Width="120px" Height="120px" />
                    <span>
                        <asp:Literal ID="Bname" runat="server"></asp:Literal></span>
                    <ul>
                        <li>
                            <asp:Literal ID="lblAddress" runat="server"></asp:Literal>&nbsp;&nbsp;
                            <asp:Literal ID="liLetter" runat="server"></asp:Literal>
                            <asp:Literal ID="liBlack" runat="server"></asp:Literal></li>
                        <li><span id="spAdd" runat="server"></span>
                            <br />
                            <span id="spIncon" runat="server"></span></li>
                        <li><span id="spHtml" runat="server"></span></li>
                    </ul>
                    <asp:Button runat="server" Text="我要发微博" ID="fabuid" OnClick="fabuid_Click" />
                </div>
                <div class="top_im_t">
                    <div class="top_q">
                        <%
                            if (ZoomLa.Common.DataConverter.CLng(Request.QueryString["Type"]) == 0)
                            {
                        %>
                        <b><a href="info_MyWeibo.aspx?uid=<%=Request.QueryString["uid"] %>">全部</a></b>
                        <%
                            }
                            else
                            {
                        %>
                        <a href="info_MyWeibo.aspx?uid=<%=Request.QueryString["uid"] %>">全部</a>
                        <%
                            }
                        %>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <%
                            if (ZoomLa.Common.DataConverter.CLng(Request.QueryString["Type"]) == 1)
                            {
                        %>
                        <b><a href="info_MyWeibo.aspx?Type=1&uid=<%=Request.QueryString["uid"] %>">原创</a></b>
                        <%
                            }
                            else
                            {
                        %>
                        <a href="info_MyWeibo.aspx?Type=1&uid=<%=Request.QueryString["uid"] %>">原创</a>
                        <%
                            }
                        %>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <%
                            if (ZoomLa.Common.DataConverter.CLng(Request.QueryString["Type"]) == 2)
                            {
                        %>
                        <b><a href="info_MyWeibo.aspx?Type=2&uid=<%=Request.QueryString["uid"] %>">图片</a></b>
                        <%
                            }
                            else
                            {
                        %>
                        <a href="info_MyWeibo.aspx?Type=2&uid=<%=Request.QueryString["uid"] %>">图片</a>
                        <%
                            }
                        %>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <%
                            if (ZoomLa.Common.DataConverter.CLng(Request.QueryString["Type"]) == 3)
                            {
                        %>
                        <b><a href="info_MyWeibo.aspx?Type=3&uid=<%=Request.QueryString["uid"] %>">视频</a></b>
                        <%
                            }
                            else
                            {
                        %>
                        <a href="info_MyWeibo.aspx?Type=3&uid=<%=Request.QueryString["uid"] %>">视频</a>
                        <%
                            }
                        %>&nbsp;&nbsp;</div>
                    <div class="top_s">
                        <input id="top_s_input" value="搜索自己的话..." runat="server" onfocus="this.value=''" />
                        <asp:ImageButton src="../../App_Themes/Microblog/images/ti.jpg" alt="搜索" runat="server"
                            ID="sear" OnClick="sear_Click"  />
                    </div>
                </div>
                <asp:HiddenField ID="hfid" runat="server" />
                <asp:Repeater ID="MicrobList" runat="server">
                    <ItemTemplate>
                        <div class="r_k_wp">
                            <ul>
                                <li>
                                    <%#GetUserinfo(Eval("MbID","{0}"),Eval("inputer","{0}"),Eval("TopicType","{0}"))%>：<%#ShowIco(Eval("id", "{0}"))%>
                                    <%#GetBroads(Eval("id","{0}"))%></li>
                                <li style="width: 100%; float: left; margin-left: 0px">
                                    <div style="width: 100%">
                                        <ul>
                                            <li style="float: left; width: 49%;">
                                                <%#GetTimeFormat(Eval("CreateTime","{0}")) %>&nbsp;&nbsp;<font color="#CCCCCC"><%#GetTypes(Eval("SendType", "{0}"))%></font></li>
                                            <li style="float: left; width: 50%; text-align: right;">
                                                <div>
                                                    <%#GetLink(Eval("MbID", "{0}"), Eval("id", "{0}"))%></div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li style="width: 100%; float: right">
                                    <div id='con_<%#Eval("id") %>' name="divCont" style="width: 99%; border: solid 1px #999;
                                        display: none; float: right">
                                        <div id='divCont<%#Eval("id") %>' style="width: 100%; margin-left: 5px; margin-top: 5px;
                                            float: left">
                                        </div>
                                        <div style="width: 100%;">
                                            <div id='tip<%#Eval("id") %>' style="float: left">
                                            </div>
                                            <input type="text" id='txtCommon<%#Eval("id") %>' name='<%#Eval("id") %>' style="margin-left: 5px;
                                                margin-right: 5px; width: 98%; height: 23px" onkeyup='Comm(this,this.name)' /></div>
                                        <div style="float: right;">
                                            <input id='btnCom_<%#Eval("id") %>' type="button" value="转发" onclick="g_Dile('<%#Eval("MbID") %>','<%#Eval("ForId") %>','<%#Eval("id") %>')" /></div>
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
                <div class="up">
                    <img src="../../App_Themes/Microblog/images/up.jpg" /><a href="#">返回顶部</a></div>
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
    <div id="flotop">
        <div id="msgDiv">
            <div id="msgShut">
                关闭</div>
            <div id="msgDetail">
            </div>
        </div>
        <div id="bgDiv">
        </div>
    </div>
    <script>

        ///发私信
        function SelectLet() {
            //背景
            var bgObj = document.getElementById("bgDiv");
            bgObj.style.width = (document.body.offsetWidth) + "px";
            bgObj.style.height = screen.height + "px";

            //定义窗口
            var msgObj = document.getElementById("msgDiv");
            msgObj.style.marginTop = -75 + document.documentElement.scrollTop + "px";
            //关闭
            document.getElementById("msgShut").onclick = function () {
                bgObj.style.display = msgObj.style.display = "none";
            }
            msgObj.style.display = bgObj.style.display = "block";
            var uid = <%=Request.QueryString["uid"] %>
            msgDetail.innerHTML = "<p align=center><iframe src='info_PrivateLetter.aspx?uid="+uid+"' width='550' height='430' scrolling='no' frameborder='0'></iframe></p>"

        }
    </script>
    </form>
</body>
</html>
