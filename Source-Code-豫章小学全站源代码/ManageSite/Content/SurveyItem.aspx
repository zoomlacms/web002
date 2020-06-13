<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.SurveyItem, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>问卷投票问题</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >>问卷投票问题</div>

    <table  width="100%" cellpadding="2" cellspacing="1" style="background-color:#F0F6FC">
        <tr>
            <td colspan="2" align="center">
                添加问卷投票问题:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr class="tdbg">
            <td style="width: 35%">
                <strong>问题标题：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtQTitle" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtQTitle">问题标题不能为空</asp:RequiredFieldValidator></td>
        </tr>        
        <tr class="tdbg">
            <td>
                <strong>类型：</strong>                
            </td>
            <td>
                <asp:RadioButtonList ID="RblTypeID" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">单选项</asp:ListItem>
                    <asp:ListItem Value="2">复选项</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg">
                <td>分行键入每个选项：</td>
                <td>
                    <asp:TextBox ID="RadioType_Content" runat="server" TextMode="MultiLine" Columns="40" Rows="6"></asp:TextBox> <span style="color: red">
                        *</span><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RadioType_Content">选项不能为空</asp:RequiredFieldValidator>
                </td>
        </tr>            
        
        <tr >
            <td colspan="2">
            <asp:HiddenField ID="HdnSurveyID" runat="server" />
                <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" CssClass="button" runat="server" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button" class="button" id="Cancel" value="取消" onclick="window.location.href='SurveyManage.aspx';" />                
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
