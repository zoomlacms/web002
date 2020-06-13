<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.login, App_Web_foogx2yc" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理登陆</title>
<link rel="stylesheet" type="text/css" href="../App_Themes/AdminDefaultTheme/style.css" />
<script type="text/javascript" src="/JS/Jquery.js"></script>
<script type="text/javascript">
	//<!--
	if (self != top) { top.location = self.location; }
	function ShowSoftKeyboard(obj) {
		if ((typeof (CheckLoaded) == "function")) {
			password1 = obj;
			var offset = $('#TxtPassword').offset();
			var top = offset.top;
			var left = offset.left;
			var objh = $('#TxtPassword').height();
			var y = top + objh + 10;
				y += "px";
			var x = left - 100 +"px";
			showkeyboard(x,y);
			Calc.password.value = '';
		}
		else {
			return false;
		}
	}
	function onfocus() {
		document.getElementById('TxtUserName').focus();
	}
	// -->
</script>
<script type="text/javascript" src="/JS/softkeyboard.js"></script>
</head>
<body onload="onfocus();" class="login5_body">
    <form id="Login" runat="server" defaultbutton="IbtnEnter">
    <div class="login5_box">
        <div class="login5_box_l"><img src="<%Call.Label("{$LogoUrl/}");%>" alt="<%Call.Label("{$SiteName/}");%>_后台管理系统" /></div>
        <div class="login5_box_r">
        <h2>管理登陆</h2>
        <table>
            <tr>
                <th>用户名：</th>
                <td>
                    <asp:TextBox ID="TxtUserName" runat="server" CssClass="username" TabIndex="1" autocomplete="off" size="20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>密　码：</th>
                <td>
                    <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" MaxLength="18" CssClass="password" TabIndex="2"  autocomplete="off" ></asp:TextBox>
                </td>
            </tr>
            <tr id="safecode" runat="server">
                <th>安全码： </th>
                <td>
                    <asp:TextBox ID="TxtAdminValidateCode" TextMode="Password" runat="server" MaxLength="6"  CssClass="Safeword" TabIndex="3" size="20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th><asp:Label ID="lblVcode" runat="server"> 验证码：</asp:Label></th>
                <td >                       
                 <asp:TextBox ID="TxtValidateCode"  runat="server" CssClass="vercode" Style="width: 55px;vertical-align: middle;" TabIndex="4" autocomplete="off"></asp:TextBox>
                 <asp:Image ID="VcodeLogin"  runat="server" ImageUrl="../Common/ValidateCode.aspx"  Height="20px" ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td colspan="2" align="center">
                <div class="login5_bot_l">
                <asp:ImageButton ID="IbtnEnter" ImageUrl="../App_Themes/AdminDefaultTheme/images/signin.jpg"  runat="server" Style="cursor: hand;" OnClick="IbtnEnter_Click" TabIndex="5" />
                <input type="image" name="ImageButton2" id="Image2" src="../App_Themes/AdminDefaultTheme/images/reset.jpg" onclick="javascript:window.close();" tabindex="6" causesvalidation="false" />
                </div>
                 <div class="login5_bot_r">
                 <a href="/" target="_blank" title="Home"><span></span></a>
                 <a href="http://help.zoomla.cn" target="_blank" title="help"><span></span></a>
                 <a href="http://help.zoomla.cn/data" target="_blank" title="Data dictionary"><span></span></a>
                 </div>
                </td>
            </tr>
        </table>
        </div>
    </div>
    <div class="login5_bottom">Copyright &copy Shanghai Zoomla!CMS Software technology Co., LTD all rights reserved</div>
    </form>
</body>
</html>