<%@ page language="C#" autoeventwireup="true" inherits="manage_User_AddVideohall, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>多人视频管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.leftwidth { background: #CBE6FC; padding: 2px; width: 30%; }
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 用户管理 &gt;&gt; 多人视频管理 &gt;&gt; 房间管理 &gt;&gt;<asp:Literal ID="Literal1" runat="server"></asp:Literal></div>
  <table width="99%" cellspacing="1" cellpadding="0" class="border" align="center">
    <tr>
      <td align="center" class="spacingtitle" colspan="2" style="height: 22px"><asp:Literal ID="LblTitle" Text="添加大厅" runat="Server"></asp:Literal></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="leftwidth" align="right"> 大厅名称： </td>
      <td style="width: 100px"><asp:TextBox ID="txt_Name" runat="server" class="l_input" Width="196px"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="leftwidth" align="right"> 大厅类别： </td>
      <td style="width: 100px">
      <asp:DropDownList runat="server" ID="HallType">
        <asp:ListItem Value="0">综艺区</asp:ListItem>
        <asp:ListItem Value="1">情感区</asp:ListItem>
        <asp:ListItem Value="2">官方专区</asp:ListItem>
        <asp:ListItem Value="3">财经区</asp:ListItem>
        <asp:ListItem Value="4">游戏区</asp:ListItem>
        <asp:ListItem Value="5">网络教育</asp:ListItem>
        <asp:ListItem Value="6">VIP专区</asp:ListItem>
      </asp:DropDownList>
      </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="leftwidth" align="right"> 最大人数限制(0为无限制)： </td>
      <td style="width: 100px"><asp:TextBox ID="txt_MaxPerson" runat="server" class="l_input" Text="0" Width="76px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="leftwidth" align="right"> 排序： </td>
      <td style="width: 100px"><asp:TextBox ID="txt_OrderNum" runat="server" class="l_input" Text="0" Width="76px"></asp:TextBox></td>
    </tr>
    <%-- <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="leftwidth" align="right">
                管理员：<font color=red>(多个管理员用逗号,隔开)</font>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_Manager" runat="server" class="l_input" Width="400px"></asp:TextBox>
            </td>
        </tr>--%>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="right" class="leftwidth"> 大厅描述： </td>
      <td align="left" style="width: 100px; height: 20px" valign="middle"><asp:TextBox ID="txt_Remark" class="x_input" runat="server" Height="100px" TextMode="MultiLine" Width="416px"></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td align="center" class="tdbgleft" colspan="2"><asp:Button ID="btnSave" runat="server" Text="添加大厅" Width="95px" OnClick="Button2_Click" class="C_input" />
        <asp:Button ID="btnBack" class="C_input" runat="server" Text="返回大厅列表" Width="100px" OnClientClick="location.href='VideoHall.aspx';return false;" /></td>
    </tr>
  </table>
  </div>
</form>
</body>
</html>