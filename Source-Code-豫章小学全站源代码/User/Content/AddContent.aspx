<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.User.Content.AddContentpage, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加内容</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<script src="../../js/Common.js" type="text/javascript"></script>
<script src="../../js/RiQi.js" type="text/javascript"></script>
    <script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
function SelectKey(){
window.open('/Common/KeyList.aspx?OpenerText=<%=TxtTagKey.ClientID %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
}

function SelectValues(ModelID,id) {
window.open('/Common/OptionManage.aspx?id=' + id + '&ModelID=' + ModelID + '', '', 'width=600,height=450,resizable=0,scrollbars=yes');
}
function shows() {
if (document.getElementById("IsBid").checked) {
// id="bidmoneytable" style="display:none"
document.getElementById("bidmoneytable").style.display = "";
document.getElementById("bidmoneytable1").style.display = "";
}
else {
document.getElementById("bidmoneytable").style.display = "none";
document.getElementById("bidmoneytable1").style.display = "none";
}
}

function changevalue(selectvalue) {
if (selectvalue == "2") {
document.getElementById('changeins').style.display = '';
}
else {
document.getElementById('changeins').style.display = 'none';
}
}

function getstrKeys() {
document.getElementById("TxtTagKey").value = "";
var strKeys = "";
var strkey = "<%=getKey()%>";
var strTitle = document.getElementById("txtTitle").value;
var keys = new Array();
keys = strkey.split(",");
for (var i = 0; i < keys.length; i++) {
if (!(strTitle.indexOf(keys[i]) < 0)) {
	if (i == 0) {
		strKeys = keys[i];
	}
	else {
		strKeys = strKeys + " " + keys[i];
	}
}
}
var strtxt = document.getElementById("TxtTagKey").value;
document.getElementById("TxtTagKey").value = strtxt + strKeys;
}                        
		
</script>

<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script src="/Common/Common.js" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div  >
<ul class="us_seta" style="margin-top: 10px; height: auto; border:1px solid #c6e3f7; ">
<h1 style="text-align: center">
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
<li style="width: 21%; float: left; line-height: 30px; text-align: right">所属节点：
</li>
<li style="width: 70%; line-height: 30px">
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</li>
<li style="width: 20%; float: left; line-height: 30px; text-align: right; margin-right:5px;">内容标题
</li>
<li style="width: 70%; line-height: 30px">
<asp:TextBox ID="txtTitle" runat="server" onblur="getstrKeys()" Text='' Width="35%"
	MaxLength="30"></asp:TextBox>
<span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
	runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTitle">内容标题必填</asp:RequiredFieldValidator>
</li>
<li style="width: 20%; float: left; line-height: 30px; text-align: right ;margin-right:5px;">关键字 </li>
<li style="width: 70%; line-height: 30px">
<asp:TextBox ID="TxtTagKey" runat="server" Text='' Width="50%"></asp:TextBox>
&nbsp;<span style="color: #0000ff">【</span><a href="#" onclick="SelectKey();"> <span
	style="text-decoration: underline; color: Green;">选择关键字</span></a><span style="color: #0000ff">】</span>
</li>
<li style="width: 100%; line-height: 30px">

<asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
<script id="headscript" type="text/javascript">
//<![CDATA[
    CKEDITOR.replace('txt_content',
{

    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]

});
//]]>
</script>
</li>
  <div class="clear">
</div>
<li style="width: 70%; float: left; line-height: 30px; text-align: right">
<asp:HiddenField ID="HdnNode" runat="server" />
<asp:HiddenField ID="HdnModel" runat="server" />
<asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
<asp:Button ID="EBtnSubmit" Text="添加项目" OnClick="EBtnSubmit_Click" runat="server"
	class="i_bottom" />
&nbsp;
<input type="button" id="BtnBack" class="i_bottom" value="返　回" onclick="javascript:location.href='MyContent.aspx?NodeID=<%=NodeID %>'" />
</li>
<li style="width: 100%; line-height: 30px;"></li>
</ul>
</div>
<div style="width:100%; height:500px; display:block;"></div>
</form>
<script src="../../JS/jquery-1.4.js" type="text/javascript"></script>
<script type="text/javascript">
var txtSynopsis = document.getElementById("txt_synopsis");
if (txtSynopsis != undefined && txtSynopsis.style.width!=null) {
var nwidth = txtSynopsis.style.width.substring(0,txtSynopsis.style.width.length-2);
if (nwidth > 600) {
txtSynopsis.style.width =  "600px";
}
}


$("table .tdbgleft").css("background", "transparent");
$("table .tdbg").css("background", "transparent");
</script>
</body>
</html>
