<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_PreviewAD, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head2" runat="server">
<title>预览版位JS效果</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />        
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>  
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border">
    <tr class="title">
        <td colspan="2" align="center"><strong>预览版位JS效果</strong></td>
    </tr>
    <tr class="tdbg2">
        <td style="height: 25px" align="center">
            <a href="javascript:this.location.reload();">刷新页面</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="ADZoneManage.aspx">返回上页</a>
        </td>
    </tr>
    <tr valign="top">
        <td>     
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>       
            <div style="height: 400px" id="ShowJS" runat="server">
            </div>
        </td>
    </tr>
</table>
</body>
</html>