<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.User.Content.EditContentpage, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>更新内容</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<script src="../../js/Common.js" type="text/javascript"></script>
<script src="../../js/RiQi.js" type="text/javascript"></script>
    <script src="/JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
function SelectKey()
{
    window.open('/Common/KeyList.aspx?OpenerText=<%=TxtTagKey.ClientID %>','','width=600,height=450,resizable=0,scrollbars=yes');
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

function showss(bode) {
    window.onload = function() {
        if (bode) {
            // id="bidmoneytable" style="display:none"
            document.getElementById("bidmoneytable").style.display = "";
            document.getElementById("bidmoneytable1").style.display = "";
        }
        else {
            document.getElementById("bidmoneytable").style.display = "none";
            document.getElementById("bidmoneytable1").style.display = "none";
        }
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
window.onload = function() {
if (document.getElementById('BidType').value == '2') {
    document.getElementById('changeins').style.display = '';
} else {
    document.getElementById('changeins').style.display = 'none';
}
}
</script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
</head>
<body>
<form id="form1" runat="server">
		<ul class="us_seta" style="margin-top:10px;">
			<h1 style="text-align:center"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
            <li  style="width:100%; height:1px; "></li>
            <li style="width:21%; float:left;line-height:30px">
            <div align="right">所属节点：</div>
            </li>
            <li style="width:70%;line-height:30px">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </li>
            <li  style="width:100%; height:1px; "></li>
            <li style="width:20%; float:left;line-height:30px; text-align:right; margin-right:5px;">
            内容标题
            </li>
            <li style="width:70%;line-height:30px">
            <asp:TextBox ID="txtTitle" runat="server" Text='' Width="35%" MaxLength="30"></asp:TextBox>
                <span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTitle">内容标题必填</asp:RequiredFieldValidator>
            </li>
            <li  style="width:100%; height:1px; "></li>
                <li style="width:20%; float:left;line-height:30px; text-align:right; margin-right:5px;">用户分类</li>
	    <li style="width:70%;line-height:30px">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
	    </li>
        <li  style="width:100%; height:1px; "></li>
            <li style="width:20%; float:left;line-height:30px; text-align:right; margin-right:5px;">关键字</li>
    <li style="width: 70%; line-height: 30px">
        <asp:TextBox ID="TxtTagKey" runat="server" Text='' Width="50%"></asp:TextBox>
        &nbsp;<span style="color: #0000ff">【</span><a href="#" onclick="SelectKey();"> <span
            style="text-decoration: underline; color: Green;">选择关键字</span></a><span style="color: #0000ff">】</span>
    </li>
    <li  style="width:100%; height:1px; "></li>
    <li style="width:20%; float:left;line-height:30px; text-align:right; margin-right:5px;">
        <asp:Label ID="Label3" runat="server" Text="发布悬赏"></asp:Label>
    </li>
    <li style="width: 70%; line-height: 30px">
        <asp:DropDownList ID="BidType" runat="server" onchange="changevalue(this.value);">
            <asp:ListItem Value="0">选择方式</asp:ListItem>
            <asp:ListItem Value="1">单人中标</asp:ListItem>
            <asp:ListItem Value="2">记件工资</asp:ListItem>
        </asp:DropDownList>
        <div id="changeins" style="display: none">
            我想要
            <asp:TextBox ID="pronum" Width="30px" runat="server" class="l_input">0</asp:TextBox>
            个方案，每个
            <asp:TextBox ID="bidmoney" Width="30px" runat="server" class="l_input">0</asp:TextBox>
            元
        </div>
    </li>
    <li  style="width:100%; height:1px; "></li>
    <li id="bidmoneytable" style="width:20%; float:left;line-height:30px; text-align:right; margin-right:5px;">
        <asp:Label ID="Label5" runat="server" Text="项目完成周期"></asp:Label>
    </li>
    <li id="bidmoneytable1" style="width: 70%; line-height: 30px;">
        <asp:TextBox ID="proweek" runat="server" Width="30px" class="l_input">0</asp:TextBox>
        天 </li>
    <li style="width: 100%;">
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
        <div class="clear"></div>
    <li style="width: 70%; float: left; line-height: 30px; text-align: right">
        <asp:HiddenField ID="HdnItem" runat="server" />
        <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
        <asp:Button ID="EBtnSubmit" Text="更新项目" OnClick="EBtnSubmit_Click" runat="server" />
        &nbsp;
        <asp:Button ID="BtnBack" runat="server" Text="返　回" OnClick="BtnBack_Click" UseSubmitBehavior="False"
            CausesValidation="False" />
    </li>
    <li style="width: 20%; line-height: 30px"></li>
</ul>
</form>
</body>
</html>
