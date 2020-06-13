<%@ page language="C#" autoeventwireup="true" inherits="manage_Lockin, App_Web_foogx2yc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>解锁</title>
<link rel="stylesheet" type="text/css" href="../App_Themes/AdminDefaultTheme/style.css" />
<style type="text/css">
#lock{height:350px;background:url(/Install/images/bg.jpg) no-repeat;color:#1C6297; text-align:center; padding-top:170px; width:920px;}
.loFont{background:url(../App_Themes/AdminDefaultTheme/images/lock_yellow.jpg) no-repeat;padding-left:128px; width:120px; margin:auto; padding-top:60px; color:#FFF; line-height:18px}
</style>
<script type="text/javascript"  language="javascript">
    //设置Cookies
    function setCookie(obj) {
        if (!navigator.cookieEnabled) {
            alert('不允许设置Cookie项!');
        } else {
            var date = new Date();
            date.setTime(date.getTime() + 60000 * 10);
            document.cookie ='SetLock=' + escape(obj) + ';expires=' + date.toGMTString() + ';path=/' + ';domaim=zgdsc.cn' + ':secure';
        }
    }
    function keydown() {
        if (event.keyCode == 13) {
            event.returnValue = false;
            event.cancel = true;
            
            document.getElementById("btn").click();
        }
    }
</script>
</head>
<body >
<form id="Login" runat="server" style="background-color:#0A558C;" action="Lockin.aspx">
<div id="lock" align="center">
<div class="loFont">
当前界面被管理员锁定<br />请输入密码按回车解锁<br />
 <asp:TextBox ID="TxtPassword" TextMode="Password"  runat="server" MaxLength="15" Width="100px" class="password" TabIndex="2"  onkeydown="keydown()"></asp:TextBox>
  <div id="tips" runat='server' style="color:Red"></div></div>
</div>
 <asp:Button ID="btn" runat="server" Text="提交" onclick="btn_Click1" />
</form>
</body>
</html>