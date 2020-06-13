<%@ page language="C#" autoeventwireup="true" inherits="User_Shopfee_ShowAuction, App_Web_xj23mn1f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>竞拍记录</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;购物订单管理
</div>

	<div class="us_topinfo" style="margin-top: 10px;">
		<a href="../PreViewOrder.aspx?menu=Cartinfo">购物车管理</a> <a href="../PreViewOrder.aspx?menu=Orderinfo">
			订单管理</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=1">已确定的订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=2">
				已发货订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=3">正常订单</a>
		<a href="../PreViewOrder.aspx?menu=Orderinfo&type=4">已成交订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=5">
			已作废订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=6">代购订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=1&panel=1">
				代购历史订单</a> <a href="MyAuctionList.aspx">竞拍记录</a>
	</div>
	<div class="us_seta" style="margin-top: 10px;">
		<h1 style="text-align: center">
			<asp:Label ID="Label1" runat="server" Text="详细竞拍记录"></asp:Label></h1>
		<ul style="width: 600px; height: 216px">
			<li style="text-align: center; width: 280px; margin-top: 10px">
				<asp:Label ID="lblimg" runat="server" Text=""></asp:Label></li>
			<li>
				<li style="width: 200px">
					<ul style="width: 200px">
						<li style="float: left; width: 200px; height: 30px">商品名称：<strong><asp:Label ID="lblProName"
							runat="server" Text="Label"></asp:Label></strong></li>
						<li style="float: left; width: 200px; height: 30px">竞拍状态：<asp:Label ID="lblProState"
							runat="server" Text=""></asp:Label></li>
						<li style="float: left; width: 200px; height: 30px">竞拍类型：<asp:Label ID="lblTimer"
							runat="server" Text="" ForeColor="Red"></asp:Label></li>
							 <li style="float: left; width: 200px; height: 30px">竞拍结果：<asp:Label ID="Label2"	runat="server" Text="" ForeColor="Red"></asp:Label></li>
					</ul>
				</li>
		</ul>
		<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
			<tbody id="Tbody1">
				<tr class="tdbg">
					<td align="center" class="title">
						出价时间
					</td>
					<td align="center" class="title">
						竞拍价格
					</td>
				</tr>
				<asp:Repeater ID="Promotions" runat="server">
					<ItemTemplate>
						<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
							<td height="24" align="center">
								<%#Eval("AddTime")%>
							</td>
							<td height="24" align="center">
								<%#Eval("PMoney")%>
							</td>
						</tr>
					</ItemTemplate>
				</asp:Repeater>
				<tr class="tdbg">
					<td height="24" colspan="6" align="center" class="tdbgleft">
						共
						<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
						条记录
						<asp:Label ID="Toppage" runat="server" Text="" />
						<asp:Label ID="Nextpage" runat="server" Text="" />
						<asp:Label ID="Downpage" runat="server" Text="" />
						<asp:Label ID="Endpage" runat="server" Text="" />
						页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"	Text="" />页
						<asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>
						条记录/页 转到第
						<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
						</asp:DropDownList>
						页
					</td>
				</tr>
			</tbody>
	</div>
</form>
</body>
</html>