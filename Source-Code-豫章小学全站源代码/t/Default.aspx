<%@ page language="C#" autoeventwireup="true" inherits="weibo_Default, App_Web_vevnwosu" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎访问<%Call.Label("{$SiteName/}");%>微博</title>
    <link href="../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../App_Themes/Microblog/style.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>    
    <SCRIPT src="/js/artZoom.js" type=text/javascript></SCRIPT>
    <script language="javascript">
        function doseach() {
            if (document.getElementById("sear_input").value == "搜索者吧、找人") {
                document.getElementById("sear_input").value = "";
            }
            else {
                if (document.getElementById("sear_input").value == "") {
                    document.getElementById("sear_input").value = "搜索者吧、找人";
                }
            }
        }

        function doname() {
            if (document.getElementById("txtLoginId").value == "请输入帐号") {
                document.getElementById("txtLoginId").value = "";
            }
            else {
                if (document.getElementById("txtLoginId").value == "") {
                    document.getElementById("txtLoginId").value = "请输入帐号";
                }
            }
        }

        function dopassword() {
            if (typeof (HTMLElement) != "undefined" && !window.opera) {
                HTMLElement.prototype.__defineGetter__("outerHTML", function () {
                    var a = this.attributes, str = "<" + this.tagName, i = 0; for (; i < a.length; i++)
                        if (a[i].specified)
                            str += " " + a[i].name + '="' + a[i].value + '"';
                    if (!this.canHaveChildren)
                        return str + " />";
                    return str + ">" + this.innerHTML + "</" + this.tagName + ">";
                });
                HTMLElement.prototype.__defineSetter__("outerHTML", function (s) {
                    var r = this.ownerDocument.createRange();
                    r.setStartBefore(this);
                    var df = r.createContextualFragment(s);
                    this.parentNode.replaceChild(df, this);
                    return s;
                });
                HTMLElement.prototype.__defineGetter__("canHaveChildren", function () {
                    return !/^(area|base|basefont|col|frame|hr|img|br|input|isindex|link|meta|param)$/.test(this.tagName.toLowerCase());
                });
            }
            var input = document.getElementById("txtPwd");
            if (input.value == "请输入密码") {
                input.value = "";
                input.outerHTML = "<input onblur=dopassword() id=txtPwd onselect=dopassword() onclick=dopassword() type=password name=txtPwd>";
                document.getElementById("txtPwd").focus();
                document.getElementById("txtPwd").focus();
            }
            else {
                if (document.getElementById("txtPwd").value == "") {
                    input.outerHTML = "<input onblur=dopassword() id=txtPwd onselect=dopassword() onclick=dopassword() type=text name=txtPwd>";
                    document.getElementById("txtPwd").value = "请输入密码";
                }
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
                <div id="reg_b">
                    <a href="../user/Register.aspx">
                        <img src="../App_Themes/Microblog/images/reg.jpg" alt="立即注册" /></a></div>
                <div class="lin">
                </div>
                <asp:TextBox ID="txtLoginId" runat="server" onblur="doname()" onselect="doname()"
                    onclick="doname()" Text="请输入帐号"></asp:TextBox>
                <asp:TextBox ID="txtPwd" runat="server" onblur="dopassword()" onselect="dopassword()"
                    onclick="dopassword()" Text="请输入密码"></asp:TextBox>
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                <div class="clear">
                </div>
                <div id="login_t">
                    <div class="div1">
                        <asp:CheckBox ID="remusrname" runat="server" CssClass="labelbox" /></div>
                    <div class="div3">
                        <label for="remusrname">
                            下次自动登录</label>
                        <a class="rt" href="" target="_blank">找回密码</a></div>
                </div>
                <div id="login_b">
                    <asp:ImageButton ID="ibLogin" runat="server" ImageUrl="~/App_Themes/Microblog/images/login.jpg"
                        OnClick="ibLogin_Click" /></div>
                <div id="mobil" style="display:none">
                    <a href="">如何用手机上微博</a></div>
            </div>
            <div class="warp_lbot">
            </div>
            <div id="search">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" ImageUrl="../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人" onblur="doseach()" onclick="doseach()"></asp:TextBox></div>
            <div class="wrap01_tit">
                <span><a href="#">24小时活跃用户</a></span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font><br />
                                    <a href="#">
                                        <%#GetRemark(Eval("Remark","{0}"))%></a><br />
                                    <a href="#">
                                        <%#GetLastMob(Eval("UserID","{0}")) %></a><br />
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="wrap02_bottom">
                </ul>
            </div>
            <div class="wrap01_tit">
                <span><a href="#">大家关注的主题</a></span></div>
            <div class="wrap02_content">
                <ul>
                    <asp:Repeater ID="repTheme" runat="server">
                        <ItemTemplate>
                            <li><a href="ThemeVBlog.aspx?id=<%#Eval("Id") %>">
                                <%#Eval("ThemeCon") %>(<%#Eval("Attention") %>)</a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <span><a href="Topic.aspx">更多关注主题.....</a></span>
            </div>
            <div class="wrap02_bottom">
            </div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="warp_rtop">
                <div id="nav">
                    <ul>
                        <li>者吧首页</li>
                        <li>主题者吧</li>
                        <li>同城者吧</li>
                        <li>我的者吧</li>
                        <li><asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                        
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
            <div id="r_k_top">
            </div>
            <div id="r_k_main">
                <div class="top_tit">
                    <span><a href="Topic.aspx">更多>></a></span><b>推荐主题</b></div>
                <div class="lin">
                </div>
                <div class="r_k_main_content">
                    <a class="bar_l_zt" id="bar_l_zt"></a>
                    <div class="pic_div_zt">
                        <ul id="photo_ul_zt">
                            <asp:Repeater ID="repeateTheme" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <p><%#GetImg(Eval("imgUrl","{0}"),Eval("ID","{0}"))%></p>
                                        <div><span><a href="ThemeVBlog.aspx?id=<%#Eval("ID") %>"><font color="#1A74E2">
                                                <%#Eval("ThemeCon")%></font></a></span> <span><%#Eval("Title")%></span>
                                            <label><%#GetNewTheme(Eval("ID","{0}")) %></label></div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <a class="bar_r_zt" id="bar_r_zt"></a>
                    <script type="text/javascript" src="/js/ued_func.js?1"></script>
                </div>
                <div class="top_tit01">
                    <b>大家正在者.....</b></div>
                <div class="lin">
                </div>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <table width="100%">
                        <div class="r_k_wp">
                            <ul>
                                <li style="float: left; margin-right: 10px; padding-right: 10px;">
                                    <img src="<%#GetUserFace(Eval("Inputer","{0}")) %>" width="50px" height="50px" />
                                </li>
                                <li style="float: left; width: 88%"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("MbID")%>">
                                    <font color="#1A74E2">
                                        <%#Eval("Inputer")%></font></a>：<%#ShowIco(Eval("id", "{0}"))%>
                                    <%# GetBroads(Eval("id","{0}"))%></li>
                                <li style="float: right; width: 89%">
                                    <div>
                                        <ul>
                                            <li style="float: left; width: 50%;">
                                                <%#GetTime(Eval("CreateTime","{0}"))%></li>
                                            <li style="float: left; text-align:right; width:50%">
                                                <%--<%#GetLink(Eval("MbID", "{0}"), Eval("id", "{0}"))%>--%>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li style="width: 100%; float: left">
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
                                            <input id='btnCom_<%#Eval("id") %>' type="button" value="转发 " onclick="g_Dile('<%#Eval("MbID") %>','<%#Eval("ForId") %>','<%#Eval("id") %>')" />
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="lin01">
                        </div>
</table>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="up">
                    <img src="../App_Themes/Microblog/images/up.jpg" /><a href="#">返回顶部</a></div>
                <div id="PageList" runat="server">
                </div>
                <div style="clear: both;">
                </div>
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
