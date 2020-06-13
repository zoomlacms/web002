<%@ page language="C#" autoeventwireup="true" inherits="User_PrintServer_TripOrder, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>旅游订单管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
	您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;
		<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 旅游订单管理
	</div>
	<div class="us_seta" style="margin-top: 10px;">
		<h1 style="text-align: center">
			<asp:Label ID="Label1" runat="server" Text=""></asp:Label></h1>
			 <asp:Panel ID="Panel1" runat="server" Width="100%">
			<ul>
				 <li style="width: 15.9%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					订单编号 </li>
				<li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					客户名称 </li>
				<li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					出发时间 </li>
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
					支付 </li>
				<li style="width: 6%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					操作 </li>
			</ul>
			<asp:Repeater ID="Repeater1" runat="server">
				<ItemTemplate>
					<ul>
					  <ul>
						<li style="width: 15.9%; float: left; line-height: 28px; text-align: left; text-overflow: ellipsis;
							white-space: nowrap; overflow: hidden"><a href="?menu=ViewOrderlist&id=<%#Eval("id") %>"> <%#Eval("OrderNo")%></a> </li>
						<li style="width: 8%; float: left; line-height: 28px; text-align: center;"><%#Eval("Reuser") %></li>
						<li style="width: 10%; float: left; line-height: 28px; text-align: center; text-overflow: ellipsis;
							white-space: nowrap; overflow: hidden">
							<%#DataBinder.Eval(Container.DataItem, "AddTime", "{0:yyyy-MM-dd}")%></li>
						<li style="width: 8%; float: left; line-height: 28px; text-align: center;">
							<%#formatcc(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%> </li>
						<li style="width: 8%; float: left; line-height: 28px; text-align: center;">
							<%#getshijiage(Eval("id", "{0}"))%></li>
						<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
							<%#fapiao(DataBinder.Eval(Container, "DataItem.Invoiceneeds", "{0}"))%></li>
						<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
							<%#fapiao(DataBinder.Eval(Container, "DataItem.Developedvotes","{0}")) %></li>
						<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
							<%#formatzt(DataBinder.Eval(Container, "DataItem.OrderStatus", "{0}"),"0")%></li>
						<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
							<%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"),"1")%></li>
						<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
							<%#formatzt(DataBinder.Eval(Container, "DataItem.StateLogistics", "{0}"),"2")%></li>
						<li style="width: 7%; float: left; line-height: 28px; text-align: center;">
							<%#formatzt(DataBinder.Eval(Container, "DataItem.OrderNo", "{0}"), "3")%></li>
						  
						<li style="width: 6%; float: left; line-height: 28px; text-align: center;"><%#getbotton(Eval("id","{0}")) %></li>
					</ul>
					</ul>
				</ItemTemplate>
			</asp:Repeater>
			<ul>
				<li style="width: 98.5%; float: left; line-height: 28px; text-align: left;">共
					<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
					条记录
					<asp:Label ID="Label3" runat="server" Text="" />
					<asp:Label ID="Label4" runat="server" Text="" />
					<asp:Label ID="Label5" runat="server" Text="" />
					<asp:Label ID="Label6" runat="server" Text="" />
					页次：<asp:Label ID="Label7" runat="server" Text="" />/<asp:Label ID="Label8" runat="server"
						Text="" />页
					<asp:TextBox ID="txtPage" runat="server" Width="30px" AutoPostBack="True" 
						ontextchanged="txtPage_TextChanged"></asp:TextBox>
					条记录/页 转到第
					<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
						onselectedindexchanged="DropDownList3_SelectedIndexChanged">
					</asp:DropDownList>
					页 </li>
			</ul>
		</asp:Panel>
		  <asp:Panel ID="Panel3" runat="server" Width="100%" Visible="false">
		  <div style="width:100%">
			<ul>
				<li style="width:24%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					乘客名称 </li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					 证件类型</li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					证件号码 </li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
				   联系电话 </li>
			</ul>
			</div>
			<div style="width:100%">
			
			<asp:Repeater ID="Repeater3" runat="server">
				<ItemTemplate>
					<ul>
						<li style="width:24%; float: left; line-height: 30px; text-align: center; text-overflow: ellipsis;
							white-space: nowrap; overflow: hidden"><%#Eval("Name")%> <%#Eval("Name_EN")%></li>
						<li style="width:24%; float: left; line-height: 30px; text-align: center">
							 <%# GetCreType(GetCreID(Eval("CreID", "{0}"), 0))%></li>
						<li style="width:24%; float: left; line-height: 30px; text-align: center">
						   <%# GetCreID(Eval("CreID", "{0}"),1)%>  </li>
						<li style="width:24%; float: left; line-height: 30px; text-align: center">
						   <%#Eval("Mobile")%></li>
					</ul>
				</ItemTemplate>
			</asp:Repeater>
			</div>
		 </asp:Panel>
		<asp:Panel ID="Panel2" runat="server" Width="100%" Visible="false">
		<h1 style="text-align: center">
			<asp:Label ID="Label10" runat="server" Text=""></asp:Label></h1>
		  <div style="width:100%">
			<ul>
				<li style="width:19%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					旅游线路 </li>
				<li style="width:20%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					出发时间 </li>
				<li style="width:20%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					成人价格 </li>
				<li style="width:20%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					儿童数量 </li>
				<li style="width:20%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
					成人数量 </li>
			</ul>
			</div>
			<div style="width:100%">
			<asp:Repeater ID="Repeater2" runat="server">
				<ItemTemplate>
					<ul>
						<li style="width:19%; float: left; line-height: 30px; text-align: center; text-overflow: ellipsis;
							white-space: nowrap; overflow: hidden"><%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%></li>
						<li style="width:20%; float: left; line-height: 30px; text-align: center">
							 <%#DataBinder.Eval(Container.DataItem, "AddTime", "{0:yyyy-MM-dd}")%> </li>
						<li style="width:20%; float: left; line-height: 30px; text-align: center">
						   <%# DataBinder.Eval(Container, "DataItem.Shijia", "{0:N2}")%> </li>
						<li style="width:20%; float: left; line-height: 30px; text-align: center">
							<%#Eval("PerID")%> </li>
						<li style="width:20%; float: left; line-height: 30px; text-align: center">
							<%#Eval("Pronum")%> </li>
					</ul>
				</ItemTemplate>
			</asp:Repeater>
			</div>
			<br />
			<ul >
			 <li style="width:45%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
					保险数量：<asp:Label ID="lblIns" runat="server" Text=""></asp:Label> 份 </li>
			  <li style="width:45%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
					合计：<asp:Label ID="preojiage" runat="server" Text=""></asp:Label> 元   &nbsp;&nbsp;
					<asp:LinkButton ID="lb" runat="server" Text="在线支付"></asp:LinkButton></li>
			   
			</ul>
		 </asp:Panel>
	</div>
</form>
</body>
</html>