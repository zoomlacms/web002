<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.manage.ShowMessage, App_Web_nrsboslk" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>信息提示页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">   
*{margin:0 auto;}   
</style> 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table cellpadding="2" cellspacing="1" border="0" width="400" class="border" align="center">
                <tr align="center" class="title">
                    <td>
                        <asp:Label ID="LblMessageTitle" runat="server" Text="信息提示" Font-Bold="true"></asp:Label></td>
                </tr>
                <tr class="tdbg">
                    <td valign="top" height="100">
                        <br />
                        <asp:Literal ID="LtrMessage" runat="server"></asp:Literal></td>
                </tr>
                <tr align="center" class="tdbg">
                    <td>
                        <asp:HyperLink ID="LnkReturnUrl" runat="server"><< 返回上一页</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>