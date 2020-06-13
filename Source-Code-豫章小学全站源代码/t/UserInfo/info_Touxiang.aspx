<%@ page language="C#" autoeventwireup="true" inherits="Weibo_UserInfo_info_Touxiang, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-修改头像</title>
<link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<script src="../../JS/citylist.js" type="text/javascript"></script>
<script src="/JS/CJL.0.1.min.js"></script>
<script src="/JS/ImagePreview.js"></script>
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
                    <li><a href="info_Touxiang.aspx" class="zhu_a">修改头像</a></li>
                    <li><a href="info_UpdatePwd.aspx" >修改密码</a></li>
                    <li><a href="UserDomain.aspx">个性化域名</a></li>
                    <li><a href="info_Biaoqian.aspx">个人标签</a></li>
                    <li><a href="info_Secrecy.aspx">隐私保护</a></li>
                    <li><a href="UserGroup.aspx">黑名单</a></li>
                </ul>
            </div>
            
            <div class="bitian2">
                <asp:FileUpload ID="FupFile" runat="server" onchange="Preview(this.value)" />
                仅支持jpg、gif、png图片文件，且文件大小不超过5M
                <br />
                <asp:RequiredFieldValidator ID="ValFile" runat="server" ErrorMessage="请选择上传路径" ControlToValidate="FupFile"></asp:RequiredFieldValidator>
                <asp:Label ID="lblMessage" runat="server" ForeColor="red" Text=""></asp:Label>
                <br />
                <br />
              <asp:Image ID="Image1" Width="100px" runat="server" src="../../Images/userface/noface.gif" />
              <script>
                  var ip = new ImagePreview($$("FupFile"), $$("Image1"), {
                      maxWidth: 200, maxHeight: 200
                  });
                  ip.img.src = "<%=getuserface() %>";
                  ip.file.onchange = function () { ip.preview(); };
            </script>
                <asp:Button ID="btnSave" runat="server" Text="上传并保存" CssClass="baoc1" OnClick="btnSave_Click" />
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
