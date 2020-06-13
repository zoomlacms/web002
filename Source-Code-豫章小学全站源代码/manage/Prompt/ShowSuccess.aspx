<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Admin.Prompt.ShowSuccess, App_Web_nrsboslk" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>成功提示信息</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <%=link %>
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
                        <strong>成功信息</strong></td>
                </tr>
                <tr class="tdbg">
                    <td valign="top" height="100">
                        <br />
                        <asp:Literal ID="LtrSuccessMessage" runat="server"></asp:Literal></td>
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
