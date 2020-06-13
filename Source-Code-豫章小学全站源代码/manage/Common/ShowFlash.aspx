<%@ page language="C#" autoeventwireup="true" inherits="manage_Common_ShowFlash, App_Web_wkyvwkhb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
    function coler() {
        opener.location.reload();
        window.close();
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellpadding="0" border="0" width="100%">
        <tr  class="tdbg">
            <td>图片缩放比例：<asp:TextBox ID="txtBL" runat="server" Width="50px" ></asp:TextBox>%
            <strong style="color:Red">图片缩放比例按照%值计算,即：原图大小则是100%</strong>
            </td>
        </tr>
        <tr  class="tdbg">
            <td><iframe id="Iframe1" style="top: 2px" src="../Common/FlashUpImg.aspx?dir=m" width="100%" height="25px"
                    frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
