<%@ page language="C#" autoeventwireup="true" inherits="Weibo_UserInfo_infoFindPwd, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-找回密码</title>
<link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
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
                   <li><a href="info_Jiben.aspx" >个人资料</a></li>
                    <li><a href="info_Touxiang.aspx">修改头像</a></li>
                    <li><a href="info_UpdatePwd.aspx" class="zhu_a">修改密码</a></li>
                    <li><a href="UserDomain.aspx">个性化域名</a></li>
                    <li><a href="info_Biaoqian.aspx">个人标签</a></li>
                    <li><a href="info_Secrecy.aspx">隐私保护</a></li>
                    <li><a href="UserGroup.aspx">&nbsp;&nbsp;&nbsp;&nbsp;黑名单</a></li>
                </ul>
            </div>
            <div id="zhu_hang">
                <span>以下信息将显示<b><a href="#">在你的个人资料页</a></b>,方便大家了解你 。</span><a href="#">基本信息</a><a
                    href="#">|</a><b><a href="#">教育信息</a></b><a href="#">|</a><b><a href="#">职业信息</a></b>
            </div>
            <br />
            <br />
            <div class="bitian1">
                <div>
                    <div class="div1">
                        请输入登录名：<asp:TextBox ID="txtLoginName" runat="server" CssClass="yonghu01" Text="" />
                    </div>
                    <div>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="登录名不能为空"
                            ControlToValidate="txtLoginName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <br />
                <div>
                    <div class="div1">
                        请输入验证码：<asp:TextBox ID="txtNewPwd" runat="server" 
                            CssClass="yonghu01" Text="" TextMode="Password" /></div>
                    <div>
                        &nbsp;&nbsp;
                        
                    </div>
                </div>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSave" runat="server" Text="提交" CssClass="baoc"></asp:Button>
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

