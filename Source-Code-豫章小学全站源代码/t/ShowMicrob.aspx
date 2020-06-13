<%@ page language="C#" autoeventwireup="true" inherits="t_ShowMicrob, App_Web_vevnwosu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>微博详情</title>
   <link href="../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
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
    <SCRIPT src="/js/jquery.js" type=text/javascript></SCRIPT>
    <SCRIPT src="/js/artZoom.js" type=text/javascript></SCRIPT>
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
    <input type="hidden" id="hftype" />
    <div id="warp">
        <div id="warp_l">
            <div id="warp_write">
            </div>
            <!--顶部白色撑下来 -->
             <div id="warp_ltop01">
                <div class="warp_zi"><a href="#">同城热门话题</a></div>
            </div>
            <div class="warp_lbg01">
                <div class="warp_t">
                    <ul>
                    <asp:Repeater ID="repHotCity" runat="server">
                        <ItemTemplate>
                          <li><span>
                            <img src="../App_Themes/Microblog/images/icon00.gif" alt="" /></span><a href='ThemeVBlog.aspx?id=<%#Eval("ID") %>'><%#Eval("ThemeCon") %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    </ul>
                </div>
                <br />
            </div>
            <div class="warp_lbot">
            </div>
            <div id="search">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" ImageUrl="../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" />
                </div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
            <div class="wrap01_tit">
                <span><a href="#">24小时活跃用户</a></span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                              <li>
                               <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>"><%#Eval("UserName") %></a></font><br />
                                     <%#Eval("Remark") %><br />
                                    <%#GetLastMob(Eval("UserID","{0}")) %><br />
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div style=" clear:both;"  class="wrap02_bottom"></div>
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
                <span><a href="Topic.aspx">更多关注主题.....</a></span>
                
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
                <div style=" clear:both;"  class="wrap02_bottom"></div>
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
                        <li><a href="MyMicrob.aspx">我的首页</a></li>
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
            <div id="r_k_main">
                <div class="top_im">
                    <asp:Image ID="Image1" runat="server" />
                     <span><asp:Literal ID="bTopic" runat="server"></asp:Literal></span>
                        <div><asp:Literal ID="liLink" runat="server"></asp:Literal></div>
                        <ul>
                    <li style="width: 70%; float: right">
                        <div id='con_<%=Request.QueryString["ID"] %>' name="divCont" style="width: 99%; border: solid 1px #999; display: none; float: right">
                            <div id='divCont<%=Request.QueryString["ID"] %>' style="width: 100%; margin-left: 5px; margin-top: 5px;
                                float: left">
                            </div>
                            <div style="width: 100%;">
                                <div id='tip<%=Request.QueryString["ID"] %>' style="float: left">
                                </div>
                                <input type="text" id='txtCommon<%=Request.QueryString["ID"] %>' name='<%=Request.QueryString["ID"] %>' style="margin-left: 5px;
                                    margin-right: 5px; width: 98%; height: 23px" onkeyup='Comm(this,this.name)' />
                            </div>
                            <div style="float: right;">
                                <asp:Literal ID="liCom" runat="server"></asp:Literal>
                            </div>
                        </div>
                    </li></ul>
                </div>
                    <div class="top_tit01"> <b>共<asp:Literal ID="liSendto" runat="server"></asp:Literal>条转发</b></div>
                <div class="lin"></div>
                <asp:Repeater ID="MicrobList" runat="server">
                    <ItemTemplate>
                      <div class="r_k_main_content01">
                          <span><img src="<%#GetUserFace(Eval("Inputer","{0}")) %>" width="50px" height="50px" /></span>
                            <ul>
                                <li>
                                    <p> <a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("MbID")%>"><font color="#1A74E2">
                                    <%#Eval("Inputer")%></font></a>： <%#ShowIco(Eval("ID", "{0}"))%></p>
                                </li>
                                <li><span style="float:right">
                                    <%#GetLink(Eval("MbID", "{0}"), Eval("id", "{0}"))%></span>
                                    <%#GetTimeFormat(Eval("CreateTime","{0}")) %>&nbsp;&nbsp;<font color="#CCCCCC"><%#GetTypes(Eval("SendType", "{0}"))%></font></li>
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
                                                margin-right: 5px; width: 98%; height: 23px" onkeyup='Comm(this,this.name)' />
                                        </div>
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
</form>
</body>
</html>

