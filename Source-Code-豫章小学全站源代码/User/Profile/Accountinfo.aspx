<%@ page language="C#" autoeventwireup="true" inherits="User_Profile_Accountinfo, App_Web_ktmoec40" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>收款信息设置</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../Common/Common.js" type="text/javascript"></script>
<style type="text/css">
.style1 { height: 75px; }
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<span id="Span1"><a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; <a href="Accountinfo.aspx">收款信息设置</a>
</div>
  <table width="100%" cellpadding="5" cellspacing="1">
    <tr >
      <td colspan="2"  style="padding:5px">&nbsp;<strong>收款信息(如果您要兑现返利，以下内容为必填项):</strong></td>
    </tr>
    <tr >
      <td width="25%" style="padding:5px" >支付平台:</td>
      <td style="margin-top:5px; padding:5px"><asp:DropDownList ID="ddpay" runat="server"></asp:DropDownList></td>
    </tr>
    <tr>
      <td  width="25%" style="padding:5px" class="style1">开户行及支行全称：</td>
      <td style="margin-top:5px; padding:5px" class="style1"><asp:TextBox ID="txtBank" runat="server" Width="291px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBank" ErrorMessage="请填写开户行!"></asp:RequiredFieldValidator>
        <br />
        如不知道，可以咨询您的银行热线查询卡片的开户信息，请尽量填写准确、完整 <br />
        （例如：中国工商银行上海分行陆家嘴支行东昌分理处），无须开通网银； <br />
        <font color="red">（强烈推荐使用中国工商银行的账户收款，付款后可实时到帐！）</font></td>
    </tr>
    <tr >
      <td style="padding:5px" >开户人真实姓名:</td>
      <td style="padding:5px"><asp:TextBox ID="txtOfName" runat="server" Width="150px"></asp:TextBox>
        此开户人必须是您本人；
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOfName" ErrorMessage="请填写开户人真实姓名!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td style="padding:5px">开户帐号:</td>
      <td style="padding:5px"><asp:TextBox ID="txtAccount" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="请填写开户帐号!" ControlToValidate="txtAccount"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
      <td style="padding:5px">您的真实姓名:</td>
      <td style="margin-top:5px; padding:5px"><asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
        <asp:Button ID="btnLock" runat="server" Text="绑定您的真实姓名" onclick="btnLock_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="请填写您的真实姓名!"></asp:RequiredFieldValidator>
        <div id="divlock" runat="server">为安全起见，本选项已经被您绑定，不允许修改。有问题请联系返利网客服。 </div></td>
    </tr>
    <tr>
      <td style="padding:5px">您的身份证号码:</td>
      <td style="padding:5px"><asp:TextBox ID="txtCardID" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCardID" ErrorMessage="请填写您的身份证号码!"></asp:RequiredFieldValidator>
        <br />
        应税务部门要求，2007年11月30日开始，收款时须填写身份证号码； </td>
    </tr>
    <tr>
      <td colspan="2" align="center"  style="padding:5px"><font color="red"> 用<a href="https://www.alipay.com/" target="_blank">支付宝</a>收款者请把“开户行及支行全称”一栏填写为“支付宝”，“开户人真实姓名”一栏填写为支付宝的开户人真实中文名称， <br />
        “开户帐号”一栏填写为支付宝的邮件账号。</font></td>
    </tr>
    <tr>
      <td></td>
      <td  style="padding:5px"><asp:Button ID="Button1" runat="server" Text="保存" Width="68px"  class="i_bottom" onclick="Button1_Click" />
        <asp:Label ID="lblTip" runat="server"></asp:Label>
        <asp:HiddenField ID="hfLockId" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>