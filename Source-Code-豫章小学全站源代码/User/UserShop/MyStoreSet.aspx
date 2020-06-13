<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_MyStoreSet, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
	<!-- str -->
    <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <div class="us_topinfo" style="margin-top:10px;"><a href="MyStoreSet.aspx">店铺基本管理</a></div>
    <div class="us_topinfo" style="margin-top:10px;">
    <ul>
    <li style="width:120px; float:left;line-height:30px; text-align:right;">商铺名称：
    </li>
    <li style="width:70%;line-height:30px"><asp:TextBox ID="Nametxt" runat="server" Text='' Width="35%" MaxLength="30"></asp:TextBox>
        <span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2"
            runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Nametxt">名称必填</asp:RequiredFieldValidator></li>
            
    <li style="width:120px; float:left;line-height:30px; text-align:right">商铺类型：
    </li>
    <li style="width:70%;line-height:30px">&nbsp;<asp:DropDownList ID="DropDownList1"
        runat="server">
    </asp:DropDownList><span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList1">类型必填</asp:RequiredFieldValidator>
    </li>
    <li style="width:120px; float:left;line-height:30px; text-align:right">所在城市：
    </li>
    <li style="width:70%;line-height:30px">&nbsp;<asp:DropDownList ID="DropDownList2"
        runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>省
        <asp:DropDownList ID="DropDownList3"
        runat="server">
        </asp:DropDownList>市<span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3"
            runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList3">所在城市必填</asp:RequiredFieldValidator>
    </li>
    <li style="width:120px; float:left;line-height:30px; text-align:right">商铺简介：
    </li>
    <li style="width:70%;line-height:30px">&nbsp;<textarea id="TEXTAREA1" runat="server"
        cols="50" rows="6"></textarea><span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4"
            runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TEXTAREA1">简介必填</asp:RequiredFieldValidator>
    </li>
    <li style="width:120px; float:left;line-height:30px; text-align:right">
    </li>
    <li >
    <asp:Button ID="EBtnSubmit" Text="信息提交"  runat="server" OnClick="EBtnSubmit_Click" />
    &nbsp;                
    <input id="Button1" type="button" value="返  回" OnClick="javascript:history.go(-1)"/>
    </li>
    </ul>
    </div>
    </form>
</body>
</html>