<%@ page language="C#" autoeventwireup="true" inherits="manage_User_Wiipointscard, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理员设置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"> <span style="float: right; background: url(../../../Images/ModelIcon/edit.gif) no-repeat left; padding-left: 20px;"></span>后台管理&gt;&gt;用户社区&gt;&gt;多人视频管理&gt;&gt; 点卡管理</div>
  <div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
      <tr class="tdbg">
        <td align="center" colspan="6" class="title" width="100%">点卡管理</td>
      </tr>
      <tr class="tdbg">
        <td align="center" class="tdbgleft" style="height: 24px; width:8%; font-weight:bold">ID</td>
        <td align="center" class="tdbgleft" style="height:24px;  font-weight:bold">使用者</td>
        <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">点卡号</td>
        <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">点卡数</td>
        <td align="center" class="tdbgleft" style="height:24px;   font-weight:bold">有效期</td>
        <td align="center" class="tdbgleft" style="height: 24px;  font-weight: bold">操作</td>
      </tr>
      <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="center" style="height: 24px;"><%#Eval("ID")%></td>
            <td align="center" style=" height:24px;"><%#GetName(Eval("UserID","{0}"))%></td>
            <td align="center" style="height: 24px;"><%#Eval("Wiipoincry")%></td>
            <td align="center" style="height: 24px;"><%#Eval("WiipoinNum")%></td>
            <td align="center" style=" height:24px;"><%#Eval("WiipoinTime")%></td>
            <td align="center" style="height: 24px;"><a href="?menu=delete&id=<%#Eval("id")%>" onclick="return confirm('确实要删除此信息吗？');">删除</a></td>
          </tr>
        </ItemTemplate>
      </asp:Repeater>
      <tr class="tdbg">
        <td align="center" class="tdbg" style="height: 24px;" colspan="6"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          条信息
          <asp:Label ID="Toppage" runat="server" Text="" />
          <asp:Label ID="Nextpage" runat="server" Text="" />
          <asp:Label ID="Downpage" runat="server" Text="" />
          <asp:Label ID="Endpage" runat="server" Text="" />
          页次：
          <asp:Label ID="Nowpage" runat="server" Text="" />
          /
          <asp:Label ID="PageSize" runat="server"
                Text="" />
          页
          <asp:Label ID="pagess" runat="server" Text="" />
          条信息/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
          页 </td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>