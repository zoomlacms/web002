<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_User_ActionConfig, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>用户投稿设置</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <script>
    function MM_openBrWindow(theURL, winName, features) { //v2.0
        window.open(theURL, winName, features);
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >><asp:Literal ID="LblTitle" Text="用户投稿设置" runat="Server"></asp:Literal> </div>
        <table width="100%" cellspacing="1" cellpadding="0" align="center">
            <tr class="tdbg" style="height: 23px">
                <td style="background-color: #F0F6FC; width: 15%;">
                    <b>站点名称</b>
                </td>
                <td style="background-color: #F0F6FC; width: 85%;">
                    <b>允许投稿的栏目</b>
                </td>
            </tr>
                    <div id="NodeList" runat="server">
                    
           
            
        </table>

    </div>
    </form>
</body>
</html>
