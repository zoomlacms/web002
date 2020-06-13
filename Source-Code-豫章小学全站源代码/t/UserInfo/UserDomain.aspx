<%@ page language="C#" autoeventwireup="true" inherits="Microb_UserInfo_UserDomain, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-个性化域名设置</title>
<link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<script src="../../JS/citylist.js" type="text/javascript"></script>
<script src="/JS/CJL.0.1.min.js"></script>
<script src="/JS/ImagePreview.js"></script>
<script>
    //复制命令
    function Copytext() {
        var text = document.getElementById("txtLink");
        if (text.value == "") { alert("没有内容"); return; }
        text.select(); //选择对象
        document.execCommand("Copy"); //执行浏览器复制命令
        alert("已复制好，可贴粘。");
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
                   <li><a href="info_Jiben.aspx">个人资料</a></li>
                    <li><a href="info_Touxiang.aspx">修改头像</a></li>
                    <li><a href="info_UpdatePwd.aspx">修改密码</a></li>
                    <li><a href="UserDomain.aspx" class="zhu_a">个性化域名</a></li>
                    <li><a href="info_Biaoqian.aspx">个人标签</a></li>
                    <li><a href="info_Secrecy.aspx">隐私保护</a></li>
                    <li><a href="UserGroup.aspx">黑名单</a></li>
                </ul>
            </div>
            <div class="bitian2" id="setting" runat="server">
               请设置您的个性化域名：<asp:Label ID="lblCon" runat="server" > &nbsp; &nbsp;</asp:Label><asp:TextBox ID="txtSetting" runat="server" CssClass="yonghu"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtSetting" ErrorMessage="只能设置英文域名" 
                    ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                <asp:Button ID="btnSave" runat="server" Text="保存" CssClass="baoc1" OnClick="btnSave_Click" />
                <div style="width:100%;margin-top:5px">设置后，不允许修改</div><div id="divTips" style="color:Red" runat="server"></div>
            </div>
            <div class="bitian2" id="setted" runat="server">
            <div style="width:400px;height:150px">
                你已经设置个性域名：<asp:Literal ID="liUrl" runat="server"></asp:Literal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />邀请好友：<asp:TextBox ID="txtLink" runat="server" style="width:280px ;border:1px solid #C9C9C9;" ></asp:TextBox>&nbsp;<input type='button' onclick="Copytext()" value='复制'>`</div>
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
