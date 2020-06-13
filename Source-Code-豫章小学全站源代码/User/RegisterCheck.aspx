<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.RegisterCheck, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>注册会员邮件认证</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div id="m_top">
	<h1 class="m_logo"></h1>
	<h1 style="float:right;">
		<ul>
			<li><a href=/>首页</a></li><li><a href=#>新闻</a></li><li><a href=#>图库</a></li><li><a href=#>下载</a></li><li><a href=#>商城</a></li><li><a href=#>论坛</a></li><li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li></ul>
	</h1>
</div>
<!-- 正文布局 -->
<div class="s_body">
<!-- 左边开始 -->
<div class="s_bleft">
<div class="i_whyj">
<h1>登陆会员中心您将获得：</h1>
<ul>
	<li>自由发布信息 </li>
	<li>查看积分与管理空间 </li>
	<li>设定您的个性化空间</li><li>提交您的需求为您服务 </li>
	<li>购物支付多彩商务体验 </li>
</ul>
<div class="cleardiv" style="height:15px;"></div>
<h2 style="color:#FF6600">用户通道</h2>
<h3><a href="/">快速返回首页</a></h3>
<h2>站长通道</h2>
<h3><a href="/manage/login.aspx" target="_blank">进入后台管理</a></h3>
</div>
</div>
<!-- 左边结束 -->

<!-- 右边开始 -->
<div class="s_bright">
	<div class="rg_inout">
		<h1>注册会员认证</h1>
	  <div class="cleardiv"></div>
        <table width="760" border="0" align="center" cellpadding="0" cellspacing="0" class="center_tdbgall">
                <tr>
                    <td>
                        <br>
                        <table width="400" border="0" align="center" cellpadding="5" cellspacing="0" class="border">
                            <tr class="title">
                                <td colspan="2" align="center">
                                    <strong>注册用户认证</strong></td>
                            </tr>
                            <tr>
                                <td height="120" colspan="2" class="tdbg">
                                    请输入您注册时填写的用户名和密码，以及本站发给你的确认信中的随机验证码。必须完全正确后，你的帐户才会激活。
                                    <table width="250" border="0" cellspacing="8" cellpadding="0" align="center">
                                        <tr>
                                            <td align="right">
                                                用户名称：</td>
                                            <td>
                                                <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                用户密码：</td>
                                            <td>
                                                <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                随机验证码：</td>
                                            <td>
                                                <asp:TextBox ID="TxtCheckNum" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td colspan="2">
                                                <asp:Button ID="BtnRegCheck" runat="server" Text="验证" OnClick="BtnRegCheck_Click" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <br>
                    </td>
                </tr>
            </table>

	</div>
</div>
<!-- 右边结束 -->
</div>
<div class="cleardiv"></div>

</form>
</body>
</html>