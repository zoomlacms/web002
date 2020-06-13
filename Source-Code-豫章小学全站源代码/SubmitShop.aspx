<%@ page language="C#" autoeventwireup="true" inherits="SubmitShop, App_Web_m53mud2n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>加入购物车</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div id="main" class="rg_inout">
    <h1>第一步:加入购物车<spna>[<asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>]</span><img src="/user/images/regl1.gif" width="242" height="14" /></h1>
    </ul>
    <div class="cart_lei">
      <ul>
        <li class="i1">商品名称</li>
        <li class="i2">来源</li>
        <li class="i3">单价</li>
        <li class="i4">数量</li>
        <li class="i5">备注</li>
        <li class="i6">操作</li>
      </ul>
      </div>
      
 <div class="cart_con">
      <asp:Repeater ID="cartinfo" runat="server">
        <ItemTemplate>
          <ul <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%>>
            <li class="i1"><%#GetProtype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%><%#Eval("proname")%></li>
            <li class="i2"><%#Eval("proseller")%></li>
            <li class="i3"><%#getjiage("1", DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
            <li class="i4"><%#DataBinder.Eval(Container, "DataItem.pronum", "{0}")%></li>
            <li class="i5"><%#getProinfo(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
            <li class="i6"><a href="SubmitShop.aspx?menu=del&cid=<%#Eval("id")%>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
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

      <div class="jia">
        <li>合计： <asp:Label ID="alljiage" runat="server" Text=""></asp:Label></li>
        <li><asp:Button ID="Button1" runat="server" Text="去收银台结帐"  PostBackUrl="/User/Shopfee/UserOrderinfo.aspx" />
          <asp:HiddenField ID="project" runat="server" />
          <asp:HiddenField ID="jifen" runat="server" />
        </li>
      </div>

  </div>

  </div>
  <div id="bottom"> <a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
    <p> 
      <script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp;
      <%Call.Label("{$SiteName/}"); %>
      All rights reserved.</p>
  </div>
</form>
</body>
</html>