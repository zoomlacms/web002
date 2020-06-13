<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.CreateHtml, App_Web_0tiy15lx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发布操作</title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        后台管理&nbsp;&gt;&gt;&nbsp;<a href="ContentManage.aspx">内容管理</a>&nbsp;&gt;&gt;&nbsp;<a
            href="CreateHtmlContent.aspx">生成发布</a></div>
    <div style="text-align: center;">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="10" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:TextBox ID="TextBox1" runat="server" Height="301px" TextMode="MultiLine" Width="712px"></asp:TextBox>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
<script type="text/javascript">
    window.setInterval("ShowInfo()", 1);

    function ShowInfo() {
        document.getElementById("TextBox1").scrollTop = document.getElementById("TextBox1").scrollHeight;
        if (document.getElementById("TextBox1").value.indexOf("生成完成") >= 0) {
            window.clearInterval();
        }
    }
</script>
