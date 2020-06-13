<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_StoreApply, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../Common/Common.js" type="text/javascript"></script>
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
<uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
<div class="us_topinfo" style="margin-top: 10px;">
<asp:Label ID="topLabel" runat="server" Text="Label"></asp:Label></div>
<ul class="us_seta" style="margin-top: 10px;" id="add" runat="server">
	<h1 style="text-align: center">
		<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
	<li style="width: 120px; float: left; text-align: right;">商铺名称： </li>
	<li style="width: 40%;">
		<asp:TextBox ID="Nametxt" runat="server" Text='' Width="35%" MaxLength="30"></asp:TextBox>
		<span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Nametxt">名称必填</asp:RequiredFieldValidator></li>
	<li style="width: 10%; float: left; text-align: left">商铺类型： </li>
	<li style="width: 20%;">&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
	</asp:DropDownList>
		<span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
			runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList1">类型必填</asp:RequiredFieldValidator>
	</li>
	<li style="width: 100%;">
		<asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
	</li>
	<li style="width: 120px; float: left; text-align: right"></li>
	<li>
		<asp:Button ID="EBtnSubmit" Text="信息提交" runat="server" OnClick="EBtnSubmit_Click" />
		&nbsp;
		<input id="Button1" type="button" value="返  回" onclick="javascript:history.go(-1)" />
	</li>
</ul>
</form>
</body>
</html>