<%@ page language="C#" autoeventwireup="true" inherits="t_UserInfo_MyAttion, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>提到我的</title>
  <link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../js/ImgOper.js"></script>
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
                        <font class="gok"><a href="../Attation.aspx?Type=0">
                            <asp:Literal ID="Attention" runat="server"></asp:Literal></a></font><br />
                        <a href="../Attation.aspx?Type=0">关注</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="../Attation.aspx?Type=1">
                            <asp:Literal ID="Fans" runat="server"></asp:Literal></a></font><br />
                        <a href="../Attation.aspx?Type=1">粉丝</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="info_MyWeibo.aspx">
                            <asp:Literal ID="Allnum" runat="server"></asp:Literal></a></font><br />
                        <a href="info_MyWeibo.aspx">微博</a>
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
                <div class="tj">
                    <a href="info_Biaoqian.aspx">添加</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="info_Biaoqian.aspx">管理>></a></div>
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
                                <span><font class="blue"><a href="info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font><br />
                                    <a href="#">
                                        <%#Eval("Remark") %></a><br />
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
                <div class="top_im">
                    <asp:Image ID="Image1" runat="server" Width="120px" Height="120px" />
                    <span>
                        <asp:Literal ID="Bname" runat="server"></asp:Literal></span>
                    <ul>
                        <li>
                            <asp:Literal ID="lblAddress" runat="server"></asp:Literal></li>
                        <li><span id="spAdd" runat="server"></span>
                            <br />
                            <span id="spIncon" runat="server"></span></li>
                        <li><span id="spHtml" runat="server"></span></li>
                    </ul>
                </div>
                  <div class="top_tit01">
                    <b>提到我的(<asp:Literal ID="liNum" runat="server"></asp:Literal>)</b></div>
                <asp:HiddenField ID="hfid" runat="server" />
                <input type="hidden" id="hftype" />
                <asp:Repeater ID="MicrobList" runat="server">
                    <ItemTemplate>
                        <div class="r_k_main_content01">
                            <span>
                                <img src="<%#GetUserFace(Eval("Inputer","{0}")) %>" width="50px" height="50px" /></span>
                            <ul>
                                <a href="/t/UserInfo/info_MyWeibo.aspx?uid=<%#Eval("MbID")%>"><font color="#1A74E2"><%#Eval("Inputer")%></font></a>：<%#ShowIco(Eval("id", "{0}"))%> <%# GetBroads(Eval("id","{0}"))%></li>
                                <li><%#GetTime(Eval("CreateTime","{0}"))%></li>
                                <li><div style="float:right;"><%#GetLink(Eval("MbID", "{0}"), Eval("id", "{0}"))%></div></li>
                                 <li style="width:100%; float:right"> <div id='con_<%#Eval("id") %>'  name="divCont" style="width:99%;border:solid 1px #999; display:none;float:right">
                                    <div id='divCont<%#Eval("id") %>' style="width:100%;margin-left:5px;margin-top:5px;float:left"></div>
                                        <div style="width:100%;">
                                        <div id='tip<%#Eval("id") %>' style="float:left"></div>
                                        <input type="text" ID='txtCommon<%#Eval("id") %>' name='<%#Eval("id") %>' style="margin-left:5px; margin-right:5px;width:98%;height:23px" onkeyup='Comm(this,this.name)' />
                                        </div>
                                        <div style="float:right;"><input id='btnCom_<%#Eval("id") %>' type="button" value="转发"  onclick="g_Dile('<%#Eval("MbID") %>','<%#Eval("ForId") %>','<%#Eval("id") %>')" /></div>
                                    </div>
                                    </li>
                            </ul>
                        </div>
                        <div class="lin01">
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
        <p>Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
    </div>

    </form>
</body>
</html>
