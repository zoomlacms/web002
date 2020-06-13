<%@ page language="C#" autoeventwireup="true" inherits="User_Cloud_NewFolder, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>新建文件夹</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="../user/cloud/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="../../JS/jquery.windows-engine.js" type="text/javascript"></script>
    <script src="../JS/jquery.js" type="text/javascript"></script>
</head>
<body>
    <form id="NewFolder" runat="server" action="">
    <div style="margin-top: 20px; margin-left: 20px;">
        <input type="text" id="Name" runat="server" />
        <%--<input type="button" id="Button1" class="C_input" value="刷新" runat="server" onclick="window.parent.frames['main_right'].location.reload();" />--%>
        <asp:Button ID="New" CssClass="C_input" Text="确定" runat="server" OnClick="New_Click" />
    </div>
    </form>
</body>
</html>
