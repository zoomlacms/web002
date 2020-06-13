<%@ page language="C#" autoeventwireup="true" inherits="User_AddConstPassen, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>常用客户管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
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
	function Getinfo(id) {
		location.href = "AddConstPassen.aspx?menu=edit&id=" + id + "";
	}

	function checks() {
		var name = document.getElementById("Name");
		var name_En = document.getElementById("Name_EN");
		var creType = document.getElementById("CreID");
		var creID = document.getElementById("CreID1");
		if (name.value == "" && name_En.value == "") {
			alert("中文名和英文名至少输入一个");
			return false;
		}
		var exp = new RegExp(/^([\d]{15}|[\d]{18}|[\d]{17}[x|X])$/);  //身份证正则表达式
		if (creType.value == "0" && !exp.test(creID.value)) {
			alert("请输入正确的身份证号码!");
			return false;
		}
		return true;
	}

	function check() {
		if (checks()) {
			return true;
		} else {
		return false;
		}
	}
</script>

<style type="text/css">
.style1 { height: 33px; }
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
	您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a> &gt;&gt; 
	<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; </span><span><a title="修改密码" href="/User/ConstPassen.aspx">常用客户管理</a>
	<a href="AddConstPassen.aspx">[添加客户]</a>
</div>
    <table width="100%" cellpadding="2" cellspacing="1">
        <tr>
            <td colspan="2" align="center" style="font-weight:bold" class="style1">
                <asp:Label ID="Label1" runat="server" Text="添加客户"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight:bold">
            中文姓名:
            </td>
            <td>
                <asp:TextBox ID="Name" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight:bold">
            英文姓名:
            </td>
            <td>
                <asp:TextBox ID="Name_EN" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td align="right" style="font-weight:bold">国籍: </td>
            <td>
                <asp:TextBox ID="Nation" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td align="right" style="font-weight:bold" class="style1">
            证件类型:
            </td>
            <td class="style2">
                <asp:DropDownList ID="CreID" runat="server">
                <asp:ListItem Text="身份证" Value="0" Selected="True"></asp:ListItem>
                <asp:ListItem Text="护照" Value="1"></asp:ListItem>
                <asp:ListItem Text="军人证" Value="2"></asp:ListItem>
                <asp:ListItem Text="港澳通行证" Value="3"></asp:ListItem>
                <asp:ListItem Text="台胞证" Value="4"></asp:ListItem>
                <asp:ListItem Text="回乡证" Value="5"></asp:ListItem>
                <asp:ListItem Text="国际海员证" Value="6"></asp:ListItem>
                <asp:ListItem Text="外国人永久居留证" Value="7"></asp:ListItem>
                <asp:ListItem Text="旅行证" Value="8"></asp:ListItem>
                <asp:ListItem Text="其他" Value="9"></asp:ListItem>
                
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td align="right" style="font-weight:bold">
            证件号码:
            </td>
            <td>
                <asp:TextBox ID="CreID1" runat="server" Width="195px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="证件号码不能为空!" 
                    ControlToValidate="CreID1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="right" style="font-weight:bold">
            性别:
            </td>
            <td>
                <asp:RadioButtonList ID="Sex" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="男" Selected="True">男</asp:ListItem>
                    <asp:ListItem Value="女">女</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight:bold">
            出生日期:
            </td>
            <td>
                <asp:TextBox ID="BirthDay" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight:bold">
            手机号码:
            </td>
            <td>
                <asp:TextBox ID="Mobile" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight:bold">
            国航常旅客卡:
            </td>
            <td>
                <asp:TextBox ID="FlyerCart" runat="server" Width="195px"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="添加" Width="68px"  OnClientClick="javascript:if(check()) return true;else return false;"
                    onclick="Button1_Click" />&nbsp;<asp:Button ID="Button2"
                    runat="server" Text="取消" Width="63px" onclick="Button2_Click" />
            </td>
            
        </tr>
    </table>
    </form>
</body>
</html>