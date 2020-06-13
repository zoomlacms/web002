<%@ page language="C#" autoeventwireup="true" inherits="PointUserCart, App_Web_faqyczhv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>积分商品分布式购物车</title>
<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="JS/ajaxrequest.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest();
    function keydo(ids) {
        var num = document.getElementById("num" + ids).value;
        var prolists = document.getElementById("prolists").value;
        ajax.get(
        "/ShopCart/UpdateShopCar.aspx?cid=" + ids + "&num=" + num + "&menu=update&prolist=" + prolists,
        function (obj) {
            var pri = obj.responseText;
            if (pri != null) {
                var prics = pri.split('|');
                if (prics != null && prics.length > 1) {
                    document.getElementById("alljiage").innerText = prics[0];
                    document.getElementById("price" + ids).innerText = prics[1];
                }
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
          <li class="i2">商品属性</li>
          <li class="i3">单位</li>
          <li class="i4">数量</li>
          <li class="i5">市场价</li>
          <li class="i6">零售价</li>
          <li class="i7">折扣</li>
          <li class="i8">金额</li>
          <li class="i9">操作</li>
        </ul>
        </div>
        
 <div class="cart_con">
        <asp:Repeater ID="cartinfo" runat="server" OnItemDataBound="cartinfo_ItemDataBound">
          <ItemTemplate>
            <ul <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%> >
              <li class="i0"><%#getproimg(Eval("proid","{0}"))%></li>
              <li class="i1"><%#GetProtype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%><a href='Shop.aspx?ItemID=<%#Eval("proid")%>' target="_blank"><%#Eval("proname")%></a></li>
              <li class="i2"><%#Eval("Attribute")%></li>
              <li class="i3"><%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
              <li class="i4"><input id='num<%#Eval("id") %>' value='<%#DataBinder.Eval(Container, "DataItem.pronum", "{0}")%>' style="width:30px" height='20px' onblur="keydo('<%#Eval("id") %>')"/></li>
              <li class="i5"><%#getjiage(Eval("proclass","{0}"),"1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
              <li class="i6"><%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
              <li class="i7"><%#getproscheme(Eval("ID","{0}"))%></li>
              <li class="i8"><span id='price<%#Eval("id") %>'><%#getprojia(Eval("ID","{0}"))%></span></li>
              <li class="i9"><a href="PointUserCart.aspx?menu=del&cid=<%#Eval("id")%>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
              <div class="clear">
            </ul>
            <asp:Repeater ID="Repeater2" runat="server">
              <ItemTemplate>
                <ul>
                  <li class="i0"><%#getproimg(Eval("id","{0}"))%></li>
                  <li class="i1"><%#GetProtype(DataBinder.Eval(Container, "DataItem.id", "{0}"))%><%#Eval("proname")%></li>
                  <li class="i2"><%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
                  <li class="i3"></li>
                  <li class="i4"><%#getjiage(Eval("proclass","{0}"),"1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
                  <li class="i5"><%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
                  <li class="i6"><%#getprojia(Eval("ID","{0}"))%></li>
                  <li class="i7"><a href="PointUserCart.aspx?menu=del&cid=<%#Eval("id")%>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
                  <div class="clear"></div>
                </ul>
              </ItemTemplate>
            </asp:Repeater>
          </ItemTemplate>
        </asp:Repeater>
        <asp:HiddenField ID="prolists" runat="server" />
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
          <li style="width:250px;text-align:left;">合计：<asp:Label ID="alljiage" runat="server" Text=""></asp:Label></li>
          <li style="width:250px;text-align:left;">
            <asp:Button ID="Button1" runat="server" Text="去收银台结帐" onclick="Button1_Click" />
            <asp:HiddenField ID="project" runat="server" />
            <asp:HiddenField ID="jifen" runat="server" />
            <asp:HiddenField ID="hfproclass" runat="server" />
          </li>
        </div>
        

        <div id="Div1" runat="server">促销内容:</div>
        <div id="Label2" runat="server"></div>
        <div id="Label3" runat="server" style="padding-top:10px">
        <div class="cart_lei">
            <ul>
            <li class="i0">选择</li>
            <li class="i3">ID</li>
            <li class="i2">图片</li>
            <li class="i1">商品名称</li>
            <li class="i4">单位</li>
            <li class="i5">数量</li>
            <li class="i6">市场价</li>
            <li class="i7">零售价</li>
            <li class="i8">优惠价</li>
          </ul>
          </div>
          
 <div class="cart_con">
          <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
              <ul>
                <li class="i0"><input type="radio" name="projuct" value="<%#Eval("ID") %>" /></li>
                <li class="i3"><%#Eval("ID") %></li>
                <li class="i2"><%#getproimg(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
                <li class="i1"><%#GetProtype(Eval("id", "{0}"))%><%#Eval("proname")%></li>
                <li class="i4"><%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
                <li class="i5"></li>
                <li class="i6"><%#shijia(DataBinder.Eval(Container, "DataItem.ShiPrice", "{0}"))%></li>
                <li class="i7"><%#shijia(DataBinder.Eval(Container, "DataItem.LinPrice", "{0}"))%></li>
                <li class="i8"><%#Getprojectjia(Eval("ID","{0}")) %></li>
                <div class="clear"></div>
              </ul>
            </ItemTemplate>
          </asp:Repeater>
        </div>
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
</div></form>
</body>
</html>