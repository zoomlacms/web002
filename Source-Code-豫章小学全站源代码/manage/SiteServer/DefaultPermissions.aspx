<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_DefaultPermissions, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>站群管理 </span> &gt;&gt; <span>主站配置管理 </span>&gt;&gt; <span>子站默认权限配置</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <tr>
                <td align="center" colspan="2" class="spacingtitle">
                    <b>子站默认权限配置</b>
                </td>
            </tr>
            <tr class="tdbg">
                <td width="20%" align="right" class="tdbgleft">
                    <strong>权限配置：</strong>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>获取主站节点配置</asp:ListItem>
                        <asp:ListItem>获取主站会员信息</asp:ListItem>
                        <asp:ListItem>获取主站商城信息</asp:ListItem>
                        <asp:ListItem>获取主站内容</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr class="tdbg">
                <td colspan="2" align="center" class="tdbgleft">
                    <asp:Button ID="Button1" runat="server" class="C_input" Text="提 交" />
                </td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    </form>
</body>
</html>
