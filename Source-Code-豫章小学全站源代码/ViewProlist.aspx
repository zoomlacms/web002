<%@ page language="C#" autoeventwireup="true" inherits="ViewProlist, App_Web_m53mud2n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>查看商品记录</title>
<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div id="main" class="rg_inout">
    <h1>查看商品历史记录</h1>
	<div class="cart_lei">
    <ul>
      <li class="i0">图片</li>
      <li class="i1">商品名称</li>
      <li class="i2">单位</li>
      <li class="i3">市场价</li>
      <li class="i4">实价</li>
    </ul>
    </div>
    
 <div class="cart_con">
    <asp:Repeater ID="cartinfo" runat="server">
      <ItemTemplate>
        <ul>
          <li class="i0"><img src="<%#getproimg((string)Container.DataItem)%>" width="60" height="45" /></li>
          <li class="i1"><a href="shop.aspx?itemid=<%#(string)Container.DataItem%>"><%#getproname((string)Container.DataItem)%></a></li>
          <li class="i2"><%#getProUnit((string)Container.DataItem) %></li>
          <li class="i3"><%#getjiage("1",(string)Container.DataItem)%></li>
          <li class="i4"><%#shijia((string)Container.DataItem)%></li>
          <div class="clear"></div>
        </ul>
      </ItemTemplate>
    </asp:Repeater>
    </div>
    <div>
      <li style="width:100%;text-align:center;">共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个商品
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
        个商品/页  转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
        页</li>
    </div>
  </div>

<div id="bottom">
<a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
<p>
<script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp; <%Call.Label("{$SiteName/}"); %> All rights reserved.</p>
</div>
</form>
</body>
</html>