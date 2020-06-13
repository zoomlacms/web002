<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Config.MobileMsgConfig, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>短信通配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server" method="post">
  <div class="r_navigation">后台管理 &gt;&gt;系统配置 &gt;&gt; 短信通配置</div>
  <table width="100%" cellspacing="1" cellpadding="0" class="border">
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200px; "><strong>选择短信接口</strong></td>
      <td><asp:DropDownList ID="ddlMessageCheck" runat="server" onselectedindexchanged="ddlMessageCheck_SelectedIndexChanged" AutoPostBack="True"> </asp:DropDownList>
        <span>* 必选</span></td>
    </tr>
  </table>
  <asp:Panel ID="Panel1" runat="server">
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><strong>短信通用户：</strong></td>
        <td><asp:TextBox ID="TxtMssUser" runat="server" class="l_input"></asp:TextBox>
          <span>* 必填</span></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><strong>短信通密码：</strong></td>
        <td><asp:TextBox ID="TxtMssPsw" runat="server" TextMode="Password" class="l_input"></asp:TextBox>
          <span>* 必填</span></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><asp:Button ID="Button2" 
				class="C_input" runat="server" Text="保存设置" OnClick="Button2_Click" /></td>
        <td class="tdbgleft"></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" colspan="2"><strong><a href="http://www.zoomla.cn/Content.aspx?ItemID=83" target="view_window">还没有帐号?点击这里开通短信通>></a></strong></td>
      </tr>
    </table>
    </asp:Panel>
  <br />
  <asp:Panel ID="Panel2" runat="server">
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><strong>东时方企业号：</strong></td>
        <td><asp:TextBox ID="txtg_eid" runat="server" class="l_input"></asp:TextBox>
          <span>* 必填</span></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><strong>东时方用户：</strong></td>
        <td><asp:TextBox ID="txtg_uid" runat="server" class="l_input"></asp:TextBox>
          <span>* 必填</span></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><strong>东时方密码：</strong></td>
        <td><asp:TextBox ID="txtg_pwd" runat="server" TextMode="Password" class="l_input"></asp:TextBox>
          <span>* 必填</span></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><strong>东时方通道：</strong></td>
        <td><asp:TextBox ID="txt_h_gate_id" runat="server" class="l_input"></asp:TextBox>
          <span>* 必填</span></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><strong>短信内容：</strong></td>
        <td><asp:TextBox ID="txtContent" runat="server" class="l_input" Height="72px" TextMode="MultiLine" Width="475px"></asp:TextBox>
          <span>* 必填<br />
          {m:username}:当前用户名 {m:mobile}:手机号 {m:proname}:商品名称 {m:orderno}:订单号 {m:sitename}:网站名 </span></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><strong>短信类型：</strong></td>
        <td><asp:TextBox ID="txtType" runat="server" class="l_input"></asp:TextBox>
          <span>* 选填[例如：景点，路线]</span></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" style="width: 200px; "><asp:Button ID="Button1" class="C_input" runat="server" Text="保存设置" OnClick="Button1_Click" /></td>
        <td class="tdbgleft"></td>
      </tr>
      <tr class="tdbg">
        <td class="tdbgleft" colspan="2"><strong><a href="http://sms.xhsms.com/" target="view_window">还没有帐号?点击这里开通东时方>></a></strong></td>
      </tr>
    </table>
    </asp:Panel>
</form>
</body>
</html>