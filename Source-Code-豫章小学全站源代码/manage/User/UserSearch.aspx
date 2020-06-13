<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserSearch, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员搜索</title>
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<script src="../../JS/calendar.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../JS/Drag.js"></script>
<script type="text/javascript" src="../../JS/Dialog.js"></script>
<script type="text/javascript">
    function open_title() {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = "添加会员[ESC键退出当前操作]";
        diag.URL = "AddUser.aspx";
        diag.show();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="AdminManage.aspx">用户管理</a>&gt;&gt;<a href="UserManage.aspx">会员管理</a>&gt;&gt;会员搜索</div>
  <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
    <tr>
      <td class="spacingtitle" align="center" colspan="2"> 会员搜索 </td>
    </tr>
    <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td>会员ID: </td>
      <td><strong id="Strong1" runat="server" visible="true">
        <asp:TextBox ID="txtID" runat="server" Height="22px" Width="160px" EnableTheming="true" class="l_input"></asp:TextBox>
        </strong></td>
    </tr>
    <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td>会员名: </td>
      <td><strong id="Strong2" runat="server" visible="true">
        <asp:TextBox ID="txtUserName" runat="server" Height="22px" Width="160px" EnableTheming="true" class="l_input"></asp:TextBox>
        </strong></td>
    </tr>
    <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td>会员组查找</td>
      <td><strong id="strgroup" runat="server" visible="true">
        <asp:DropDownList ID="ddlGroup" runat="server" CssClass="x_input"> </asp:DropDownList>
        </strong></td>
    </tr>
    <tbody id="Search" runat="server" >
      <tr  class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>登陆日期查找</td>
        <td><strong id="strtime" runat="server">
          <asp:TextBox ID="txtSteatTime" runat="server" Height="22px" Width="160px" onclick="calendar()" class="l_input"></asp:TextBox>
          到
          <asp:TextBox ID="txtEndTime" runat="server"  Height="22px" Width="160px" onclick="calendar()" class="l_input"></asp:TextBox>
          </strong></td>
      </tr>
      <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td> Email:</td>
        <td><strong id="IdUser" runat="server" visible="true">
          <asp:TextBox ID="txtEmail" runat="server"  Height="22px" Width="160px" EnableTheming="true" class="l_input"></asp:TextBox>
          </strong></td>
      </tr>
      <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>认证审核状态:</td>
        <td><strong id="strgroup0" runat="server" visible="true">
          <asp:DropDownList ID="ddlApprove" runat="server" DataTextField="GroupName"  DataValueField="GroupID" CssClass="x_input">
            <asp:ListItem Value="-1">==请选择==</asp:ListItem>
            <asp:ListItem Value="0">认证失败</asp:ListItem>
            <asp:ListItem Value="1">待认证</asp:ListItem>
            <asp:ListItem Value="2">认证通过</asp:ListItem>
          </asp:DropDownList>
          </strong></td>
      </tr>
    </tbody>
    <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td colspan="2" align="center"><asp:Button ID="btnSearch" runat="server"  Text="搜  索" class="C_input" Style="height: 25px" Width="100px"  onclick="btnSearch_Click" />
        <asp:Button ID="btnlist" runat="server" Text="返回列表" OnClientClick="location.href='UserManage.aspx';return false;"  class="C_input" Style="height: 25px" Width="100px" /></td>
    </tr>
  </table>
</form>
</body>
</html>