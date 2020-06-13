<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_Suspendedinfo, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>暂停/延迟状态</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="UserOrderlist.aspx">店铺订单</a>&gt;&gt; <span>延迟/暂停状态处理</span>
</div>
<div class="clearbox"></div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;" align="center">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="35%"> 请选择状态：<asp:HiddenField ID="HiddenField1" runat='server' /></td>
        <td> <asp:DropDownList ID="ddstate" runat='server' AutoPostBack="True" 
                onselectedindexchanged="ddstate_SelectedIndexChanged">
                <asp:ListItem Value="0">恢复正常</asp:ListItem>
                <asp:ListItem Value="1">暂停处理</asp:ListItem>
                <asp:ListItem Value="2">延迟处理</asp:ListItem>
            </asp:DropDownList><span id="tips" style="color:Red" runat="server"></span>
        </td></tr>
    <tbody id="yanchi" runat="server">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>延迟时间：</td><td><asp:TextBox ID="txtTime" runat="server" class="l_input" Height="19px"></asp:TextBox><asp:HiddenField ID="hforderid" runat='server' /></td></tr>
    </tbody>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>备注：</td>
        <td><asp:TextBox ID="txtremark" runat="server" class="l_input" TextMode="MultiLine" 
                Height="87px" Width="403px"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
       <td align="center" colspan="2">
        <asp:Button ID="btn" runat="server" Text="保存" onclick="btn_Click" class="C_input" /><span id="sptip" runat="server" style="color:Red"></span></td></tr>
</table>
<div class="clearbox"></div>
<div class="clearbox"></div>
</form>
</body>
</html>
