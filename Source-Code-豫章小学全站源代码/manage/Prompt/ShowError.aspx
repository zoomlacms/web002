<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Admin.Prompt.ShowError, App_Web_nrsboslk" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>错误提示信息</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">   
*{margin:0 auto;}   
</style> 
</head>

<body id="MasterPagebody">
    <form id="form1" runat="server">
    <br />
    <br />
    <div>
        <table cellpadding="2" cellspacing="1" border="0" width="400" class="border" align="center">
            <tr align="center" class="title">
                <td>
                    <strong>错误信息</strong>
                </td>
            </tr>
            <tr class="tdbg">
                <td valign="top" height="100">
                    <br />
                    <b>产生错误的可能原因：</b><br />
                    <asp:Literal ID="LtrErrorMessage" runat="server" >[]</asp:Literal>
                </td>
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
