<%@ page language="C#" autoeventwireup="true" inherits="Microb_info_Letter, App_Web_vevnwosu" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>私信列表</title>
    <link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <script src="/JS/ajaxrequest.js"></script>
    <script src="/JS/Microb.js"></script>
    <SCRIPT src="/js/jquery.js" type=text/javascript></SCRIPT>
    <SCRIPT src="/js/artZoom.js" type=text/javascript></SCRIPT>
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
            <div class="warp_lbg">
                <div class="gan_rtheg">
                    <p class="p1">
                        <font class="gok"><a href="/t/Attation.aspx?Type=0">
                            <asp:Literal ID="Attention" runat="server"></asp:Literal></a></font><br />
                             <asp:Literal ID="hfAtt" runat="server"></asp:Literal>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="/t/Attation.aspx?Type=1">
                            <asp:Literal ID="Fans" runat="server"></asp:Literal></a></font><br />
                           <asp:Literal ID="liHfFans" runat="server"></asp:Literal>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="/t/info_MyWeibo.aspx">
                            <asp:Literal ID="Allnum" runat="server"></asp:Literal></a></font><br />
                            <asp:Literal ID="liMicb" runat="server"></asp:Literal>
                    </p>
                </div>
                <div class="lin">
                </div>
                <div class="nav">
                </div>
                  <div class="gl">
                    <span>个人资料</span><br />
                        <p id="p123" runat="server">填写教信息、职业信息，与同学、同事一起微博</p>
                        <asp:Label runat="server" ID="BirthDay" Text=""></asp:Label><br />
                        <asp:Label runat="server" ID="labQQ" Text=""></asp:Label><br />                        
                        <asp:Label runat="server" ID="lbqMSN" Text=""></asp:Label><br />
                </div>
                <div class="tj">
                    <a href="/t/UserInfo/info_Jiben.aspx">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/t/UserInfo/info_Jiben.aspx">更多>></a></div>
                
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
                <div class="tj">
                    <a href="/t/UserInfo/info_Jiben.aspx">添加</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/t/UserInfo/info_Jiben.aspx">管理>></a></div>
            </div>
            <div class="warp_lbot">
            </div>
            <div id="search">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" ImageUrl="../../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人" onfocus="this.value=''"></asp:TextBox>
            </div>
            <div class="wrap01_tit">
                <span><a href="#">24小时活跃户</a></span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="/t/userinfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font><br />
                                    <a href="#">
                                        <%#GetRemark(Eval("Remark","{0}"))%></a><br />
                                    <a href="#">
                                        <%#GetLastMob(Eval("UserID","{0}")) %></a><br />
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <br />
                    <br />
                    <div class="clear">
                    </div>
                </ul>
            </div>
            <div class="clear">
            </div>
            <div class="wrap02_bottom">
            </div>
            <div class="wrap01_tit">
                <span><a href="#">大家关注的主题</a></span></div>
            <div class="wrap02_content">
                <ul>
                    <asp:Repeater ID="repTheme" runat="server">
                        <ItemTemplate>
                            <li><a href="ThemeVBlog.aspx?id=<%#Eval("Id") %>">
                                <%#Eval("ThemeCon") %></a>(<%#Eval("Attention") %>)</li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <span><a href="#">更多关注主题.....</a></span>
            </div>
            <div class="wrap02_bottom">
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
                        <li><a href="/t/Content.aspx">者吧首页</a></li>
                        <li><a href="/t/Topic.aspx">主题者吧</a></li>
                        <li><a href="/t/TongCheng.aspx">同城者吧</a></li>
                        <li><a href="/t/MyMicrob.aspx">我的首页</a></li>
                        <li><a href="/t/UserInfo/info_MyWeibo.aspx">我的者吧</a></li>
                        <li><asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                         <li style="float: right; margin-right: 40px !important; margin-right:30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
             <div id="r_k_top">
            </div>
            <div id="r_k_main">
                <div class="top_tit01">
                <b><a href='info_Letter.aspx?Type=0'>收到的私信</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                <a href="info_Letter.aspx?Type=1">发送的私信</a></b></div>
                  <div class="lin"></div>
                <asp:HiddenField ID="hfid" runat="server" />
                <asp:Repeater ID="MicrobList" runat="server">
                    <ItemTemplate>
                        <div class="r_k_wp">
                            <ul>
                                <li>
                                    <%#GetUserinfo(Eval("MbID", "{0}"), Eval("inputer", "{0}"), Eval("TopicType", "{0}"), Eval("ForwardTID","{0}"))%>：<%#ShowIco(Eval("ID", "{0}"))%><%#GetBord(Eval("ForwardTID", "{0}"))%></li>
                                <li style="color: Gray;float:left">
                                    <%#GetTime(Eval("CreateTime","{0}"))%></li>
                                <li>
                                    <div style="float: right;">
                                        <%#GetLink(Eval("id", "{0}"))%></div>
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
        </div>
        <!--右边结束 -->
        <div class="clear">
        </div>
    </div>
    <div id="warp_bottom">
    </div>
    <div id="copyright">
        <ul>
            <li><a href="/Content.aspx?ItemID=1111">关于我们</a></li>
            <li>|</li>
            <li><a href="/Content.aspx?ItemID=1112">网站地图</a></li>
            <li>|</li>
            <li><a href="/Content.aspx?ItemID=1114">免责声明</a></li>
            <li>|</li>
            <li><a href="/Content.aspx?ItemID=1113">版权申明</a></li>
            <li>|</li>
            <li><a href="/Content.aspx?ItemID=1115">招贤纳士</a></li>
            <li>|</li>
            <li><a href="/Content.aspx?ItemID=1116">广告服务</a></li>
            <li>|</li>
            <li><a href="/Content.aspx?ItemID=1117">网站合作</a></li>
            <li>|</li>
            <li><a href="/ColumnList.aspx?NodeID=250">帮助中心</a></li>
            <li>|</li>
            <li><a href="/Content.aspx?ItemID=1118">投稿指南</a></li>
            <li>|</li>
            <li><a href="/Content.aspx?ItemID=1119">联系我们</a></li>
            <li>|</li>
            <li><a href="/ColumnList.aspx?NodeID=88">友情链接</a></li>
        </ul>
        <p>
            &copy Copyright 2010 信息日报社版权所有 ICP证：赣25222124-54122</p>
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
        function SelectLet(obj) {
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
            msgDetail.innerHTML = "<p align=center><iframe src='UserInfo/info_PrivateLetter.aspx?id="+obj+"' width='550' height='430' scrolling='no' frameborder='0'></iframe></p>"

        }
    </script>
    </form>
</body>
</html>
