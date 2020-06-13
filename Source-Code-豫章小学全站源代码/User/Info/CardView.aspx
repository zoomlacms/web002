<%@ page language="C#" autoeventwireup="true" inherits="User_Info_CardView, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style3
{
	border-bottom: 1px solid #999999;
	border-left: 1px solid #999999;
	width: 254px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
<div class="us_showinfo">您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a></span>&gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; </span><span>VIP信息</span></span>
</div>
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfos" runat="server">
    <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
    <h1 style="text-align: center">
        VIP卡信息</h1>
<div style=" text-align:center; vertical-align:middle;">
  <table width="700"  class="abian"  cellpadding="0" cellspacing="0">
  <tr>
    <td width="160"  class=" dbian" >卡号：</td>
    <td class="style3" >
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      </td>
    <td width="226" class="lbian"><span style="COLOR: red">VIP卡号</span> </td>
  </tr>
  <tr>
    <td class=" dbian">所属客户：</td>
    <td class="style3">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"><span style="COLOR: red">该VIP卡的持卡人</span> </td>
  </tr>
  <tr>
    <td class=" dbian">初始化密码：</td>
    <td class="style3">
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"><span style="COLOR: red">创建该VIP卡时系统自动给该卡分配的密码</span> </td>
  </tr>
  <tr>
    <td class=" dbian">归属人：</td>
    <td class="style3">
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"> <span style="COLOR: red">该VIP卡属于哪个代理商人</span> </td>
  </tr>
  <tr>
    <td class=" dbian">状态：</td>
    <td class="style3">
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"><span style="COLOR: red">该VIP处于什么状态</span> </td>
  </tr>
    <tr>
    <td class=" dbian">截止有效期限：</td>
    <td class="style3">
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"><span style="COLOR: red">该VIP卡过期时间</span> </td>
  </tr>
</table>
</div>
</div>
</form>
</body>
</html>