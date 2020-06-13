<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.Survey, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>编辑问卷投票</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <script type="text/javascript" src="/JS/RiQi.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >> 添加投票</div>
    <table width="100%" cellpadding="2" cellspacing="1" style=" background-color:#F0F6FC">
        <tr>
            <td  colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="添加问卷投票"></asp:Literal></td>
        </tr>
        <tr class="tdbg">
            <td style="width: 35%">
                <strong>问卷投票名称：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtSurveyName" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtSurveyName">问卷投票名称不能为空</asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg">
            <td>
                <strong>简介：</strong>
            </td>
            <td>                
                <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Width="365px"
                    Height="43px" />
            </td>
        </tr>
        <tr class="tdbg">
            <td>
                <strong>类型：</strong>                
            </td>
            <td>
                <asp:RadioButtonList ID="RblSurType" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">投票</asp:ListItem>
                    <asp:ListItem Value="2">问卷</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg">
            <td>
                <strong>截止时间：</strong>                
            </td>
            <td>
                <asp:TextBox ID="txtEndTime" runat="server" onblur="setday(this);" onclick="setday(this);"></asp:TextBox></td>
        </tr>  
        <tr class="tdbg">
            <td>
                <strong>同IP重复次数：</strong>                
            </td>
            <td>
                <asp:TextBox ID="txtIPRepeat" runat="server" Text="1"></asp:TextBox>0为无限制</td>
        </tr>       
        <tr class="tdbg">
            <td>
                <strong>是否需登陆：</strong>
            </td>
            <td>
                <asp:CheckBox ID="ChkNeedLogin" runat="server" />是</td>
        </tr>
        <tr class="tdbg">
            <td>
                <strong>是否启用：</strong>
            </td>
            <td>
                <asp:CheckBox ID="ChkIsOpen" runat="server" />是</td>
        </tr>
        <tr >
            <td colspan="2">
            <asp:HiddenField ID="HdnSurveyID" runat="server" />
                <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button" class="inputbutton" id="Cancel" value="取消" onclick="window.location.href='SurveyManage.aspx';" />                
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
