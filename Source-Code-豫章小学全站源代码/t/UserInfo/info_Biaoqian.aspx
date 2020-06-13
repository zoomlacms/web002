<%@ page language="C#" autoeventwireup="true" inherits="Weibo_UserInfo_info_Biaoqian, App_Web_p1zoqyfi" enableeventvalidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-个人教育信息</title>
    <link href="/App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <style>
        .lables
        {
            border: #CCC 1px solid;
            display: block;
            float: left;
            margin-left: 5px;
            padding: 0px 3px;
        }
        .del
        {
        }
        .del:hover
        {
            color: #F00;
            text-decoration: none;
        }
    </style>
    <script src="/JS/citylist.js" type="text/javascript"></script>
    <script src="/JS/ajaxrequest.js"></script>
    <script src="/JS/Microb.js"></script>
    <script type="text/javascript">
        var ajax = new AJAXRequest();
        function DelLetter(key) {
            ajax.get(
		"/t/DataCommon.aspx?oper=delLable&key=" + encodeURI(key),
		function (obj) {
		    var res = obj.responseText;
		    if (res == "-1") {
		        alert("删除失败!");
		    }
		    else if (res == "-2") {
		        alert("不存在此标签!");
		    }
		    else {
		        location.href = location.href;
		    }
		}
	);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="warp">
        <div id="warp_l">
            <div id="zhu_ltop">
            </div>
            <div class="zhu_s">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" CausesValidation="false" runat="server" ImageUrl="../../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="zhu_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="../Content.aspx">者吧首页</a></li>
                        <li><a href="../Topic.aspx">主题者吧</a></li>
                        <li><a href="../TongCheng.aspx">同城者吧</a></li>
                        <li><a href="../MyMicrob.aspx">我的首页</a></li>
                        <li><a href="info_MyWeibo.aspx">我的者吧</a></li>
                        <li> <asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                       
                         <li style="float: right; margin-right: 40px !important; margin-right:30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
        </div>
        <!--右边结束 -->
        <div id="zhu_content">
            <div id="zhu_top">
                <ul>
                    <li><a href="info_Jiben.aspx">个人资料</a></li>
                    <li><a href="info_Touxiang.aspx">修改头像</a></li>
                    <li><a href="info_UpdatePwd.aspx">修改密码</a></li>
                    <li><a href="UserDomain.aspx">个性化域名</a></li>
                    <li><a href="info_Biaoqian.aspx" class="zhu_a">个人标签</a></li>
                    <li><a href="info_Secrecy.aspx">隐私保护</a></li>
                    <li><a href="UserGroup.aspx">黑名单</a></li>
                </ul>
            </div>
            <div style="padding: 20px">
                <div class="div4">
                    <br />
                    添加描述自己职业、兴趣爱好等方面的词语，让更多人找到你，让你找到更多同类
                    <br /><br />
                    <div>
                        <div class="div1">
                            <asp:TextBox ID="txtBiaoQian" runat="server" CssClass="yonghu1" Text="请选择你喜欢的标签，标签之间用空格分开"></asp:TextBox>
                            <asp:Button ID="btnAddBiaoQian" runat="server" Text="添加标签" CssClass="baoc1" OnClick="btnAddBiaoQian_Click" />
                            <br />
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不能添加空标签"
                                ControlToValidate="txtBiaoQian"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            您可能感兴趣的标签(点击直接添加)：<br /><br />
                            <asp:DataList ID="dlBiaoQian" runat="server"  RepeatDirection="Horizontal"  
                                RepeatColumns="4" 
                                onitemcommand="dlBiaoQian_ItemCommand">
                                <ItemTemplate>
                                    <div class="div44">
                                       <asp:LinkButton ID="d" runat="server" CommandArgument='<%# Eval("name") %>' CommandName="addName">+<%# Eval("name") %> </asp:LinkButton></div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div id="addBiaoQian" runat="server">
                        <div>
                            <div class="div1">
                                我已经添加的标签：
                            </div>
                            <div class="div11">
                                <a href="#">将我的标签推荐给朋友</a></div>
                        </div>
                        <br /><br />
                        <div>
                            <asp:DataList ID="dlAddBiaoQian" runat="server" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <div>
                                        <%#GetContent(Eval("BiaoQian", "{0}"))%></div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div>
                    关于标签：
                    <br />
                    <br />
                    <font size="2px">·标签是自定义描述自己职业、兴趣爱好的关键词，让更多人找到你，让你找到更多同类。<br />
                        ·已经添加的标签将显示在“我的微博”页面右侧栏中，方便大家了解你。<br />
                        ·在此查看你自己添加的所有标签，还可以方便地管理，最多可添加10个标签。<br />
                        ·点击你已添加的标签，可以搜索到有同样兴趣的人。</font>
                </div>
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
            <p>
                Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
        </div>
    </form>
</body>
</html>
