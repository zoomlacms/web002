<%@ page language="C#" autoeventwireup="true" inherits="manage_Common_FlashUpImg, App_Web_krvwsitc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>上传文件</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
    function butclick() {
    var txt = parent.document.getElementById("txtBL").value;
        if (txt == "" || txt == "null") {
            alert("请输入图片缩放的比例");
            return false;
        }
        else {
            document.getElementById("hfBL").value = txt;
            return true;
        }
    }

</script>
        <style type="text/css">
            .style1
            {
                height: 140px;
            }
        </style>
</head>
<body class="tdbg">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <table style="height: 100%; border: 0; width: 100%">
        <tr class="tdbg">
            <td valign="top" class="style1">
                <asp:FileUpload ID="FupFile" runat="server" /> 
                <asp:Button ID="BtnUpload"  runat="server" Text="上传"   
                    OnClick="BtnUpload_Click" />
                <asp:RequiredFieldValidator ID="ValFile"  runat="server" ErrorMessage="请选择上传路径" ControlToValidate="FupFile"></asp:RequiredFieldValidator>
                <asp:HiddenField ID="HdnCID" runat="server" />
                <asp:HiddenField ID="HdnType" runat="server" />
                <asp:HiddenField ID="hfBL" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
