<%@ page language="C#" autoeventwireup="true" inherits="User_ViewOrder, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>购物订单管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt;
	<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; 购物订单管理
</div>
<!-- str -->
<div class="us_topinfo" style="margin-top: 10px;">
	<a href="ViewOrder.aspx?menu=Cartinfo">购物车管理</a> <a href="ViewOrder.aspx?menu=Orderinfo">
		订单管理</a> <a href="ViewOrder.aspx?menu=Orderinfo&type=1">已确定的订单</a> <a href="ViewOrder.aspx?menu=Orderinfo&type=2">
			已发货订单</a> <a href="ViewOrder.aspx?menu=Orderinfo&type=3">正常订单</a> <a href="ViewOrder.aspx?menu=Orderinfo&type=4">
				已成交订单</a> <a href="ViewOrder.aspx?menu=Orderinfo&type=5">已作废订单</a></div>
<div class="us_seta us_topinfo" style="margin-top: 10px;">
	<h1 style="text-align: center">
		<asp:Label ID="Label1" runat="server" Text=""></asp:Label></h1>
	<asp:Panel ID="Orderlist" runat="server" Width="100%" Visible="false">
		<ul style="background-color: Blue">
			<li style="width: 15.9%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				订单编号 </li>
			<li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				客户名称 </li>
			<li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				下单时间 </li>
			<li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				订单金额 </li>
			<li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				实际金额 </li>
			<li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				需要发票 </li>
			<li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				已开发票 </li>
			<li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				订单状态 </li>
			<li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				付款状态 </li>
			<li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				物流状态 </li>
			<li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				其他金额 </li>
			<li style="width: 6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				操作 </li>
		</ul>
		<asp:Repeater ID="Ordertable" runat="server">
			<ItemTemplate>
				<ul>
					<li style="width: 15.9%; float: left; line-height: 28px; text-align: left; text-overflow: ellipsis;
						white-space: nowrap; overflow: hidden"><a href="?menu=ViewOrderlist&id=<%#Eval("id") %>">
							<%#Eval("OrderNo")%></a> </li>
					<li style="width: 8%; float: left; line-height: 28px; text-align: center;">
						<%#Eval("Reuser") %>
					</li>
					<li style="width: 10%; float: left; line-height: 28px; text-align: center; text-overflow: ellipsis;
						white-space: nowrap; overflow: hidden">
						<%#Eval("AddTime") %>
					</li>
					<li style="width: 8%; float: left; line-height: 28px; text-align: center;">
						<%#formatcc(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%>
					</li>
					<li style="width: 8%; float: left; line-height: 28px; text-align: center;">
						<%#getshijiage(Eval("id", "{0}"))%>
					</li>
					<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
						<%#fapiao(DataBinder.Eval(Container,"DataItem.Invoiceneeds","{0}"))%>
					</li>
					<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
						<%#fapiao(DataBinder.Eval(Container, "DataItem.Developedvotes","{0}")) %>
					</li>
					<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
						<%#formatzt(DataBinder.Eval(Container, "DataItem.OrderStatus", "{0}"),"0")%>
					</li>
					<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
						<%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"),"1")%>
					</li>
					<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
						<%#formatzt(DataBinder.Eval(Container, "DataItem.StateLogistics", "{0}"),"2")%>
					</li>
					<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
						<%#ChkExtra(Eval("OrderNo").ToString(), Eval("id").ToString())%>
					</li>
					<li style="width: 6%; float: left; line-height: 28px; text-align: center;">
						<%#getbotton(Eval("id","{0}")) %>
					</li>
				</ul>
			</ItemTemplate>
		</asp:Repeater>
		<ul>
			<li style="width: 98.5%; float: left; line-height: 28px; text-align: left;">共
				<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
				条记录
				<asp:Label ID="Toppage" runat="server" Text="" />
				<asp:Label ID="Nextpage" runat="server" Text="" />
				<asp:Label ID="Downpage" runat="server" Text="" />
				<asp:Label ID="Endpage" runat="server" Text="" />
				页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
					Text="" />页
				<asp:Label ID="pagess" runat="server" Text="" />
				条记录/页 转到第
				<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
				</asp:DropDownList>
				页 </li>
		</ul>
	</asp:Panel>
	<asp:Panel ID="Cartinfo" runat="server" Width="100%" Visible="false">
		<ul>
			<li style="width: 28%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				购物车ID </li>
			<li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				用户名 </li>
			<li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				时间 </li>
			<li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				数量 </li>
			<li style="width: 11.8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				预计金额 </li>
			<li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				相关操作 </li>
		</ul>
		<asp:Repeater ID="Carttable" runat="server">
			<ItemTemplate>
				<ul>
					<li style="width: 28%; float: left; line-height: 24px; text-align: center; text-overflow: ellipsis;
						white-space: nowrap; overflow: hidden">
						<%#Eval("Cartid")%>
					</li>
					<li style="width: 16.6%; float: left; line-height: 24px; text-align: center">
						<%#Eval("Username")%>
					</li>
					<li style="width: 16.6%; float: left; line-height: 24px; text-align: center">
						<%#Eval("Addtime")%>
					</li>
					<li style="width: 10%; float: left; line-height: 24px; text-align: center">
						<%#Eval("Pronum")%>
					</li>
					<li style="width: 11.8%; float: left; line-height: 24px; text-align: center">
						<%#formatcc(DataBinder.Eval(Container,"DataItem.AllMoney","{0}"))%>
					</li>
					<li style="width: 16.6%; float: left; line-height: 24px; text-align: center"><a href="?menu=delcart&id=<%#Eval("id") %>"
						onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a> <a href="?menu=ViewCart&id=<%#Eval("id") %>">
							查看</a> <a href="?menu=actcart&id=<%#Eval("id") %>">提交订单</a> </li>
				</ul>
			</ItemTemplate>
		</asp:Repeater>
		<ul>
			<li style="width: 98.5%; float: left; line-height: 28px; text-align: left;">共
				<asp:Label ID="Allnum1" runat="server" Text=""></asp:Label>
				条记录
				<asp:Label ID="Toppage1" runat="server" Text="" />
				<asp:Label ID="Nextpage1" runat="server" Text="" />
				<asp:Label ID="Downpage1" runat="server" Text="" />
				<asp:Label ID="Endpage1" runat="server" Text="" />
				页次：<asp:Label ID="Nowpage1" runat="server" Text="" />/<asp:Label ID="PageSize1" runat="server"
					Text="" />页
				<asp:Label ID="pagess1" runat="server" Text="" />
				条记录/页 转到第
				<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
				</asp:DropDownList>
				页 </li>
		</ul>
	</asp:Panel>
	<asp:Panel ID="ViewCartpro" runat="server" Width="100%" Visible="false">
		<ul>
			<li style="width: 24.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				商品名称 </li>
			<li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				单位 </li>
			<li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				数量 </li>
			<li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				销售类型 </li>
			<li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				市场价 </li>
			<li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				相关操作 </li>
		</ul>
		<asp:Repeater ID="cartproinfo" runat="server">
			<ItemTemplate>
				<ul>
					<li style="width: 24.6%; float: left; line-height: 24px; text-align: center; text-overflow: ellipsis;
						white-space: nowrap; overflow: hidden">
						<%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%>
					</li>
					<li style="width: 13.6%; float: left; line-height: 24px; text-align: center">
						<%#Eval("proname")%>
					</li>
					<li style="width: 13.6%; float: left; line-height: 24px; text-align: center">
						<%#Eval("pronum") %>
					</li>
					<li style="width: 16.6%; float: left; line-height: 24px; text-align: center">
						<%#formatnewstype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
					</li>
					<li style="width: 13.6%; float: left; line-height: 24px; text-align: center">
						<%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
					</li>
					<li style="width: 16.6%; float: none; line-height: 24px; text-align: center"><a href="?menu=delcartpro&id=<%#Eval("id") %>"
						onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a> </li>
				</ul>
			</ItemTemplate>
		</asp:Repeater>
		<ul>
			<li style="width: 98.5%; float: none; line-height: 24px; text-align: center;">
				<asp:Button ID="Button2" OnClientClick="javascript:history.go(-1);return false;"
					runat="server" Text="返回" />
			</li>
		</ul>
	</asp:Panel>
	<asp:Panel ID="OrderProlist" runat="server" Width="100%" Visible="false">
		<ul>
			<li style="width: 24.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				商品名称 </li>
			<li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				单位 </li>
			<li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				数量 </li>
			<li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				销售类型 </li>
			<li style="width: 13.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				市场价 </li>
			<li style="width: 16.6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				金额 </li>
		</ul>
		<asp:Repeater ID="OrderProview" runat="server">
			<ItemTemplate>
				<ul>
					<li style="width: 24.6%; float: left; line-height: 30px; text-align: center; text-overflow: ellipsis;
						white-space: nowrap; overflow: hidden">
						<%#Gettypes(Eval("ProID","{0}"))%><%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%>
					</li>
					<li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
						<%#Eval("Danwei")%>
					</li>
					<li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
						<%#Eval("pronum") %>
					</li>
					<li style="width: 16.6%; float: left; line-height: 30px; text-align: center">
						<%#formatnewstype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
					</li>
					<li style="width: 13.6%; float: left; line-height: 30px; text-align: center">
						<%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
					</li>
					<li style="width: 16.6%; float: none; line-height: 30px; text-align: center">
						<%#getprojia(DataBinder.Eval(Container, "DataItem.ID", "{0}"))%>
					</li>
				</ul>
			</ItemTemplate>
		</asp:Repeater>
		<ul>
			<li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
				合计：<asp:Label ID="ojiage" runat="server" Text=""></asp:Label>
				元 </li>
			<li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
				运费：<asp:Label ID="oyunfei" runat="server" Text=""></asp:Label>
				元 </li>
			<li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
				实际金额：<asp:Label ID="ojiages" runat="server" Text=""></asp:Label>
				+
				<asp:Label ID="cyunfei" runat="server" Text=""></asp:Label>＝<asp:Label ID="orderallpromoney"
					runat="server" Text=""></asp:Label>
				元 </li>
			<li style="width: 98.5%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
				已付款：<asp:Label ID="labelmoney" runat="server" Text=""></asp:Label>
				元 </li>
		</ul>
		<ul>
			<li style="width: 98.5%; float: none; line-height: 24px; text-align: center;">
				<asp:Button ID="Button1" OnClientClick="javascript:history.go(-1);return false;"
					runat="server" Text="返回" />
			</li>
		</ul>
	</asp:Panel>
<div class="cleardiv"></div>
</div>
</form>
</body>
</html>
