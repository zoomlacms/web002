<%@ page language="C#" autoeventwireup="true" inherits="Action_Default, App_Web_vi5xsqn5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>正在竞拍的商品</title>
<link href="auction.css" rel="Stylesheet" type="text/css" />
<script src="../JS/jquery.js"></script>
<script src="../JS/action.js"></script>
<script src="/js/auctionShop.js"></script>
</head>
<body class="subpage skin">
<form id="form1" runat="server">
<div id="header" class="clearfix">
<div id="logo">
	<img width="230" height="60" src="../images/logo.gif" /><h1><a href="#" title="zoomla">竞拍,抢拍,购物,娱乐购物-<%Call.Label("{$SiteName/}"); %></a></h1></div>
<ul id="mainNav" class="blueLink">
	<li><h2><a href="Default.aspx" title="首页">首页</a></h2></li>
	<li id="Auction" class="mainNav">
		<h2><a href="#" title="竞拍商品">竞拍商品<span>▼</span></a></h2>
		<div id="auctionList" class="mainNavMenu clearfix"></div>
	</li>
	<li><h2><a href="#" title="即将开拍">即将开拍</a></h2></li>
	<li><h2><a href="#" title="有玩点？来体验区">体验区</a></h2></li>
	<li><h2><a href="#" title="去看看都有谁晒了图">晒图区</a></h2></li>
</ul>
<!-- #brandCategories -->
<div id="brandCategories" class="container clearfix">
	<div class="tabview"><h2 class="title fl">品牌筛选</h2></div>
	<ul class="clearfix">
      <li><a href=""><img src="images/1273346039.jpg" /></a><p><span>(1)</span></p>
		</li><li id="allBrand"><a href="">所有品牌</a><span>(17)</span></li>
	</ul>
	<div id="moreBrand"><a id="more" href="">展开全部品牌</a></div>
</div>
<!-- #brandCategories end -->
<div id="proList" class="container clearfix">
	<div class="tabview">
		<h1 class="title fl">正在竞拍的商品</h1>
	</div>
<asp:Repeater ID="repeater" runat="server">
<ItemTemplate>
<dl class="Auction_HOR">
	<dt>
		<div class="proImg">
            <input type="hidden" id="hid<%#Eval("ID") %>" value='<%#Eval("ID") %>'/>
			<a href="DetailCom.aspx?cid=<%#Eval("ID") %>" title="<%#GetName(Eval("shopID","{0}"),"0") %>"><img width="100" height="75" alt="<%#GetName(Eval("shopID","{0}"),"0") %>" src="images/1273346039.jpg" /></a>
		</div>
	</dt>
	<dd class="detail">
		<h3><a href="#"  title="<%#GetName(Eval("shopID","{0}"),"0") %>"><%#GetName(Eval("shopID","{0}"),"0") %></a></h3>
		<span class="description"><%#GetName(Eval("shopID","{0}"),"1") %></span>
		<span class="space">保价：<strong class="purchase space">&yen;<%#DataBinder.Eval(Container, "DataItem.PaulPrice", "{0:N2}")%></strong><a class="purchase" href="DetailCom.aspx?cid=<%#Eval("ID") %>">保价购买</a></span><span>市价：<span class="worth">&yen;<%#GetName(Eval("shopID","{0}"),"2") %></span></span></dd>
	<dd class="bidder">
		<a class="userName" href="javascript:void(0)"  id="bidder_<%#Eval("id") %>">-</a>
		<span id='bid_btn_<%#Eval("id") %>' class="button button-hilite">
			<span class="first-child">
				<button type="button" name="buttons" class="bidbutton" title="<%#GetName(Eval("shopID","{0}"),"0") %>" id="<%#Eval("id") %>" onclick="sub('<%#Eval("id") %>','0','0')" onmouseover="mouseover('<%#Eval("id") %>')" onmouseout="mouseout('<%#Eval("id") %>')" style="font-weight:bold">出 价</button>
                <input type="hidden" id="Hidden_<%#Eval("id") %>" name="Hiddenfilename" value="<%#Eval("CompeteXmlName") %>" />
            </span>
		</span>
	</dd>
	<dd class="countdown">
        <strong  class="price f18"  id="price_<%#Eval("id") %>"></strong>
        <strong class="f18" id="TimeCounter_<%#Eval("id") %>">--:--:--</strong>
    </dd>
</dl>
</ItemTemplate>
</asp:Repeater> 
</div>
 </div>
</form>
</body>
</html>