<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_UserAlipay, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function CheckAll(spanChk)//CheckBox全选
{
var oItem = spanChk.children;
var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
xState=theBox.checked;
elm=theBox.form.elements;
for(i=0;i<elm.length;i++)
if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
{
	if(elm[i].checked!=xState)
	elm[i].click();
}
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="s_bright">
    <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <div class="us_topinfo" style="margin-top:10px;"><a href="UserAlipay.aspx">支付宝账号管理</a></div>
    <div class="us_topinfo" style="margin-top:10px;">
    <table width="100%" height="148" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2" align="center">支付宝账号设置</td>
  </tr>
  <tr>
    <td width="30%" align="center">账号：</td>
    <td width="70%">&nbsp;<asp:TextBox ID="usernametxt" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td align="center">合作伙伴ID：</td>
    <td>&nbsp;<asp:TextBox ID="parID" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td align="center" style="height: 15px">支付宝安全校验码：</td>
    <td style="height: 15px">&nbsp;<asp:TextBox ID="safetxt" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td style="height: 32px">&nbsp;</td>
    <td style="height: 32px">&nbsp;<asp:Button ID="Savebtn" runat="server" Text=" 保 存 " OnClick="Savebtn_Click" /></td>
  </tr>
</table>
</div>
</form>
</body>
</html>