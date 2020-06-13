<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AddSpecCate, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加专题类别</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
     <div class="columntitle">当前位置：功能导航 >><%=titleStr%></div>   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
        <ContentTemplate>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">                
                <tr class="tdbg">
                    <td align="left" style="width: 35%; background-color: #F0F6FC">
                        <strong>专题类别名：</strong>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtSpecCateName" runat="server" AutoPostBack="True" OnTextChanged="TxtSpecCateName_TextChanged" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="专题类别不能为空!" ControlToValidate="TxtSpecCateName" Display="Dynamic" SetFocusOnError="True" />
                        <asp:HiddenField ID="HdnSpecCateID" Value="0" runat="server" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="left" style="width: 35%; background-color: #F0F6FC">
                        <strong>专题类别目录：</strong>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtSpecCateDir" runat="server" /><asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <asp:RequiredFieldValidator ID="ValrCateDir" runat="server" ErrorMessage="专题类别目录不能为空!" ControlToValidate="TxtSpecCateDir" Display="Dynamic" SetFocusOnError="True" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="left" style="width: 35%; background-color: #F0F6FC">
                        <strong>专题类别描述：</strong>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtSpecCateDesc" runat="server" Columns="50" Height="30" Width="500" Rows="5" TextMode="MultiLine" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="left" style="width: 35%; background-color: #F0F6FC">
                        <strong>打开方式：</strong>
                    </td>
                    <td align="left">
                        <asp:RadioButtonList ID="RBLOpenType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="0">原窗口打开</asp:ListItem>
                            <asp:ListItem Value="1">新窗口打开</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="left" style="width: 35%; background-color: #F0F6FC">
                        <strong>专题类别列表页扩展名：</strong>
                    </td>
                    <td align="left">
                        <asp:RadioButtonList ID="RBLFileExt" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">.html</asp:ListItem>
                            <asp:ListItem Value="1">.htm</asp:ListItem>
                            <asp:ListItem Value="2">.shtml</asp:ListItem>
                            <asp:ListItem Selected="True" Value="3">.aspx</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="left" style="width: 35%; background-color: #F0F6FC">
                        <strong>专题类别列表页模板：</strong>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtListTemplate" runat="server" Columns="50"></asp:TextBox>
                        <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtListTemplate')+'&FilesDir=',650,480)" class="button" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center" style="height: 38px">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" class="button" />&nbsp; &nbsp;
                <input name="Cancel" type="button" id="BtnCancel" value="取消" onclick="window.location.href='SpecialManage.aspx?nid=<%=nid %>'" class="button" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
