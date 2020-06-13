<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.ManageSite.Content.ContentMove, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title> 内容批量移动</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >>内容批量移动
           </div>
        <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1">
            <tr>
                <td>
                    从栏目：
                </td>
                <td align="left">
                    <asp:ListBox ID="fromnode" runat="server" Width="230px" Height="260px" 
                        SelectionMode="Multiple"></asp:ListBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="fromnode" ErrorMessage="来源栏目能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg">
                <td>
                    转移到：
                </td>
                <td align="left">
                    &nbsp;栏目：<asp:DropDownList ID="tonode" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tonode" ErrorMessage="目标栏目不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg">
                <td>
                    转移类型：
                </td>
                <td align="left">
                    <asp:DropDownList ID="ConvertType" runat="server">
                        <asp:ListItem Value="1">仅移动内容</asp:ListItem>
                        <asp:ListItem Value="2">仅移动栏目</asp:ListItem>
                        <asp:ListItem Value="3">移动栏目及内容</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ConvertType" ErrorMessage="转移类型不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
                      
            <tr>
                <td colspan="2" style="background-position: center 50%; width: 100%; height: 10px; background-image: url(../images/line.gif);
                        background-repeat: repeat-x">
                </td>
            </tr>
            <tr class="tdbg">
            <td></td>
                <td align="left" >
                    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="批量处理" CssClass="button"
                        OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
