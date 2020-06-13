<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_PubView, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<html>
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
<div style="text-align:center">
    <div class="r_navigation">
    <span>用户管理</span> &gt;&gt; <span>
        查看信息</span>
            <asp:HiddenField ID="HiddenID" runat="server" />
        <asp:HiddenField ID="HiddenSmall" runat="server" />
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:HiddenField ID="HiddenType" runat="server" />
        <asp:HiddenField ID="HiddenMenu" runat="server" />
</div>
<div class="clearbox" > </div>
        <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" 
                    CellPadding="4" GridLines="None" 
        Font-Size="12px" style="margin-bottom: 3px; margin-top:2px;" 
        CssClass="border" ForeColor="#333333">
                    <Fields></Fields>
                    <FooterStyle Font-Bold="True"  BackColor="#DBF9D9" ForeColor="White" />
                    <CommandRowStyle Font-Bold="True" BackColor="#E2DED6" />
                    <RowStyle BackColor="#F6FDF6" ForeColor="#333333"/>
                    <FieldHeaderStyle Font-Bold="True" BackColor="#E7FAE7" />
                    <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White" />
                    <HeaderStyle Font-Bold="True" BackColor="#DBF9D9" ForeColor="White" />
                    <EditRowStyle BackColor="#DBF9D9" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:DetailsView> 
                <asp:HiddenField ID="HdnModelID" runat="server" />
                <asp:HiddenField ID="HiddenPubid" runat="server" />
<div style="text-align:center;"> 
    <asp:Button ID="Button2" runat="server" Text="回复" onclick="Button2_Click" />
    &nbsp;<asp:Button ID="Button1" runat="server" Text="返回" 
        onclick="Button1_Click" /></div>
</form>
</body>
</html>
