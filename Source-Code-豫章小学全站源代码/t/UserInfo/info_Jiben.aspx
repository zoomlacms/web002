<%@ page language="C#" autoeventwireup="true" inherits="Weibo_UserInfo_info_Jiben, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人基本信息</title>
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
                    <asp:ImageButton ID="ibSearch" runat="server" CausesValidation="false" ImageUrl="../../App_Themes/Microblog/images/s_b.jpg"
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
                    <li><a href="info_UpdatePwd.aspx">修改密码</a></li>
                    <li><a href="UserDomain.aspx">个性化域名</a></li>
                    <li><a href="info_Biaoqian.aspx" >个人标签</a></li>
                    <li><a href="info_Secrecy.aspx">隐私保护</a></li>
                    <li><a href="UserGroup.aspx">黑名单</a></li>
                </ul>
            </div>
            <div id="zhu_hang">
                <span>以下信息将显示<b><a href="info_MyWeibo.aspx" target="_blank">在你的个人资料页</a></b>,方便大家了解你 。</span>基本信息&nbsp;&nbsp;&nbsp;|<b><a
                    href="info_Jiaoyu.aspx">教育信息</a></b>&nbsp;&nbsp;&nbsp;|<b><a href="info_Zhiye.aspx">职业信息</a></b>
            </div>
            <div class="bitian">
                <span>*</span>为必填项</div>
            <div id="form">
                <b><span>*</span>昵称：</b><asp:TextBox ID="txtNichen" runat="server" CssClass="yonghu"
                    Text=""></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="请输入昵称"
                    ControlToValidate="txtNichen" />
                <br />
                <br />
                <b>真实姓名：</b><asp:TextBox ID="txtName" runat="server" CssClass="yonghu"></asp:TextBox>
                <br />
                <br />
                <asp:DropDownList ID="ddlSelect" runat="server" CssClass="select">
                    <asp:ListItem Value="0">所有人可见</asp:ListItem>
                    <asp:ListItem Value="1">我关注的人可见</asp:ListItem>
                    <asp:ListItem Value="2">仅自己可见</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <b><span>*</span>所在地：</b>
                <asp:DropDownList ID="province" runat="server" CssClass="select01" AutoPostBack="true" OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged">
                </asp:DropDownList>
                省
                <asp:DropDownList ID="city" runat="server" CssClass="select01">
                </asp:DropDownList>
                市
                <br />
                <br />
                <div>
                    <div class="div1">
                        <b><span>*</span>性别：&nbsp;</b>
                    </div>
                    <div>
                        <asp:RadioButtonList ID="rblsex" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="男">男</asp:ListItem>
                            <asp:ListItem Value="女">女</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <br />
                <br />
                <b><span>*</span>生日：</b>
                <asp:DropDownList ID="ddlYear" runat="server" 
                    onselectedindexchanged="ddlYear_SelectedIndexChanged">
                </asp:DropDownList>
                年
                <asp:DropDownList ID="ddlMonth" runat="server">
                </asp:DropDownList>
                月
                <asp:DropDownList ID="ddlDay" runat="server">
                </asp:DropDownList>
                日
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="请输入生日"
                    ControlToValidate="ddlDay" />
                <br />
                <br />
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="select">
                    <asp:ListItem Value="0">公开、完整显示</asp:ListItem>
                    <asp:ListItem Value="1">隐藏</asp:ListItem>
                    <asp:ListItem Value="2">保密</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <b>博客地址：</b><asp:TextBox ID="txtAddress" runat="server" CssClass="yonghu"></asp:TextBox>
                <br />
                <br />
                <asp:DropDownList ID="ddlBoke" runat="server" CssClass="select">
                    <asp:ListItem Value="0">所有人可见</asp:ListItem>
                    <asp:ListItem Value="1">我关注的人可见</asp:ListItem>
                    <asp:ListItem Value="2">仅自己可见</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <b>常用邮箱：</b>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="yonghu"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="邮箱格式不正确" ControlToValidate="txtEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:DropDownList ID="ddlEmail" runat="server" CssClass="select">
                    <asp:ListItem Value="0">所有人可见</asp:ListItem>
                    <asp:ListItem Value="1">我关注的人可见</asp:ListItem>
                    <asp:ListItem Value="2">仅自己可见</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <b>Q&nbsp; Q：</b>
                <asp:TextBox ID="txtQq" runat="server" CssClass="yonghu"></asp:TextBox>
                <br />
                <br />
                <asp:DropDownList ID="ddlQq" runat="server" CssClass="select">
                    <asp:ListItem Value="0">所有人可见</asp:ListItem>
                    <asp:ListItem Value="1">我关注的人可见</asp:ListItem>
                    <asp:ListItem Value="2">仅自己可见</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <b>MSN：</b>
                <asp:TextBox ID="txtMsn" runat="server" CssClass="yonghu"></asp:TextBox>
                <br />
                <br />
                <asp:DropDownList ID="ddlMsn" runat="server" CssClass="select">
                    <asp:ListItem Value="0">所有人可见</asp:ListItem>
                    <asp:ListItem Value="1">我关注的人可见</asp:ListItem>
                    <asp:ListItem Value="2">仅自己可见</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <div class="content">
                    <b>一句话介绍：</b>
                    <div class="content_L">
                        <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" CssClass="text"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        以下信息，可作为通过客服取回账号的依据
                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />
                <b>证件类型：</b>
                <asp:DropDownList ID="ddlType" runat="server" CssClass="both">
                    <asp:ListItem Value="身份证">身份证</asp:ListItem>
                    <asp:ListItem Value="学生证">学生证</asp:ListItem>
                    <asp:ListItem Value="军官证">军官证</asp:ListItem>
                    <asp:ListItem Value="护照">护照</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <br />
                <b>证件号码：</b>
                <asp:TextBox ID="txtZheng" runat="server" CssClass="yonghu" />
                <br />
                <br />
                <asp:Button ID="btnSave" runat="server" Text="保存" CssClass="baoc" onclick="btnSave_Click"></asp:Button>
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
