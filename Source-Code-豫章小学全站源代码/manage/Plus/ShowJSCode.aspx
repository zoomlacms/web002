<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.AddOn.ShowJSCode, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>获取广告代码</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
<script language="javascript" type="text/javascript" src="/JS/jquery-1.5.1.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="ADZoneManage.aspx">广告管理</a>>>获取广告代码</div> 
<div class="spacingtitle">获取广告代码</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
	
	<tr class="tdbg">
		<td align="left"   style="height:30px; padding-left:60px; padding-bottom:20px; padding-top:30px;">
			<asp:TextBox ID="TxtZoneCode" runat="server" TextMode="MultiLine" class="x_input" style="Width:578px;Height:30px; padding:5px;"></asp:TextBox>
		 &nbsp; <input id="Button1" type="button" value="获取广告代码" class="C_input"  onclick="copy()"/>
		<input id="Button1" type="button" value="返回列表"  class="C_input"  onclick="javascript:history.back()"  /></td>
        
	</tr> 
 <tr class="tdbg">
		<td align="left" style="  padding-left:60px;" >
		<span style="color:Grey">调用方法：点击按钮复制代码，粘贴到网页模板中的指定位置（飘、悬浮类广告放于模板最下方）即可。</span></td>
	</tr>
</table>
</form>
<script> 
  function copy() {
            var innerHTML = "复制广告JS失败您的浏览器不支持复制，请手动复制代码。";
            if (window.clipboardData) {
                innerHTML = "复制广告JS成功您现在可以将代码粘贴（ctrl+v）到网页中预定的广告位置。";

                var str = $("#TxtZoneCode").html();
                while (str.indexOf("&lt;") >= 0) {
                    str = str.replace("&lt;", "<");
                }
				 while (str.indexOf("&gt;") >= 0) {
                    str = str.replace("&gt;", ">");
                }

                window.clipboardData.setData("Text", str);
				alert(innerHTML);  

            }
else{ alert(innerHTML);  }
  }
</script>
</body>
</html>
