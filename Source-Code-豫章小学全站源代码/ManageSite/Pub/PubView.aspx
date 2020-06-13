<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_PubView, App_Web_vxpwslge" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title></title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/calendar.js"></script>
<style>
.atCenter
{
	    top:12px;
        left:expression(document.body.offsetWidth-this.offsetWidth-100)px;
        position: absolute;
        text-align: right;
}
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="r_navigation">
            
            当前位置：功能导航 >>
            <span>后台管理</span> &gt;&gt;&nbsp; <span><a href="PubView.aspx">查看信息</a></span>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:HiddenField ID="HiddenType" runat="server" />
        </div>
        <div class="border" style="margin-bottom: 3px; margin-top: 10px; text-align: center;">
            <asp:Label ID="ptit" runat="server" Font-Bold="True" Font-Size="14px"></asp:Label>
        </div>
        <div class="clearbox">
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" CellPadding="4" GridLines="None"
            Font-Size="12px" Style="margin-bottom: 3px; margin-top: 2px;" CssClass="r_navigation">
            <Fields>
            </Fields>
            <FooterStyle Font-Bold="True" BackColor="#FFFFFF" />
            <CommandRowStyle Font-Bold="True" CssClass="tdbgleft" />
            <RowStyle />
            <FieldHeaderStyle Font-Bold="True" />
            <PagerStyle HorizontalAlign="Center" />
            <HeaderStyle Font-Bold="True" />
            <EditRowStyle />
            <AlternatingRowStyle />
        </asp:DetailsView>
        <asp:HiddenField ID="HiddenSmall" runat="server" />
        <asp:HiddenField ID="HdnModelID" runat="server" />
        <asp:HiddenField ID="HiddenID" runat="server" />
        <asp:HiddenField ID="HiddenPubid" runat="server" />
        <div style="text-align: center;">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="回复" />
            &nbsp;<asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button1_Click" /></div>
    </form>
</body>
</html>
