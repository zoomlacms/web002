<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_UnitConfig, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>网站信息配置</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt;<span>系统配置</span> &gt;&gt;<span>空间信息配置</span>
	</div>
	<div class="clearbox"></div>
        <table width="99%" cellspacing="1" cellpadding="0" class="border">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>虚拟商品单位：</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" class="l_input" runat="server" Width="50px"></asp:TextBox>币</td>
            </tr>
    
    </table>
        <br />    
        <asp:Button ID="Button1" class="C_input"  runat="server" Text="保存设置" OnClick="Button1_Click" /><br />  
</form>
</body>
</html>
