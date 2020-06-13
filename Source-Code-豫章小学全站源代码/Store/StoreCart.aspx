<%@ page language="C#" autoeventwireup="true" inherits="StoreCart, App_Web_mxd1cmnv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>加入购物车</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="/JS/ajaxrequest.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest();
    function keydo(ids) {
        var num = document.getElementById("num" + ids).value;
        ajax.get(
        "/ShopCart/UpdateShopCar.aspx?cid=" + ids + "&num=" + num + "&menu=usercart",
        function (obj) {
            var pri = obj.responseText;
            var price = pri.split('|');
            if (price != null && price.length > 1) {
                document.getElementById("alljiage").innerText = price[0];
                document.getElementById("price" + ids).innerText = price[1];
            }
        }
        );
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div id="main" class="rg_inout">
    <h1>第一步:加入购物车<span>[<asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>]</span><img src="/user/images/regl1.gif" width="242" height="14" /></h1>
    <div class="cart_lei">
    <ul>
      <li class="i0">图片</li>
      <li class="i1">商品名称</li>
      <li class="i2">单位</li>
      <li class="i3">数量</li>
      <li class="i4">市场价</li>
      <li class="i5">实价</li>
      <li class="i6">金额</li>
      <li class="i7">操作</li>
    </ul>
    </div>
    
 <div class="cart_con">
    <asp:Repeater ID="cartinfo" runat="server">
      <ItemTemplate>
        <ul>
          <li class="i0"><%#getproimg(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i1"><%#Eval("proname")%></li>
          <li class="i2"><%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i3"><input id='num<%#Eval("id") %>' value='<%#Eval("pronum") %>' style="width:30px" height='20px' onblur="keydo('<%#Eval("id") %>')"/></li>
          <li class="i4"><%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
          <li class="i5"><%#shijia(DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%></li>
          <li class="i6"><span id='price<%#Eval("ID") %>'><%#DataBinder.Eval(Container, "DataItem.allMoney", "{0:N2}")%></span></li>
          <li class="i7"><a href="StoreCart.aspx?menu=del&cid=<%#Eval("id")%>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
          <div class="clear"></div>
        </ul>
      </ItemTemplate>
    </asp:Repeater>
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
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>页</li>
    </div>

    <div class="jia">
      <li style="width:250px;text-align:left;">合计：<asp:Label ID="alljiage" runat="server" Text=""></asp:Label></li>
      <li style="width:250px;text-align:left;"><asp:Button ID="Button1" runat="server" Text="去收银台结帐" onclick="Button1_Click" />
      </li>
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