<%@ page language="C#" autoeventwireup="true" inherits="User_PromotUnion_Userunionshop, App_Web_d2gkw33d" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>网赚推广商城</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
    function copytext(inputid) {
        var text = document.getElementById(inputid);
        if (text.value == "") { alert("没有内容"); text.focus(); return; }
        text.select(); //选择对象
        document.execCommand("Copy"); //执行浏览器复制命令
        alert("已复制好，可贴粘。");
} 
</script>
</head>
<body>
<form id="form1" runat="server" style="margin:0; padding:0;">
 <div id="container">
 <div style="background:#EAF5FE; margin-top:12px;">
	<div style="font-size:14px; font-weight:bold; color:#535353; height:16px; padding:23px 0 0 23px; ">获取某商城您自己的推广链接：</div>
	<div style="height:22px; overflow:hidden; font-size:14px; margin-top:30px; margin-left:23px;"><div style="float:left; margin-top:2px;">选择您要推广的商城：</div>
		<div style="border:1px solid #C9C9C9; float:left; overflow:hidden; height:18px;">
		<asp:DropDownList ID="youmtype" runat="server" style="margin:-2px;"  AutoPostBack="true"	onselectedindexchanged="youmtype_SelectedIndexChanged"></asp:DropDownList>
		</div>
	<div style="float:left;border:1px solid #C9C9C9; overflow:hidden; height:18px; margin-left:10px;" id="smalltype">
	<asp:DropDownList ID="youmtype_small" runat="server" style="margin:-2px;"></asp:DropDownList>
	</div>
		<asp:Button ID="btn" runat="server" 
			style="vertical-align:top; margin-left:16px;" Text="生成推广链接" 
			onclick="btn_Click" /></div>
	<div style="height:22px; overflow:hidden; font-size:14px; margin-top:22px; margin-left:23px;">您的推广链接：
		<asp:TextBox ID="unionlink" runat="server" style="width:425px; border:1px solid #C9C9C9; padding:1px 0;"></asp:TextBox>
		<input type="button" style="vertical-align:top; margin-left:16px;" value="复制推广链接" onclick="copytext('unionlink')" /></div>
	 <div style="background:#fff; margin:30px 16px 16px 16px;">
		<div style="font-size:12px; height:16px; padding:26px 0 0 24px; color:#7C7C7C;"><strong style="color:#535353">推广最多的商城</strong>（点击选择任一商城，即可得到该商城您的推广链接）：</div>
		<asp:RadioButtonList ID="rblShop" AutoPostBack="True" RepeatDirection="Horizontal" runat="server"   onselectedindexchanged="rblShop_SelectedIndexChanged" ></asp:RadioButtonList>
	<div style="height:22px; overflow:hidden;  font-size:14px; padding:22px 0 30px 23px;clear:both;">您的推广链接：
		<asp:TextBox ID="goodshoplink" runat="server" style="width:425px; border:1px solid #C9C9C9; padding:1px 0;"></asp:TextBox>
		<input type="button" style="vertical-align:top; margin-left:16px;" value="复制推广链接" onclick="copytext('goodshoplink')" /></div>
	</div>
   </div>
</div>
</form>
</body>
</html>