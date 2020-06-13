<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_cash, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>佣金提现</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" name="form1" method="post" runat="server">
<div class="main_user_bg">
</div>
<div class="user_con">
	<h2>申请提现</h2>
	<table cellspacing="0" width="100%" cellpadding="0" class="user_table">
		<tr>
			<td style="text-align: center;"> 提现流程：</td>
			<td style="color: #999"><a href='' target="_blank">从TT返利拿到钱的整个流程？</a></td>
		</tr>
		<tr>
			<td style="text-align: center;">账户余额：</td>
			<td style="color: #999">
				<strong style="color: #333"><asp:Label ID="siterabeta" runat="server"></asp:Label></strong>元 &nbsp;[帐户总额-(已支付、申请中、待支付)]
			</td>
		</tr>
		<script src="/javascript/chkform.js"></script>
		<tr>
			<td style="text-align: center;"><span class="f_12_f00">*</span>提现金额：</td>
			<td style="color: #999">
				<asp:DropDownList ID="Money" runat="server" Style="width: 155px;"> </asp:DropDownList>
				<asp:Label ID="lbltips" runat="server"></asp:Label>
			</td>
		</tr>
		<tr>
			<td width="25%" style="padding: 5px; text-align: center">支付平台：</td>
			<td style="margin-top: 5px; padding: 5px"><asp:DropDownList ID="ddpay" runat="server"></asp:DropDownList></td>
		</tr>
		<tr>
			<td width="25%" style="padding: 5px; text-align: center">开户行及支行全称：</td>
			<td style="margin-top: 5px; padding: 5px">
				<asp:TextBox ID="txtBank" runat="server" Width="291px"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBank"
					ErrorMessage="请填写开户行!"></asp:RequiredFieldValidator>
				<br />
				如不知道，可以咨询您的银行热线查询卡片的开户信息，请尽量填写准确、完整
				<br />
				（例如：中国工商银行上海分行陆家嘴支行东昌分理处），无须开通网银；
				<br />
				<font color="red">（强烈推荐使用中国工商银行的账户收款，付款后可实时到帐！）</font>
			</td>
		</tr>
		<tr>
			<td style="padding: 5px" align="center">开户人真实姓名：</td>
			<td style="padding: 5px">
				<asp:TextBox ID="txtOfName" runat="server" Width="150px"></asp:TextBox>此开户人必须是您本人；
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOfName" ErrorMessage="请填写开户人真实姓名!"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td style="padding: 5px" align="center">开户帐号：</td>
			<td style="padding: 5px">
				<asp:TextBox ID="txtAccount" runat="server" Width="150px"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="请填写开户帐号!"
					ControlToValidate="txtAccount"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td style="padding: 5px" align="center">您的真实姓名：</td>
			<td style="margin-top: 5px; padding: 5px">
				<asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
				<asp:Button ID="btnLock" runat="server" Text="绑定您的真实姓名" OnClick="btnLock_Click" />
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
					ErrorMessage="请填写您的真实姓名!"></asp:RequiredFieldValidator>
				<div id="divlock" runat="server">
					为安全起见，本选项已经被您绑定，不允许修改。有问题请联系返利网客服。
				</div>
			</td>
		</tr>
		<tr>
			<td style="padding: 5px" align="center">您的身份证号码：</td>
			<td style="padding: 5px">
				<asp:TextBox ID="txtCardID" runat="server" Width="150px"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCardID"
					ErrorMessage="请填写您的身份证号码!"></asp:RequiredFieldValidator>
				<br />
				应税务部门要求，2007年11月30日开始，收款时须填写身份证号码；
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" style="padding: 5px">
				<font color="red">用<a href="https://www.alipay.com/" target="_blank">支付宝</a>收款者请把“开户行及支行全称”一栏填写为“支付宝”，“开户人真实姓名”一栏填写为支付宝的开户人真实中文名称，
					<br />“开户帐号”一栏填写为支付宝的邮件账号。</font>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">
				<asp:Label ID="lblTip" runat="server"></asp:Label><asp:HiddenField ID="hfLockId" runat="server" />
			</td>
			<td><asp:Button ID="SubLock" runat="server" Text="申请提现" OnClick="SubLock_Click" /></td>
		</tr>
	</table>
</div>
</form>
</body>
</html>
