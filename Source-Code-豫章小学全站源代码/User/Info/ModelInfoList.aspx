<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.ModelInfoList, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户模型列表</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function gotoUrl(url)
{
	window.location.href=url;
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_seta">
        <span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label></span>
        <span> &gt;&gt; </span><span><asp:Label ID="LblModel" runat="server" Text="模型名称"></asp:Label></span>
    </div>
    <div class="us_setaa2" style="margin-top:10px;" runat ="server">
        <ul>
        <li><a href="UserInfo.aspx">注册信息</a></li>
        <li><a href="UserBase.aspx">基本信息</a></li>
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </ul>
    </div>
    <div class="us_seta" style="margin-top:10px;" runat ="server">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label> <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:HiddenField ID="HdnModelID" runat="server" />
    </div>
    <div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
        <h1 style="text-align:center">信息列表</h1>
        <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" OnRowDataBound="Egv_RowDataBound" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="暂无数据">
            <Columns>
            </Columns>
            <EmptyDataRowStyle BackColor="White" Font-Bold="True" ForeColor="#000000" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" Height="25px" />
            <EditRowStyle BackColor="#2461BF" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>        
    </div>
    </form>
</body>
</html>