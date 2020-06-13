<%@ page language="C#" autoeventwireup="true" inherits="User_PromotUnion_Dir_email, App_Web_d2gkw33d" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>注册推广链接</title>
<script language="javascript" type="text/javascript">
//复制命令
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
<form id="form1" runat="server">
    <div style="height:22px; overflow:hidden; font-size:14px; margin-top:22px; margin-left:23px;">
    您的推广注册链接：<asp:TextBox ID="unionprolink" runat="server" style="width:425px; border:1px solid #C9C9C9; padding:1px 0;"></asp:TextBox>
    <input type="button" value="复制注册推广链接" style="vertical-align:top; margin-left:16px;"  onclick="copytext('unionprolink')" />
    </div>
</form>
</body>
</html>