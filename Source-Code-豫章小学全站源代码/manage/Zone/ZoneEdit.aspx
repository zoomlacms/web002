<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_ZoneEdit, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员组模型编辑</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" type="text/javascript"></script>  
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
   <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; 空间管理 &gt;&gt; 查看申请信息 &gt;&gt;<span><asp:Literal ID="LNav" runat="server" Text="查看申请信息"></asp:Literal></span>
	</div>
    <div class="clearbox"></div>    
    <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr>
            <td class="spacingtitle" colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="查看申请信息"></asp:Literal></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>申请人用户名：</strong>
            </td>
            <td>
                <asp:Label ID="namelaber" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>空间名称：</strong>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 35%">
                <strong>空间简介：</strong>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
    <tr class="tdbgbottom">
            <td colspan="2">    
                <input name="Cancel" type="button" class="C_input"  id="Cancel" value="返回" onclick="javescript:history.go(-1)" />                
            </td>
        </tr>
     </table> 
</form>
</body>
</html>
