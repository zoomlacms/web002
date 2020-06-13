<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_SysTools_AccessRestriction, App_Web_ljn1ykei" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register src="IpAscx.ascx" tagname="IpAscx" tagprefix="uc1" %>
<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>访问限制选项</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 24%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
		当前位置：功能导航 >><a href="AccessRestriction.aspx">IP访问限定配置</a>
	</div> 
    <table width="100%" border="0" cellpadding="0" cellspacing="1" >
        <tr >
            <td width="24%;">
                <strong>全站来访限定方式：</strong></td>
            <td align="left" >
                <asp:RadioButtonList ID="LockIPType" runat="server">
                    <asp:ListItem Value="0">不启用来访限定功能，任何IP都可以访问本站。</asp:ListItem>
                    <asp:ListItem Value="1">仅仅启用白名单，只允许白名单中的IP访问本站。</asp:ListItem>
                    <asp:ListItem Value="2">仅仅启用黑名单，只禁止黑名单中的IP访问本站。</asp:ListItem>
                    <asp:ListItem Value="3">同时启用白名单与黑名单，先判断IP是否在白名单中，如果不在，则禁止访问；如果在则再判断是否在黑名单中，如果IP在黑名单中则禁止访问，否则允许访问。</asp:ListItem>
                    <asp:ListItem Value="4">同时启用白名单与黑名单，先判断IP是否在黑名单中，如果不在，则允许访问；如果在则再判断是否在白名单中，如果IP在白名单中则允许访问，否则禁止访问。</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr >
            <td >
                <strong>全站IP段白名单：</strong></td>
            <td >
                <uc1:IpAscx ID="IpAscx1" runat="server" />
            </td>
        </tr>
        <tr>
            <td >
                
                <strong>全站IP段黑名单：</strong></td>
            <td >
                <uc1:IpAscx ID="IpAscx2" runat="server" />
            </td>
        </tr>       
    </table>
        <br />            
        <asp:Button ID="Button1" runat="server" Text="保存设置" CssClass="button" OnClick="Button1_Click" />
        <br />
    </div>
    </form>
</body>
</html>
