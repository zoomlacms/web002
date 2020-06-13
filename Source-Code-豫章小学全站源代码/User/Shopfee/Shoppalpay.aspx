<%@ page language="C#" autoeventwireup="true" inherits="User_Shopfee_Shoppalpay, App_Web_xj23mn1f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>支付中</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div id="m_top">
	<h1 class="m_logo"></h1>
	<h1 style="float:right;">
		<ul>
			<li><a href="/">首页</a></li>
			<li><a href=#>新闻</a></li>
			<li><a href=#>图库</a></li>
			<li><a href=#>下载</a></li>
			<li><a href=#>商城</a></li>
			<li><a href=#>论坛</a></li>
			<li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li>		</ul>
	</h1>
</div>
<!-- 正文布局 -->
<div class="s_body">
<!-- 左边开始 -->
<div class="s_bleft">
	<div class="i_whyj">
		<h1>体验卓越的购物：</h1>
		<ul>
			<li>在线支付灵项方便 </li>
			<li>透明流程随心所欲 </li>
			<li>送货上门服务周全 </li>
			<li>包装精美想您所想 </li>
			<li>正规发票完善质保 </li>
		</ul>
		<div class="cleardiv" style="height:15px;"></div>
		<h2 style="color:#FF6600">用户导航</h2>
		<h3><a href="/user/">进入会员中心</a></h3>
	</div>
</div>
<!-- 左边结束 -->

<!-- 右边开始 -->
<div class="s_bright">
	<div class="rg_inout">
		<h1>请填写您的商品信息</h1>
		<h2>第二步：确认订单&nbsp;<img src="../images/regl2.gif" width="242" height="14" /></h2>
        <ul style="height:70px; margin-left:65px">
        <li >
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem Value="addre2" Selected="True"></asp:ListItem>
                <asp:ListItem Value="addre1">使用其它地址</asp:ListItem>
            </asp:RadioButtonList>
            </li>
        </ul>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人姓名：</b></li>
			<li>&nbsp;<asp:TextBox ID="Receiver" runat="server"></asp:TextBox></li>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Receiver"
                ErrorMessage="收货人姓名不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></ul>
		<div class="clear"></div>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人地址：</b></li>
			<li>&nbsp;<asp:TextBox ID="Jiedao" runat="server" Width="409px"></asp:TextBox></li><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Jiedao"
                ErrorMessage="收货人地址不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></ul>
		<div class="clear"></div>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人邮箱：</b></li>
			<li>&nbsp;<asp:TextBox ID="Email" runat="server"></asp:TextBox></li><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email"
                ErrorMessage="收货人邮箱不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email"
                                        ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator></ul>
		
		<div class="clear"></div>
				<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 联系电话：</b></li>
			<li>
                    <asp:TextBox ID="Phone" runat="server"></asp:TextBox> 格式:区号-号码
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone"
                        Display="Dynamic" ErrorMessage="联系电话不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </li>
                        </ul>
				<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 邮政编码：</b></li>
			<li>&nbsp;
                    <asp:TextBox ID="ZipCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ZipCode"  Display="Dynamic" ErrorMessage="邮政编码不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </li></ul>
				<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 送货方式：</b></li>
			<li>&nbsp;<asp:DropDownList ID="Delivery" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Delivery" ErrorMessage="送货方式不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></li></ul>
				<ul>
			<li style="width:150px;text-align:right;"></li>
			<li>&nbsp;</li><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
&nbsp;<asp:HiddenField ID="projiect" runat="server" />
                    <asp:HiddenField ID="prodectid" runat="server" />
                    <asp:HiddenField ID="projectjiage" runat="server" />
                    <asp:HiddenField ID="jifen" runat="server" />
                </ul>

		<ul>
			<li style="width:150px;text-align:right;">&nbsp;</li>
			<li>
                <asp:Button ID="Button1" runat="server" Text="提交订单" OnClick="Button1_Click"  />&nbsp;</li></ul>
	</div>
</div>
<!-- 右边结束 -->
</div>
<div class="m_copyright" id="DIV1">
	<ul><a href=#>关于我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></ul>
	<h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
</form>                    
</body>
</html>