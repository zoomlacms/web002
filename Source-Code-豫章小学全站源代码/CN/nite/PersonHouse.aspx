<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_PersonHouse, App_Web_lxdkhpgd" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>个人用户房间列表</title>
<link href="CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo">
    <div class="us_pynews">您现在的位置：<span id="Span1"><a title="网站首页" href="/" target="_blank">
      <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 视频房间管理</div>
  </div>
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center">
      <td width="10%" class="title"> 房间编号 </td>
      <td width="20%" class="title"> 房间名称 </td>
      <td width="20%" class="title"> 企业名称 </td>
      <td width="10%" class="title"> 房间状态 </td>
      <td width="20%" class="title"> 面试时间段 </td>
      <td width="40%" class="title"> 操作 </td>
    </tr>
    <asp:Repeater ID="gvCard" runat="server">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="22" align="center"><%#Eval("Rid")%></td>
          <td height="22" align="center"><%#Eval("Rname")%></td>
          <td height="22" align="center"><%#GetComapny(Eval("ComapnyID").ToString())%></td>
          <td height="22" align="center"><%#GetE(Eval("Expires").ToString())%></td>
          <td height="22" align="center"><%#GetTime(Eval("Dredgetime").ToString(),Eval("RJob").ToString())%></td>
          <td height="22" align="center"><%#GetHouse(Eval("Expires").ToString(), Eval("Rid").ToString(), Eval("RJob").ToString())%></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
      <td height="22" colspan="7" align="center" class="tdbgleft"> 共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />/
        <asp:Label ID="PageSize" runat="server" Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>页
	</td>
    </tr>
  </table>
</form>
</body>
</html>