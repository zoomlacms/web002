<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_StoreEdit, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function CheckAll(spanChk)//CheckBox全选
	{
		var oItem = spanChk.children;
		var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
		xState = theBox.checked;
		elm = theBox.form.elements;
		for (i = 0; i < elm.length; i++)
			if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
			if (elm[i].checked != xState)
				elm[i].click();
		}
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div style="width: 100%">
	<uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
	<ul class="us_topinfo" style="margin-top: 10px; width: 98%">
		<asp:Label ID="topLabel" runat="server" Text="Label"></asp:Label>
	</ul>
	<ul class="us_seta" style="margin-top: 10px; width: 99%" id="Auditing" runat="server"
		visible="false">
		<li style="text-align: center; width: 100%">
			<br />
			<br />
			<asp:Label ID="Label2" runat="server"></asp:Label>
			<br />
			<br />
			<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">修改我提交的信息!</asp:LinkButton><br />
			<br />
			<br />
		</li>
	</ul>
	<ul class="us_seta" style="margin-top: 10px;" id="add" runat="server">
		<h1 style="text-align: center">
			<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
		<li style="width: 120px; float: left; line-height: 30px; text-align: right;">商铺名称：
		</li>
		<li style="width: 70%; line-height: 30px">
			<asp:TextBox ID="Nametxt" runat="server" Text="" Width="35%" MaxLength="30"></asp:TextBox>
			<span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2"
				runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Nametxt">名称必填</asp:RequiredFieldValidator></li>
				 <li style="width: 120px; float: left; line-height: 30px; text-align: right;"></li>
		<li style="width:100%; line-height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 商铺类型：&nbsp;<asp:DropDownList ID="DropDownList1"
			runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
		</asp:DropDownList>
			<span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
				runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList1">类型必填</asp:RequiredFieldValidator>
		</li>
		<li style="width: 100%;">
			<asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
		</li>
		<li style="width: 120px; float: left; line-height: 30px; text-align: right"></li>
		<li>
			<asp:Button ID="EBtnSubmit" Text="信息提交" runat="server" OnClick="EBtnSubmit_Click" />
			&nbsp;
			<input id="Button1" type="button" value="返  回" onclick="javascript:history.go(-1)" />
		</li>
	</ul>
</div>
</form>
</body>
</html>