<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_User_RoleSetup, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

<script type="text/javascript" language="javascript">
    function GeneralPermissions_CheckAll(chk) {
        var oEvent = document.getElementById('GeneralPermissions');
        var chks = oEvent.getElementsByTagName("INPUT");
        for (var i = 0; i < chks.length; i++) {
            if (chks[i].type == "checkbox") chks[i].checked = chk.checked;
        }
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="column">
            <div class="columntitle">
                当前位置：功能导航 >><a href="RoleSetup.aspx">设置角色权限</a> </div>
            <table>
                <tr>
                    <td align="left">
                        角色名称：
                    </td>
                    <td align="left">
                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                       角色备注：
                    </td>
                    <td align="left">
                        <asp:Label ID="lblBake" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="column">
            <div class="columntitle">
                当前位置：功能导航 >> 通用权限设置</div>
            <table width="100%" cellpadding="4" cellspacing="0" border="0">
                <tr>
                    <td align="left">
                        <input type="checkbox" onclick="GeneralPermissions_CheckAll(this)" id="CheckAll"
                            name="CheckAll"><label for="CheckAll">全选</label>
                        <asp:CheckBoxList ID="GeneralPermissions" RepeatColumns="7" RepeatDirection="Horizontal"
                            runat="server">
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
        </div>
        <div class="column">
            <div class="columntitle">
               当前位置：功能导航 >>  站点权限设置</div>
            <table width="100%" cellpadding="4" cellspacing="0" border="0">
                <tr>
                    <td align="left">
                        <asp:Literal ID="PublishmentSystems" runat="server"></asp:Literal>
                    </td>
                </tr>
            </table>
        </div>
    <table width="95%" align="center" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center">
                <asp:Button class="button" ID="Submit" Text="保 存" runat="server" 
                    onclick="Submit_Click" />
                &nbsp;&nbsp;
                <input type="button" class="button" value="返 回" onclick="javascript:location.href='RoleManage.aspx';" />
            </td>
            <td>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
