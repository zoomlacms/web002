<%@ page language="C#" autoeventwireup="true" inherits="MemoContext, App_Web_riis000b" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的备忘录</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent">会员中心</a>&gt;&gt; <a title="我的备忘录" href='<%=ResolveUrl("~/User/UserZone/Memo/MemoContext.aspx")%>'>我的备忘录</a>&gt;&gt;备忘录详细
</div>
<div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
</div>
    </div>

    <div class="us_topinfo" style="overflow: hidden; width: 98%">
        <table width="96%" border="0" align="center" cellpadding="2" cellspacing="0">
            <tr>
                <td id="tdTitle" runat="server" align="center" colspan="5" class="catebar">
                </td>
            </tr>
            <tr>
                <td colspan="5" height="1">
                </td>
                <tr>
                    <td id="tdPostTime" runat="server" align="center" colspan="5" class="border1">
                    </td>
                </tr>
            <tr>
                <td colspan="5" height="1">
                </td>
            </tr>
            <tr>
                <td height="300" colspan="5" align="left" valign="top" class="border1" id="tdContent"
                    runat="server">
                </td>
            </tr>
            <tr>
                <td colspan="5" height="1">
                </td>
            </tr>
            <tr>
                <td width="300" align="left" class="border1" id="tdUp" runat="server">
                </td>
                <td width="5" align="left">
                </td>
                <td width="300" align="left" class="border1" id="tdDown" runat="server">
                </td>
                <td width="5" align="left">
                </td>
                <td align="left" class="border1">
                    <asp:Label ID="labCount" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
