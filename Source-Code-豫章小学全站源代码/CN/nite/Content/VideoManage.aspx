<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_CompanyVideo, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>视频列表</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo">
    <div class="us_pynews">您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank">
      <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
      </a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span> &gt;&gt; </span><span>视频管理</span>&nbsp;&nbsp;&nbsp;【<a href="AddVideo.aspx" ><font color="red">上传视频</font></a>】</span> </div>
    <div class="cleardiv"> </div>
  </div>
  <div class="clearbox"> </div>
  <asp:GridView ID="gvVideo" Width="100%" runat="server" EmptyDataText="<font color='red'>暂时没有数据</font>" DataKeyNames="VID"  AutoGenerateColumns="False">
    <Columns>
    <asp:BoundField HeaderText="编号" DataField="Vid"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="60px" />
    <asp:TemplateField HeaderText="视频名称" ItemStyle-HorizontalAlign="Center">
      <ItemTemplate> <a href="ShowVideo.aspx?ID=<%#Eval("Vid") %>"><%#Eval("VidTitle")%></a> </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="状态" ItemStyle-HorizontalAlign="Center">
      <ItemTemplate><%#Eval("Vid").ToString()=="0"?"未审核":"已审核" %> </ItemTemplate>
    </asp:TemplateField>
    <asp:BoundField HeaderText="添加时间" DataField="Uploadtime" HeaderStyle-Width="200px" ItemStyle-HorizontalAlign="Center" />
    <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" >
      <ItemTemplate> <a href="AddVideo.aspx?ID=<%#Eval("Vid") %>">修改</a> | <a href="ShowVideo.aspx?ID=<%#Eval("Vid") %>">预览</a> </ItemTemplate>
    </asp:TemplateField>
    </Columns>
  </asp:GridView>
  <table width="100%">
    <tr class="tdbg">
      <td height="22" colspan="9" align="center" class="tdbgleft"> 共
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
        <asp:Label ID="pagess" runat="server" Text="" />
        个信息/页 转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
        页 </td>
    </tr>
  </table>
</form>
</body>
</html>
