<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.ManageSite.Content.ShowJSCode, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>预览JS代码</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" /> 
</head>
<body>
    <form id="form1" runat="server">
     <div class="column">
        <div class="columntitle">
	当前位置：功能导航 >>版位JS调用代码
	</div> 
    <table width="100%" border="0" cellpadding="2" cellspacing="1" >
        <tr class="tdbgleft">
            <td align="center">
            <span style="color:Green">调用方法：将下面的代码插入到网页中预定的广告位置</span></td>
        </tr>
        <tr class="tdbg">
            <td align="center" style="height: 27px">
                <asp:TextBox ID="TxtZoneCode" runat="server" Height="102px" TextMode="MultiLine"
                    Width="578px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="center">
                <a href="ADZoneManage.aspx">返回</a></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
