<%@ page language="C#" autoeventwireup="true" inherits="manage_APP_Suppliers, App_Web_5h1wvjue" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >

<html >
<head runat="server">
    <title>APP登录</title>
<script src="../../JS/jquery.js" type="text/javascript"></script>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    $(function () {
        $(".Cksele").focus(function () {
            $(this).select();
        })
    })
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr>
		<td class="spacingtitle" align="center">
			<asp:Literal ID="LTitle" runat="server" Text="APP登录平台"></asp:Literal>
		</td>
	</tr>
	<tr class="tdbg">
		<td valign="top" style="margin-top: 0px; margin-left: 0px;">
			<table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
				<tbody id="Tabs0">
					<tr class="tdbg">
						<td class="tdbgleft" style="height: 26px">
							<strong>回调地址</strong>
						</td>
						<td style="height: 26px;">
							<input id="callback" type="text" value="" class="Cksele" runat="server" />
						</td>
					</tr>
                    <tr class="tdbg">
						<td class="tdbgleft" style="height: 26px">
							<strong>百度接入</strong>
						</td>
						<td style="height: 26px;">
							<input type="checkbox" id="CkBaidu"  value="" runat="server" />
      <label for="CkBaidu"><img style="cursor:pointer;" src="Image/Baidu_1.png" /></label>
						</td>
					</tr>
                    <tr class="tdbg">
						<td class="tdbgleft" style="height: 26px">
							
						</td>
						<td style="height: 26px;">
							  Key:<asp:TextBox ID="BKey" CssClass="Cksele" runat="server"></asp:TextBox>
    &nbsp;&nbsp;
    Secret  Key:<asp:TextBox ID="BSKey" CssClass="Cksele" runat="server"></asp:TextBox>
						</td>
					</tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
	                    <tr>
		                    <td align="left" style="height: 39px">
                            <asp:Button ID="KeyTj" runat="server" class="C_input"  Text="提交" onclick="KeyTj_Click" />
		                   </td>
	                    </tr>
</table>
 
   

    <br />

        
    </div>
    </form>
</body>
</html>
