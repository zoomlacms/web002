<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="BBS_GuestShow, App_Web_dypvjobb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>阅读留言</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script src="../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
<script src="../JS/jquery.js" type="text/javascript"></script>
<script charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script>
function CheckDirty() {
	var oEditor = CKEDITOR.instances.TxtContents;
	var value = oEditor.getData();
	var TxtValidateCode = document.getElementById("TxtValidateCode").value;

	if (value == "" || TxtValidateCode == "") {
		if (value == "") {
			var obj2 = document.getElementById("sp2");
			obj2.innerHTML = "<font color='red'>回复内容不能为空！</font>";
		}
		else {
			var obj2 = document.getElementById("sp2");
			obj2.innerHTML = "";
		}
		if (TxtValidateCode == "") {
			var obj3 = document.getElementById("sp1");
			obj3.innerHTML = "<font color='red'>验证码不能为空！</font>";
		} else {
			var obj3 = document.getElementById("sp1");
			obj3.innerHTML = "";
		}
		return false;
	}
	else {
		var obj = document.getElementById("sp2");
		obj.innerHTML = "";
		var obj3 = document.getElementById("sp1");
		obj3.innerHTML = "";
		return true;
	}
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div id="main" class="rg_inout">
<h1>您的位置：您的位置：<a href="/">网站首页</a>>><a href="/guestbook/">留言中心</a>>>查看留言</h1>
<div class="cart_lei">
</div>

  <div class="s_body">
    <div id="g_show">
      <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
          <h1><span>[发布者：<%# GetUserName(Eval("UserID","{0}")) %>]</span>留言标题：<%# Eval("Title")%></h1>
          <div class="g_show_txt"><%# Eval("TContent")%> <span>发表日期：<%# Eval("GDate")%></span></div>
        </ItemTemplate>
      </asp:Repeater>
    </div>
    <div class="g_show_page" id="Pager1" runat="server"></div>
    <!--留言分页 -->
    
    <div id="g_send">
      <h2>发表回复:</h2>
      <div id="g_send_edit">
        <textarea cols="80" id="TxtContents" width="580px" height="200px" name="TxtTContent" rows="10" runat="server"></textarea>
        <span id="sp2"></span> 
        <script id="headscript" type="text/javascript">
    //<![CDATA[
    CKEDITOR.replace('TxtContents',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
    //]]>
</script>
    <input type="hidden" id="txt_Config\" value="" />
    <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
    <asp:HiddenField ID="HdnCateID" runat="server" />
    <asp:HiddenField ID="HdnGID" runat="server" />
    <div style="margin:10px">
      <div style="width:15%;float:left;font-size:medium"><strong>验证码：</strong></div>
      <div style="width:85%;margin-top:3px;float:left">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px"
    ToolTip="点击刷新验证码" Style="cursor: pointer;line-height:23px; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
        <asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:70px;border:#CCC solid 1px;height:20px; line-height:23px;" autocomplete="off"></asp:TextBox>
        <span id="sp1"></span></div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="发表回复" OnClick="Button1_Click" OnClientClick="return CheckDirty()" />
  </div>
</div>
</div>
  

<div id="bottom">
<a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
<p>
<script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp; <%Call.Label("{$SiteName/}"); %> All rights reserved.</p>
</div>
</form>
</body>
</html>