<%@ page language="C#" title="管理员角色分配" autoeventwireup="true" inherits="User.RoleManager, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理员角色分配</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script type="text/javascript" language="javascript"> 
function ChannelPermissions_CheckAll(chk){
	var oEvent = document.getElementById('ChannelPermissions');
	var chks = oEvent.getElementsByTagName("INPUT");
	for(var i=0; i<chks.length; i++)
	{
		if(chks[i].type=="checkbox") chks[i].checked=chk.checked;
	}
}
 
function WebsitePermissions_CheckAll(chk){
	var oEvent = document.getElementById('WebsitePermissions');
	var chks = oEvent.getElementsByTagName("INPUT");
	for(var i=0; i<chks.length; i++)
	{
		if(chks[i].type=="checkbox") chks[i].checked=chk.checked;
	}
}
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
                当前位置：功能导航 >> 与站点相关权限设置</div>
            <table width="100%" cellpadding="4" cellspacing="0" border="0">
                <tr>
                    <td align="left">
                        <input type="checkbox" onclick="WebsitePermissions_CheckAll(this)" id="CheckAll2"
                            name="CheckAll2" /><label for="CheckAll2">全选</label>
                        <asp:CheckBoxList ID="WebsitePermissions" RepeatColumns="5" Width="80%" RepeatDirection="Horizontal"
                            runat="server">
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
        </div>
            <div class="column">
                <div class="columntitle">
                    当前位置：功能导航 &gt;&gt;
                    与栏目相关权限设置</div>
                <table width="100%" cellpadding="4" cellspacing="0" border="0">
                    <tr>
                        <td align="left">
                            <input type="checkbox" onclick="ChannelPermissions_CheckAll(this)" id="CheckAll1"
                                name="CheckAll1">全选
                            <asp:CheckBoxList ID="ChannelPermissions" RepeatColumns="5" Width="80%" RepeatDirection="Horizontal"
                                runat="server">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                </table>
            </div>
            <table width="100%">
        <tr class="tdbg">
            <td align="center" colspan="2" style="height: 30px">
                &nbsp;<asp:Button ID="btnSave"  CssClass="button" runat="server" OnClick="btnSave_Click" Text="保存权限设置" />
                &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnBack" runat="server"  CssClass="button" Text="返回" OnClick="btnBack_Click" />
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
