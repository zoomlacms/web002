 <%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_ZoneConfig, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员空间配置</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>会员空间管理</span> &gt;&gt; 会员空间配置
        </div>
        <div class="clearbox"></div>
        <div>
            <table width="100%"  border="0" cellpadding="2" cellspacing="1" class="border">
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td width="24%" align="center"  class="tdbgleft">
                        空间申请是否需要经过审核：</td>
                    <td width="76%" valign="middle">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" class="C_input"  runat="server" Text="保  存" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
</form>
</body>
</html>
