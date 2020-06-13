<%@ page language="C#" autoeventwireup="true" inherits="manage_User_NodeScript, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>设置会员组权限</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript" src="/js/Console.js"></script>
<script type="text/javascript" src="/js/Drag.js"></script>
<script type="text/javascript" src="/js/Dialog.js"></script>
<script>
    function GotoWirte(rows) {
        var mainright = window.top.main_right;
        //mainright.frames["main_right_" + parent.nowWindow].document.getElementById("G_Makers").value = rows.innerText;
        parent.Dialog.close();
    }
    function GotoWirteddd() {
        var mainright = window.top.main_right;
        mainright.frames["main_right_" + parent.nowWindow].location.reload();
        //parent.location.reload();
        parent.Dialog.close();
    }
</script>
<body>
<form id="form1" runat="server">
  <table width="99%" cellspacing="1" cellpadding="0" class="border" align="center">
    <tr align="center">
      <td colspan="2" class="spacingtitle"><b>会员组权限设置</b></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" align="right" style="width: 100px;"><asp:ListBox ID="NodeList" runat="server" Height="282px" Width="258px"  SelectionMode="Multiple"></asp:ListBox></td>
      <td valign="top" style="padding:10px;" ><asp:CheckBoxList ID="CheckBoxList1" runat="server" CellSpacing="10">
          <asp:ListItem Value="look">查看</asp:ListItem>
          <asp:ListItem Value="addTo">录入</asp:ListItem>
          <asp:ListItem Value="Modify">修改</asp:ListItem>
          <asp:ListItem Value="Deleted">删除</asp:ListItem>
          <asp:ListItem Value="Columns">仅当前节点</asp:ListItem>
          <asp:ListItem Value="Comments">评论管理</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="添加" CssClass="C_input" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="取消" CssClass="C_input" OnClientClick="parent.Dialog.close();return false;" /></td>
    </tr>
  </table>
</form>
</body>
</html>