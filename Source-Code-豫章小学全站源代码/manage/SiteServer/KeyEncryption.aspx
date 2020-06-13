<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_KeyEncryption, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
<title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>站群管理 </span> &gt;&gt; <span>主站配置管理 </span>&gt;&gt; <span>密钥加密管理</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <tr>
                <td align="center" colspan="2" class="spacingtitle">
                    <b>密钥加密管理</b>
                </td>
            </tr>
             <tr class="tdbg">
            <td class="style1" align="left">
                <strong>密钥加密方式：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 70%;">
                <asp:DropDownList ID="Encrypttype" runat="server" AutoPostBack="true" 
                    onselectedindexchanged="Encrypttype_SelectedIndexChanged">
                    <asp:ListItem Value="0">不加密</asp:ListItem>
                    <asp:ListItem Value="1">Base64加密</asp:ListItem>
                    <asp:ListItem Value="2">DES加密</asp:ListItem>
                    <asp:ListItem Value="3">RSA加密</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        
        <tr class="tdbg" id="Encrypt" runat="server" visible="false">
            <td class="style1" align="left">
                <strong>密钥加密密钥：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:TextBox ID="EncryptKey" runat="server" Height="58px" TextMode="MultiLine" 
                    Width="407px"></asp:TextBox>
            </td>
        </tr>
        
        <tr class="tdbg" id="Tr1">
            <td class="style1" align="left">
                <strong>附加时间戳加密：</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:CheckBox ID="TimeEncrypt" runat="server" Text="使用" AutoPostBack="true" />　<font color=red>说明:此时间戳是经过了MD5+SHA1加密,在设定时间内更新一次</font>
            </td>
        </tr>
        
                <tr class="tdbg" id="Tr2" runat="server">
            <td class="style1" align="left">
                <strong>更新时间戳间隔时间：</strong><br />单位：分钟, 0 为不更新</td>
            <td class="tdbg" style="text-align: left; width: 60%;">
                <asp:TextBox ID="UpTimeuti" runat="server">0</asp:TextBox>
                <asp:DropDownList ID="UpTimeutiList" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">每分钟</asp:ListItem>
                    <asp:ListItem Value="10">每十分钟</asp:ListItem>
                    <asp:ListItem Value="30">每三十分钟</asp:ListItem>
                    <asp:ListItem Value="60">每小时</asp:ListItem>
                    <asp:ListItem Value="360">每六小时</asp:ListItem>
                    <asp:ListItem Value="720">每十二小时</asp:ListItem>
                    <asp:ListItem Value="1440">每天</asp:ListItem>
                    <asp:ListItem Value="2880">每二天</asp:ListItem>
                    <asp:ListItem Value="7200">每五天</asp:ListItem>
                    <asp:ListItem Value="10080">每七天</asp:ListItem>
                    <asp:ListItem Value="44640">每月</asp:ListItem>
                    <asp:ListItem Value="133920">每季度</asp:ListItem>
                    <asp:ListItem Value="535680">每年</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
            <tr class="tdbg">
                <td colspan="2" align="center" class="tdbgleft">
                    <asp:Button ID="Button1" class="C_input" runat="server" Text="提 交" />
                </td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    </form>
</body>
</html>
