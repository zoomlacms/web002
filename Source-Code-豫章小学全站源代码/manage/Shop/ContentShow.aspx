<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_ContentShow, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>显示商品</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">        
    <span>后台管理</span> &gt;&gt; <span><a href="ProductManage.aspx">商品管理</a></span>&gt;&gt;
    显示商品</div>
<div class="clearbox">
</div>
<div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="border"
        align="center">
        <tr align="center">
            <td colspan="2" class="spacingtitle"><asp:Label ID="Label7" runat="server" Text="修改商品成功"></asp:Label></td>
        </tr>
        <tr class="tdbg">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">所属栏目：</td>
            <td><asp:Label ID="NodeName" runat="server" Text=""></asp:Label> &nbsp;</td>
        </tr>
        <tr class="tdbg">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">标题：</td>
            <td><asp:Label ID="title" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">市场参考价：</td>
            <td><asp:Label ID="ckPrice" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">当前零售价：</td>
            <td><asp:Label ID="nowPrice" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr class="tdbg">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">积分价格：</td>
            <td><asp:Label ID="lblpoint" runat="server" Text=""></asp:Label></td>
        </tr>
            <tr class="tdbg">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">点击数：</td>
            <td><asp:Label ID="lblCountHits" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr class="tdbg">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">销售状态：</td>
            <td><asp:Label ID="shopState" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">属性设置：</td>
            <td><asp:Label ID="codes" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg">
            <td height="22" align="center" colspan="2" style="line-height: 25px;">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</div>
</form>
</body>
</html>