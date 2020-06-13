<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_PreviewAD, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>

<head id="Head2" runat="server">
    <title>预览版位JS效果</title>
     <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />        
    <script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>  
</head>
<body>
  <div class="column">
        <div class="columntitle">
          当前位置：功能导航 >><a href="PreviewAD.aspx"> 预览版位JS效果</a> </div>
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border">
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
    </div>
</body>
</html>
