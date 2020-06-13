<%@ page language="C#" autoeventwireup="true" inherits="User_Info_JobsView, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>用户模型列表</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function gotoUrl(url) {
        window.location.href = url;
    }
</script>
</head>
<body>
<form runat="server">
<div class="us_seta">
    <span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span>
    <span>&gt;&gt;<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label></span>
    <span>&gt;&gt; </span>
    <span><asp:Label ID="LblModel" runat="server" Text="模型名称"></asp:Label></span>
</div>
<div id="Div1" class="us_seta" style="margin-top: 10px;" runat="server">
    <ul>
        <li><a href="UserInfo.aspx">注册信息</a></li>
        <li><a href="UserBase.aspx">基本信息</a></li>
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    </ul>
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
    <h1 style="text-align: center">信息列表&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text=""></asp:Label></h1>
    <table cellspacing="0" cellpadding="4" border="0" id="Table1" style="color: #333333; font-size: 12px; height: 50px; width: 750px; border-collapse: collapse;">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </table>
    <asp:HiddenField ID="HdnModelID" runat="server" />
</div>
</form>
</body>
</html>