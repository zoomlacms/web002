<%@ page language="C#" autoeventwireup="true" inherits="User_Info_Jobview, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>用户模型列表</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function gotoUrl(url)
    {
        window.location.href=url;
    }
    </script>
</head>
<body><form id="Form1" runat="server">
<div class="us_topinfo" style="width: 98%">
<div class="us_pynews"> <span><a title="网站首页" href="/" target="_parent">
    <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
    </a></span><span> &gt;&gt;
    <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
    </span> <span> &gt;&gt; </span><span>
    <asp:Label ID="LblModel" runat="server" Text="模型名称"></asp:Label>
    </span> </div>
<div class="cleardiv"></div>
</div>
<div id="Div1" class="us_setaa2" style="margin-top:10px;" runat ="server">
<ul>
    <li><a href="UserInfo.aspx">注册信息</a></li>
    <li><a href="UserBase.aspx">基本信息</a></li>
    <li>
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    </li>
    <div class="cleardiv"></div>
</ul>
</div>
<div id="Div2" class="us_seta" style="margin-top:10px; text-align: center" runat ="server">
<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<asp:HiddenField ID="HdnModelID" runat="server" />
</div>
<div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
<h1 style="text-align:center">信息列表&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
</h1>
<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="12px">
    <Fields></Fields>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#999999" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:DetailsView>
</div></form>
</body>
</html>