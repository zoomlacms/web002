<%@ page language="C#" autoeventwireup="true" inherits="User_OrderForm_ShopCarList, App_Web_xzmfkz3n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>购车列表</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
	<div class="s_bright">
		<div class="us_topinfo">您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="购物管理" href="ShopCarList.aspx?menu=Cartinfo">购物车管理</a>
		</div>
		<!-- str -->
		<div class="us_topinfo" style="margin-top: 10px;">
			<a href="ShopCarList.aspx?menu=Cartinfo">购物车管理</a> <a href="../ViewOrder.aspx?menu=Orderinfo">
				订单管理</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=1">已确定的订单</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=2">
					已发货订单</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=3">正常订单</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=4">
						已成交订单</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=5">已作废订单</a></div>
		<br />
		<div class="us_topinfo">
			<a href="ShopCarList.aspx?menu=Cartinfo">购物车管理</a> | <a href="ColonelList.aspx">团购信息</a> | <a href="ContestList.aspx">竞拍信息</a>
		</div>
		<div class="us_seta" style="margin-top: 10px;">
			<div class="s_bright">
				<div class="rg_inout">
					<ul>
						<li>
							<p>
								<asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>&nbsp;
							</p>
						</li>
					</ul>
					<ul>
						<li style="width: 9.5%; text-align: center;">图片</li>
						<li style="width: 20%; text-align: center;">商品名称</li>
						<li style="width: 8%; text-align: center;">单位</li>
						<li style="width: 12.5%; text-align: center;">数量</li>
						<li style="width: 12.5%; text-align: center;">市场价</li>
						<li style="width: 12.5%; text-align: center;">实价</li>
						<li style="width: 12.5%; text-align: center;">金额</li>
						<li style="width: 12.5%; text-align: center;">操作</li>
					</ul>
					<asp:Repeater ID="cartinfo" runat="server">
						<ItemTemplate>
							<ul> 
								<li style="width: 9.5%; text-align: center;">
									<%#getproimg(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
								</li>
								<li style="width: 20%; text-align: center;">
									<%#Eval("proname")%>
								</li>
								<li style="width: 8%; text-align: center;">
									<%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
								</li>
								<li style="width: 12.5%; text-align: center;">
									<%#Eval("pronum") %>
								</li>
								<li style="width: 12.5%; text-align: center;">
									<%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
								</li>
								<li style="width: 12.5%; text-align: center;">
									<%#shijia(DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%>
								</li>
								<li style="width: 12.5%; text-align: center;">
									<%#getprojia(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
								</li>
								<li style="width: 12.5%; text-align: center;"><a href="UserCart.aspx?menu=del&cid=<%#Eval("id")%>"
									onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
							</ul>
						</ItemTemplate>
					</asp:Repeater>
					<ul>
						<li style="width: 100%; text-align: center;">共
							<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
							个商品
							<asp:Label ID="Toppage" runat="server" Text="" />
							<asp:Label ID="Nextpage" runat="server" Text="" />
							<asp:Label ID="Downpage" runat="server" Text="" />
							<asp:Label ID="Endpage" runat="server" Text="" />
							页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
								Text="" />页
							<asp:Label ID="pagess" runat="server" Text="" />个商品/页 转到第<asp:DropDownList ID="DropDownList1"
								runat="server" AutoPostBack="True">
							</asp:DropDownList>页</li>
					</ul>
					<div class="cleardiv">
					</div>
					<ul>
						<li style="width: 250px; text-align: left;">合计：<asp:Label ID="alljiage" runat="server"
							Text=""></asp:Label></li>
						<li>&nbsp;</li><li style="width: 250px; text-align: left;">
							<asp:Button ID="Button1" runat="server" Text="去收银台结帐" OnClientClick="location.href='UserOrderlist.aspx';return false;" /></li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
</form>
</body>
</html>