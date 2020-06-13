<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.SurveyResult, App_Web_t3qayxfc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>问卷投票结果</title>    
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >>问卷投票结果</div>
	<table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr style="background-color:#F0F6FC">
            <td class="spacingtitle" colspan="3" align="center">
                <asp:Literal ID="LitSurveyName" runat="server" Text=""></asp:Literal></td>
        </tr>
        <asp:Literal ID="ResultHtml" runat="server"></asp:Literal>
        <tr class="tdbgbottom">
            <td colspan="3">            
                <input name="print" type="button" class="button" id="Button1" value="打印" onclick=";" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button" class="button" id="Cancel" value="取消" onclick="window.location.href='SurveyManage.aspx';" />                
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
