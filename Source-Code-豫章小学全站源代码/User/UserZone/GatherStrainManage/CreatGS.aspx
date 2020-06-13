<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.GatherStrainManage.CreatGS, App_Web_2fd1wrub" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlGztherLetf.ascx" TagName="WebUserControlGztherLetf" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的空间</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
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
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a>
</div>
		<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
		<uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf2" runat="server" />           
	<div class="us_topinfo" style="margin-top: 10px;">
		<table border="0" cellpadding="0" height="70" cellspacing="0" width="100%">
			<tr>
				<td><img src="../Images/ico_qun.gif" />创建新的群族</td>
			</tr>
			<tr>
				<td valign="top">
					<hr />
				</td>
			</tr>
		</table>
		<table border="0" cellpadding="4" cellspacing="0" width="100%">
			<tr>
				<td colspan="2">
					<strong>填写群名称等信息：</strong></td>
			</tr>
			<tr>
				<td style="width: 153px" align="right">
					群族名称：<span style="color: #d01e3b">*</span></td>
				<td>
					<asp:TextBox ID="txtGSName" runat="server" Width="218px"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGSName" Display="Dynamic" ErrorMessage="请填写群族名称" Font-Size="10pt"></asp:RequiredFieldValidator></td>
			</tr>
			<tr>
				<td style="width: 153px" align="right" valign="top">群族介绍：<span style="color: #d01e3b">*</span></td>
				<td>
					<asp:TextBox ID="txtGSInfo" runat="server" Height="107px" TextMode="MultiLine" Width="215px"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGSInfo" Display="Dynamic" ErrorMessage="请填写群族介绍" Font-Size="10pt"></asp:RequiredFieldValidator></td>
			</tr>
			<tr>
				<td style="width: 153px" align="right">群族分类：</td>
				<td>
					<asp:DropDownList ID="dropGSType" runat="server" DataTextField="GSTypeName" DataValueField="ID">
					</asp:DropDownList></td>
			</tr>
			<tr>
				<td style="width: 153px" align="right">群族图标：</td>
				<td>
				<asp:TextBox ID="txtpic" runat="server" Width="300px" /><br />
				<iframe id="Clearimgs" style="top:2px" src="../../FileUpload.aspx?menu=txtpic" width="400px" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></td>
			</tr>
			<tr>
				<td style="width: 153px">
				</td>
				<td><asp:CheckBox ID="checkboxCryptonym" runat="server" Font-Size="10pt" Text="支持匿名发表和回复话题" /></td>
			</tr>
			<tr>
				<td style="width: 153px">
				</td>
				<td><asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="确定" /></td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>