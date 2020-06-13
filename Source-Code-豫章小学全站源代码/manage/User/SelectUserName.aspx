<%@ page language="C#" autoeventwireup="true" inherits="manage_User_SelectUserName, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>查询用户</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script>
    function onstr() {
        parent.Dialog.close();
    }

    function setvalue(objname,valuetxt) {
        var mainright = window.top.main_right;
        mainright.frames[parent.nowWindow].document.getElementById(objname).value = valuetxt;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <table width="100%" cellspacing="1" cellpadding="0" class="border">
    <tr class="tdbg">
      <td align="center" colspan="7" class="title" width="100%"> 客 户 列 表 </td>
    </tr>
    <tr class="tdbg">
      <td align="center" class="tdbgleft" style="height: 24px;  font-weight: bold">选择</td>
      <td align="center" class="tdbgleft" style="height: 24px;  font-weight: bold">ID</td>
      <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">会员名称</td>
      <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">会员组别</td>
      <td align="center" class="tdbgleft" style="height: 24px;  font-weight: bold">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td align="center" style="height: 24px;"><asp:HiddenField ID="hfUsername" runat="server" Value='<%# Eval("UserName") %>' />
            <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("UserID") %>' />
            <asp:CheckBox ID="chkSel" runat="server" /></td>
          <td align="center" style="height: 24px;"><%#Eval("UserID")%></td>
          <td align="center" style="height: 24px;"><%#Eval("UserName")%></td>
          <td align="center" style="height: 24px;"><%#Eval("GroupID", "{0}") == "1" ? "普通会员" : "企业会员"%></td>
          <td align="center" style="height: 24px;"><a href="SelectUserName.aspx?menu=select&id=<%#Eval("UserID") %>">选择</a></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
      <td class="tdbg" style="height: 24px;" colspan="5"><asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
        <asp:Button ID="btnSelect" runat="server" class="C_input" OnClick="btnSelect_Click" OnClientClick="if(!IsSelectedId()){alert('请选择用户');return false;}else{return true;}" Text="批量投递用户" Width="134px" /></td>
    </tr>
    <tr class="tdbg">
      <td align="center" class="tdbg" style="height: 24px;" colspan="5"> 共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />
        /
        <asp:Label ID="PageSize" runat="server" Text="" />
        页
        <asp:Label ID="pagess" runat="server" Text="" />
        条信息/页 转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
        页 </td>
    </tr>
  </table>
</form>
</body>
</html>