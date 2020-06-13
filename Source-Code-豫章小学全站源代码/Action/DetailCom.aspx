<%@ page language="C#" autoeventwireup="true" inherits="Action_DetailCom, App_Web_vi5xsqn5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>竞拍详细页面</title>
<link href="auction.css" rel="Stylesheet" type="text/css" />
<script src="/JS/jquery.js"></script>
<script src="/JS/action.js"></script>
</head>
<body>
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
	<div id="title" style="margin-top:10px">尼康（Nikon） Coolpix L110 大变焦数码相机</div>
    <div id="slideshow" class="container">
		<div id="payswf_3853" class="payswf"></div>
	   <div id="recentlySold">
        <img id="bigimg1"  src="images/1280731074.jpg" width="400px" height="310px" />
			<span class="text">[首次开拍，尚未成为历史]</span></div>
		<div id="proThumbnail">
			<ul class="clearfix">
			<li><a rel="bigimg1" href="javascript:void(0);"><img class="sup" width="50" height="37" src="images/1280731074.jpg" /></a></li><li><a rel="bigimg2" href="javascript:void(0);"><img class="sup" width="50" height="37" src="images/1280731081.jpg" /></a></li><li><a rel="bigimg3" href="javascript:void(0);"><img class="sup" width="50" height="37" src="images/1280731087.jpg" /></a></li><li><a rel="bigimg4" href="javascript:void(0);"><img class="sup" width="50" height="37" src="images/1280731091.jpg" /></a></li><li><a rel="bigimg5" href="javascript:void(0);"><img class="sup" width="50" height="37" src="images/1280731096.jpg" /></a></li></ul>
		</div>
	</div>
	<div id="buyType" class="clearfix">
		<div id="bidtype" class="container clearfix">
			<div id="bidnow">
             <input type="hidden" id="hid<%=Request.QueryString["cid"] %>" value='<%=Request.QueryString["cid"] %>'/>
				<div class="countdown f30" id="TimeCounter_<%=Request.QueryString["cid"] %>" title="剩余时间">--:--:--</div>
				<div class="price f30" id="price_<%=Request.QueryString["cid"] %>" title="拍卖价">&yen;--.--</div>
				<div class="userID">
					<a class="userIcon" href="#" id="bidder_icon_<%=Request.QueryString["cid"] %>"></a>
					<a class="userName" href="#" id="bidder_<%=Request.QueryString["cid"] %>">--</a>
				</div>
				<div class="bidButton">
					<span id='bid_btn_3853' class="button button-hilite" jtTitle="提示" jtWidth="150">
						<span class="first-child">
							<button type="button" name="buttons" class="bidbutton strong" id="<%=Request.QueryString["cid"] %>" onclick="sub('<%=Request.QueryString["cid"] %>','0','0')" onmouseover="mouseover('<%=Request.QueryString["cid"] %>')" onmouseout="mouseout('<%=Request.QueryString["cid"] %>')">出 价</button>
                             <input type="hidden" id="Hidden_<%=Request.QueryString["cid"] %>" name="Hiddenfilename" />
                             <asp:HiddenField ID="name" runat="server"  />
                             <script>
                                 document.getElementById('Hidden_<%=Request.QueryString["cid"] %>').value = document.getElementById("name").value;
                             </script>
						</span>
 					</span>
				</div>
				<div class="bidder">					
					<p class="cleadfix">每次出价时间<em class="countdown" id="addtime" runat="server">+10秒</em>，拍卖价<em class="price strong" id="addprice">+&yen;0.02</em>。</p>
					<p class="cleadfix"><span>市价：</span><strong class="worth" id="shiprice"></strong></p>
					<p class="cleadfix"><span>运费：</span><strong class="normal" id="yunfei">竞拍获得者免运费</strong></p>
				</div>
			</div>
			<div id="bidHistory" class="container">
				<div class="tabview">
					<ul class="tab">
						<li class="on"><a href="#bidHistoryList" >历史出价</a></li>
						<li><a href="#mybidHistoryList">我的出价</a></li>
						<li><a href="#chatroom">聊聊</a></li>
					</ul>
				</div>
				<div id="bidHistoryList" class="content" style="display:block;"><span>暂无竞拍者...</span></div>
				<div id="mybidHistoryList" class="content"><span>暂无出价...</span></div>
			</div>
		</div>
		<!-- #bidtype end -->
		<!-- #gotoBuyType -->
		<div id="gotoBuyType" class="container clearfix">
			<div id="buyitnow">
				<div class="bidder">
					<p class="cleadfix"><span>保价价格：</span><strong class="normal" id="paulprice" runat="server">&yen;1940</strong></p>
				</div>
				<div class="cb">
					<span id="buy_btn_<%=Request.QueryString["cid"] %>" class="button" jtTitle="提示" jtWidth="150">
						<span class="first-child">
							<button type="button"  class="buynow strong" title="保价购买" id="buy_<%=Request.QueryString["cid"] %>" onclick="pual('<%=Request.QueryString["cid"] %>')">保价购买</button>
						</span>
					</span>
				</div>
			</div>
			<div id="auctionAd"><a target="_blank" href="#">设置有拍秘书</a><br />
           最高价： <asp:TextBox ID="txtprice" runat="server"></asp:TextBox> &nbsp;<br />次&nbsp;&nbsp;&nbsp;数： <asp:TextBox ID="txttimes" runat="server"></asp:TextBox>
           <input id="sec_<%=Request.QueryString["cid"] %>" value="设置" type="button" onclick="setSec('<%=Request.QueryString["cid"] %>')" />
           <div id="actionlist">有拍秘书列表</div>
           <div id='comsec'>
           </div>
           <script type="text/javascript">
               var comid = <%=Request.QueryString["cid"] %>;
               GetComSec(comid);
           </script>
		</div>
           </div>
           <asp:Button ID="btn" runat="server" Text="下载本次所有记录" onclick="btn_Click1" />
		<!-- #gotoBuyType end -->
	</div>
</div>
</form>
</body>
</html>