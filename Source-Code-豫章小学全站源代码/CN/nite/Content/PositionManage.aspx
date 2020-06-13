<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Position_PositionManage, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>职位管理</title>
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo">
    <div class="us_pynews"> <span class="us_showinfo1">您好
      <asp:Label ID="LblUserName" runat="server" Text="" />
      ！</span> 您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank">
      <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
      </a></span><span> &gt;&gt; </span> <span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span> &gt;&gt; </span> <span>职位管理</span>&nbsp;&nbsp;&nbsp;【<a href="AddPosition.aspx"><font color="red">添加职位</font></a>】</span> </div>
    <div class="cleardiv"></div>
  </div>
  <div class="clearbox"> </div>
  <div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
    <h1 style="text-align:center">职位管理</h1>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="10%" class="title">职位ID</td>
        <td width="30%" class="title">职位名称</td>
        <td width="10%" class="title">人数</td>
        <td width="20%" class="title">结束日期</td>
        <td width="15%" class="title">状态</td>
        <td width="20%" class="title">操作</td>
      </tr>
      <asp:Repeater ID="gvCard" runat="server">
        <ItemTemplate>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" align="center"><%#Eval("Jid")%></td>
            <td height="22" align="center"><%#Eval("Jname")%></td>
            <td height="22" align="center"><%#Eval("Jnum")%></td>
            <td height="22" align="center"><%#Eval("Jendtime")%></td>
            <td height="22" align="center"><%#Getroom(Eval("Jid").ToString())%></td>
            <td height="22" align="center"><a href="AddPosition.aspx?PositionID=<%#Eval("Jid") %>">修改</a> <a href="?menu=del&id=<%#Eval("Jid") %>"
                                onclick="return confirm('确定删除该信息吗？删除后该信息不可恢复!');">删除</a></td>
          </tr>
        </ItemTemplate>
      </asp:Repeater>
      <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbgleft"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          个信息
          <asp:Label ID="Toppage" runat="server" Text="" />
          <asp:Label ID="Nextpage" runat="server" Text="" />
          <asp:Label ID="Downpage" runat="server" Text="" />
          <asp:Label ID="Endpage" runat="server" Text="" />
          页次：
          <asp:Label ID="Nowpage" runat="server" Text="" />
          /
          <asp:Label ID="PageSize" runat="server" Text="" />
          页
          <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass=" l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
          个信息/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
          页 </td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
