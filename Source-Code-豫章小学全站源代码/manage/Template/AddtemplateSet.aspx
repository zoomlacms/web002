<%@ page language="C#" autoeventwireup="true" inherits="manage_Template_AddtemplateSet, App_Web_balgrtw4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>添加方案</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<span><a href="KeyWordManage.aspx">方案管理</a></span>
        &gt;&gt;<span> 添加方案</span>
    </div>
    <div class="clearbox">
    </div>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td colspan="2" class="spacingtitle">
                <asp:Label ID="LblTitle" runat="server" Text="添加方案" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>方案名称：&nbsp;</strong>
            </td>
            <td align="left">
                <asp:TextBox ID="proname" runat="server" class="l_input" Width="220px"></asp:TextBox>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>作者：&nbsp;</strong>
            </td>
            <td align="left">
                <asp:TextBox ID="txtAuthor" runat="server" class="l_input" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>授权方式：&nbsp;</strong>
            </td>
            <td align="left">
                <asp:RadioButtonList ID="protype" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="1">付费</asp:ListItem>
                    <asp:ListItem Value="0">免费</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>模板目录：&nbsp;</strong>
            </td>
            <td align="left">
                <asp:DropDownList ID="tempdirlist" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right" style="width: 105px">
                <strong>排序：&nbsp;</strong>
            </td>
            <td align="left">
                <asp:TextBox ID="ornum" runat="server" Columns="5" class="l_input">0</asp:TextBox>
                <span style="color: blue">数字越大越高排在越前</span>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" runat="server" 
                    onclick="EBtnSubmit_Click" />&nbsp;&nbsp;
                <input name="Cancel" type="button" class="C_input" id="Cancel" value="取消" onclick="javascript:window.location.href='TemplateSet.aspx'" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
