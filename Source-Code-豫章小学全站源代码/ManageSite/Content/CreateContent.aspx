<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_reateContent, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>生成内容页</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="myForm" runat="server">
    <div class="column">
        <div class="columntitle">当前位置：功能导航 >><a href="CreateContent.aspx">生成内容</a></div>
        <table width="95%" align="center" cellpadding="3" cellspacing="3">
            <tr>
                <td width="160" align="left">
                    <strong>生成选定的栏目：</strong>
                    <!--请选择要生成的栏目名称（可多选）-->
                </td>
                <td align="left">
                    &nbsp;<asp:ListBox ID="ListBox1" runat="server" Height="228px" Width="145px">
                        
                    </asp:ListBox>
                    <asp:CheckBox ID="CheckBox2" runat="server" CausesValidation="True" 
                        BorderStyle="Double" />
                    &nbsp;全选
                </td>
            </tr>
            <tr style="background-position: center 50%; background-image: url(../pic/line.gif);
                background-repeat: repeat-x">
                <td width="160" align="left">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td width="160" align="left"><strong>生成栏目：</strong> <!-- 点击按钮生成栏目 --> </td>
                <td align="left">
                    生成范围：<asp:DropDownList ID="ChooseScope" runat="server">
                        <asp:ListItem Value="0">所有选中的项目</asp:ListItem>
                        <asp:ListItem Value="1">一个月内更新的栏目</asp:ListItem>
                        <asp:ListItem Value="2">一天内更新的栏目</asp:ListItem>
                        <asp:ListItem Value="3">2小时内更新的栏目</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;<asp:Button ID="Button1" class="button" Style="margin-bottom: 0px;" Text="生成选定栏目"
                        runat="server" />
                </td>
            </tr>
            <tr>
                <td width="160" align="left">
                    <strong>删除全部栏目页面：</strong>
                    <!-- 删除所有已生成的栏目页面 -->
                </td>
                <td align="left">
                    <asp:Button class="button" ID="DeleteAll" Text="删 除" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
