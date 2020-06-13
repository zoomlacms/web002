<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_AddKeyWord, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加关键字</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<span>其他管理</span> &gt;&gt;<span><a href="KeyWordManage.aspx">关键字管理</a></span> &gt;&gt;<span>
                                添加关键字</span>	</div> 
                                    <div class="clearbox"></div>  
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="LblTitle" runat="server" Text="添加关键字" Font-Bold="True"></asp:Label></td>
    </tr>
    <tr class="tdbg"onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>关键字名称：&nbsp;</strong></td>
        <td align="left">
            <asp:TextBox ID="TxtKeywordText" runat="server" class="l_input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValrKeywordText" ControlToValidate="TxtKeywordText"
                runat="server" ErrorMessage="关键字名称不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>关键字类别：&nbsp;</strong></td>
        <td  align="left">
            <asp:RadioButtonList ID="RadlKeywordType" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="0">常规关键字</asp:ListItem>
                <asp:ListItem Value="1">搜索关键字</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>关键字权重：&nbsp;</strong></td>
        <td  align="left">
            <asp:TextBox ID="TxtPriority" runat="server" Columns="5" class="l_input"></asp:TextBox>
            <span style="color: blue">数字越大权重越高越被优先</span>
            <asp:RequiredFieldValidator ID="ValrPriority" ControlToValidate="TxtPriority" runat="server"
                ErrorMessage="关键字权重不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>
                 </td>
    </tr>
    <tr class="tdbgbottom">
        <td colspan="2">
          <asp:Button ID="EBtnModify" class="C_input"  Text="修改" OnClick="EBtnModify_Click" runat="server" Visible="false"/>
            <asp:Button ID="EBtnSubmit"  class="C_input" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />&nbsp;&nbsp;
            <input name="Cancel" type="button" class="C_input" id="Cancel" value="取消" onclick="javascript:window.location.href='KeyWordManage.aspx'" />
        </td>
    </tr>
</table>
</form>
</body>
</html>
