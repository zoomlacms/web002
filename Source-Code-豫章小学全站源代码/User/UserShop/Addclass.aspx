<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_Addclass, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head>
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
<script src="/JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">

	<uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
	<div class="us_topinfo" style="margin-top: 10px; width: 98%">
	<a href="Classmanage.aspx">分类管理</a> <a href="addclass.aspx">添加分类</a>
	</div>
		
	<div class="us_topinfo" style="margin-top: 10px; width: 98%">
		<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;"
			id="TABLE1">
			<tr>
				<td width="33%" align="right">
					分类名称：
				</td>
				<td width="67%">
					<asp:TextBox ID="Classname" runat="server" Width="332px"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
						ErrorMessage="分类名称不能为空！" ControlToValidate="Classname"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td width="33%" align="right">
					排列顺序：
				</td>
				<td width="67%">
					<asp:TextBox ID="Orderid" runat="server" Width="84px">0</asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="排列顺序不能为空！" ControlToValidate="Orderid" Display="Dynamic"></asp:RequiredFieldValidator>
					<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="排列顺序格式不正确！" ControlToValidate="Orderid" MaximumValue="99999999" MinimumValue="0" Display="Dynamic"></asp:RangeValidator>数字越大排列越前
				</td>
			</tr>
			<tr>
				<td width="33%" align="right">
					分类说明：
				</td>
				<td width="67%">
					<asp:TextBox ID="Classinfo" runat="server" Height="119px" Width="334px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td width="100%" align="center"colspan="2">
					<asp:Button ID="Button1" runat="server" Text=" 添 加 " onclick="Button1_Click" />
				&nbsp;<asp:Button ID="Button2" runat="server" Text=" 取 消 " onclick="Button2_Click" CausesValidation="False" />
				</td>
			</tr>
		</table>
</form>
</body>
</html>