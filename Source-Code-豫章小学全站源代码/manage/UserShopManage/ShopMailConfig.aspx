<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_ShopMailConfig, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head2" runat="server">
    <title>店铺邮件设置</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 316px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 店铺设置 &gt;&gt; 店铺邮件设置</div>
     <div class="clearbox"></div>
    <div>
    <table cellpadding="0" cellspacing="0" border="0" width="100%" class="border" >
    <tr>
    <td class="spacingtitle" colspan="3" align="center" >店铺邮件设置</td>
    </tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
     <td align="right" class="tdbgleft" style="width: 30%"><strong>邮件类型：</strong></td>
    <td  colspan="2">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
        <asp:ListItem Value="1" Selected="True">团购成功邮件</asp:ListItem>
        <asp:ListItem Value="2" >团购失败邮件</asp:ListItem>
         <asp:ListItem Value="3" >竞拍成功邮件</asp:ListItem>
          <asp:ListItem Value="4" >竞拍失败邮件</asp:ListItem>
        </asp:RadioButtonList>
    </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
     <td align="right" class="tdbgleft" style="width: 30%"><strong>邮件标题：</strong></td>
     <td style="width:300px" valign="top">
         <asp:TextBox ID="txtTitle" class="l_input" runat="server" Width="300px"></asp:TextBox>
         </td>
         <td valign="top">请在标题中使用关键字{ProName}</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" class="tdbgleft" style="width: 30%" valign="top"><strong>邮件内容：</strong></td>
     <td style="width:300px" valign="top">
         <asp:TextBox ID="txtContext" class="l_input" runat="server" Width="300px" 
             TextMode="MultiLine" Rows="10" Height="70px"></asp:TextBox></td>
         <td valign="top">请在内容中使用{UserName}</td>
    </tr>
    <tr class="tdbg">
    <td align="right" style="width: 30%" valign="top">&nbsp;</td>
     <td valign="top" colspan="2">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="txtTitle" ErrorMessage="请输入邮件标题"></asp:RequiredFieldValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="txtContext" ErrorMessage="请输入邮件内容"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg">
    <td colspan="3" align="center">
        <asp:Button ID="Button1" class="C_input"  runat="server" Text="提  交" onclick="Button1_Click" /></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
