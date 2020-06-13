<%@ page language="C#" autoeventwireup="true" inherits="manage_Common_Flash, App_Web_krvwsitc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>Office转换Flash</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <link href="../../ManageSite/Style/style.css" type="text/css" rel="Stylesheet" />
    <link href="../../ManageSite/Style/Blue_style.css" type="text/css" rel="Stylesheet" />
</head>
<body class="tdbg">
    <form id="form1" runat="server">    
       <asp:Button Text="转换" CssClass="button" runat="server" ID="FlashButton" 
           onclick="FlashButton_Click" /> 
    </form>
</body>
</html>
