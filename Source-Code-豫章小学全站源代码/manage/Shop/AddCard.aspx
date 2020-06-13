<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_AddCard, App_Web_yc1b2kmm" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 商城管理 &gt;&gt; 商城配置 &gt;&gt;<a href="CardManage.aspx">VIP卡管理</a> &gt;&gt; 生成VIP卡</div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                    生成VIP卡
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    生成数量：
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="num" class="l_input" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    卡片起始数：
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" class="l_input" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    卡片加盟商：
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="tx_user" class="l_input" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    到期时间：
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="endtime" class="l_input" runat="server" Width="217px" onclick="calendar();"></asp:TextBox>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/AdminDefaultTheme/images/Calendar.gif" />
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   卡片状态 ：
                </td>
                <td>
                    <asp:RadioButtonList ID="IsOpen" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                        <asp:ListItem Value="1">停用</asp:ListItem>
                        <asp:ListItem Value="2">开启</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    卡类型 ：
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="WebPart">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                  <strong></strong>
                </td>
                <td>
                    <asp:Button ID="Button1" class="C_input" style="width:110px;"  runat="server" Text="开始生成" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>