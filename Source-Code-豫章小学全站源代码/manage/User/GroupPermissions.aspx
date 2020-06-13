<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.GroupPermissions, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员组权限设置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
    function getselect(GroupID) {
        var actionstr = "";
        var optionart = document.getElementById("UserPromotions").options;
        for (var i = 0; i < optionart.length; i++) {
            if (optionart[i].selected) {
                actionstr += optionart[i].value + "|";
            }
        }

        if (actionstr.substring(actionstr.length - 1, actionstr.length) == "|") {
            actionstr = actionstr.substring(0, actionstr.length - 1);
        }
        Openwin(actionstr, GroupID);
    }
</script>
<script type="text/javascript" src="/js/Console.js"></script>
<script type="text/javascript" src="/js/Drag.js"></script>
<script type="text/javascript" src="/js/Dialog.js"></script>
<script language="javascript">
    function Openwin(pid,GroupID) {
        var diag = new Dialog();
        diag.Modal = false;
        diag.Title = "修改权限";
        diag.URL = "NodeScript.aspx?GroupID=" + GroupID + "&pid=" + pid;
        diag.show();
    }
    
    function Openwinadd(Groupid) {
        var diag = new Dialog();
        diag.Modal = false;
        diag.Title = "添加权限";
        diag.URL = "NodeScript.aspx?Groupid=" + Groupid;
        diag.show();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;用户管理&gt;&gt;<a href="GroupManage.aspx">会员组管理</a>&gt;&gt;会员组权限设置</div>
      <table width="99%" cellspacing="1" cellpadding="0" class="border" align="center">
        <tr align="center">
          <td colspan="2" class="spacingtitle"><b>会员组权限设置</b></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" align="right" style="width: 100px;"><strong>会员组名称：</strong></td>
          <td><asp:Label ID="LblGroupName" runat="server" Text="" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" align="right" style="width: 100px;"><strong>会员组描述：</strong></td>
          <td><asp:Label ID="LblDescription" runat="server" Text="" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" align="right" style="width: 100px;"><strong>发布权限：</strong></td>
          <td> 每天最多发布
            <asp:TextBox ID="TxtCCountPerDay" Columns="5" runat="server" class="l_input">0</asp:TextBox>
            条信息（不想限制请设置为0）。 </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" align="right" style="width: 100px;"><strong>收藏夹限制：</strong></td>
          <td> 会员收藏夹内最多可收录
            <asp:TextBox ID="TxtFavCount" Columns="5" runat="server" class="l_input">0</asp:TextBox>
            条信息（如果为0，则没有收藏权限） </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" align="right" style="width: 100px;"><strong>计费方式：</strong></td>
          <td><asp:RadioButtonList ID="RblConsumeType" runat="server">
              <asp:ListItem Selected="True" Value="0">只判断点券：有点券时，即使有效期已经到期，仍可以查看收费内容；点券用完后，即使有效期没有到期，也不能查看收费内容。</asp:ListItem>
              <asp:ListItem Value="1">只判断有效期：只要在有效期内，点券用完后仍可以查看收费内容；过期后，即使会员有点券也不能查看收费内容。</asp:ListItem>
              <asp:ListItem Value="2">同时判断点券和有效期：点券用完或有效期到期后，就不可查看收费内容。</asp:ListItem>
              <asp:ListItem Value="3">同时判断点券和有效期：点券用完并且有效期到期后，才不能查看收费内容。</asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" align="right" style="width: 100px;"><strong>节点权限设置：</strong></td>
          <td>&nbsp;
            <asp:ListBox ID="UserPromotions" runat="server" Height="213px" Width="488px" SelectionMode="Multiple"></asp:ListBox>
            <br />
            <input id="Button5" type="button" value="添加" class="C_input" onclick="javascript:Openwinadd(<%=Request.QueryString["GroupID"] %>);" />
            <input id="Button6" type="button" value="批量修改" class="C_input" onclick="javascript:getselect(<%=Request.QueryString["GroupID"] %>);" />
            <asp:Button ID="Button2" runat="server" Text="删除" CssClass="C_input" onclick="Button2_Click" OnClientClick="return confirm('确实要删除该权限吗？')" /></td>
        </tr>
        <tr class="tdbg">
          <td align="center" class="tdbgleft" colspan="2" style="height: 79px">&nbsp;
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保存权限设置" class="C_input" />
            &nbsp; &nbsp;&nbsp;
            <input id="Button1" type="button" value="返回" onclick="javascript:window.location.href='GroupManage.aspx'" class="C_input" />
            <asp:HiddenField ID="HdnGroupID" runat="server" /></td>
        </tr>
      </table>
    </form>
</body>
</html>