<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_AddInvoType, App_Web_yc1b2kmm" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加发票类型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 商城管理&gt;&gt; 商城设置 &gt;&gt; <a href="InvtoManage.aspx">发票类型管理</a> &gt;&gt;<a href="AddInvoType.aspx" target="_self">添加发票类型</a></div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tr class="tdbg">
      <td height="24" colspan="2" align="center" class="title">
      <asp:Label  id="invType" runat="server" class="spacingtitle">添加发票类型</asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="24%" height="24" class="tdbg"><strong>发票类型名称</strong></td>
      <td width="76%" height="24" ><asp:TextBox ID="deliname" runat="server" Width="300px" class="l_input" />
          <asp:HiddenField ID="id" runat="server" />
      </td>
    </tr>        
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
      <td height="24" class="tdbg"><strong>发票类型简介</strong></td>
      <td height="24" ><asp:TextBox ID="deliinfo" class="l_input" runat="server" Height="177px" TextMode="MultiLine" Width="428px" /></td>
    </tr>

       <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbg"><strong>税率</strong></td>
      <td ><asp:TextBox ID="shuilv" class="l_input" runat="server" Text='0' Width="50px" /> %
      <asp:RegularExpressionValidator ID="RegularExpressionValidator13"  runat="server" ControlToValidate="shuilv" ErrorMessage="税率格式不对!" ValidationExpression="\d+[.]?\d*"  Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
      <td height="24" colspan="2" align="center"><asp:Button ID="Button1" class="C_input"  style="width:110px;"  Text="保存发票类型" runat="server" OnClick="Button1_Click" />          </td>
    </tr>
</table>
</form>
</body>
</html>