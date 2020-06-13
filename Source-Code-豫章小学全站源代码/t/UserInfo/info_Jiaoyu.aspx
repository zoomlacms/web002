<%@ page language="C#" autoeventwireup="true" inherits="Weibo_UserInfo_info_Jiaoyu, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-个人教育信息</title>
<link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<script src="../../JS/citylist.js" type="text/javascript"></script>
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
                        <li><asp:Literal ID="liSite" runat="server"></asp:Literal></li>
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
                    <li><a href="info_Jiben.aspx" class="zhu_a">个人资料</a></li>
                    <li><a href="info_Touxiang.aspx">修改头像</a></li>
                    <li><a href="info_UpdatePwd.aspx" >修改密码</a></li>
                    <li><a href="UserDomain.aspx">个性化域名</a></li>
                    <li><a href="info_Biaoqian.aspx">个人标签</a></li>
                    <li><a href="info_Secrecy.aspx">隐私保护</a></li>
                    <li><a href="UserGroup.aspx">&nbsp;&nbsp;&nbsp;&nbsp;黑名单</a></li>
                </ul>
            </div>
            <div id="zhu_hang">
                <span>以下信息将显示<b><a href="#">在你的个人资料页</a></b>,方便大家了解你 。</span><b><a href="info_Jiben.aspx">基本信息</a></b>&nbsp;&nbsp;&nbsp;|教育信息&nbsp;&nbsp;&nbsp;|<b><a href="info_Zhiye.aspx">职业信息</a></b>
            </div>
            <div class="bitian">
                <asp:DropDownList ID="ddlSelect" runat="server" CssClass="select">
                    <asp:ListItem Value="0">所有人可见</asp:ListItem>
                    <asp:ListItem Value="1">我关注的人可见</asp:ListItem>
                    <asp:ListItem Value="2">仅自己可见</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="bitian1">
                所在地：
                <asp:DropDownList ID="province" runat="server" CssClass="select01" AutoPostBack="true" onselectedindexchanged="province_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="city" runat="server" CssClass="select01">
                </asp:DropDownList>
                <br />
                <br />
                <span>*</span>学校名称：
                <asp:TextBox ID="txtSchool" runat="server" CssClass="yonghu" Text="" />
                <br />
                <br />
                入学年份：
                <asp:DropDownList ID="ddlBeginDate" runat="server">
                </asp:DropDownList>
                至
                <asp:DropDownList ID="ddlEndDate" runat="server">
                </asp:DropDownList>
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                <br />
                <br />
                院系/班级：<asp:TextBox ID="txtClass" runat="server" TextMode="MultiLine" CssClass="yonghu01" Height="50px" Width="300px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSave" runat="server" Text="保存" CssClass="baoc" 
                    onclick="btnSave_Click"></asp:Button><asp:Label ID="lbltip" runat="server"></asp:Label>
            </div>
        </div>
        <div id="zhu_bottom">
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
