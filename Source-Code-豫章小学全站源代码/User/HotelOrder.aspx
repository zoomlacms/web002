<%@ page language="C#" autoeventwireup="true" inherits="User_PrintServer_HotelOrder, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>酒店订单管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;
<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 酒店订单管理
</div>
<div class="us_seta" style="margin-top: 10px;">
<h1 style="text-align: center">
	<asp:Label ID="Label1" runat="server" Text=""></asp:Label></h1>
<asp:Panel ID="Panel1" runat="server" Width="100%" Visible="false">
	<ul>
		<li id="Li1" style="width: 20%; float: left; line-height: 30px; text-align: center;
			background-color: #FFF5EC">订单编号 </li>
		<li style="width: 20%; float: left; line-height: 30px; text-align: center;">
			客户名称 </li>
		<li style="width: 20%; float: left; line-height: 30px; text-align: center;">
			入住时间 </li>
		<li style="width: 20%; float: left; line-height: 30px; text-align: center;">
			订单金额 </li>
		<li style="width: 16%; float: left; line-height: 30px; text-align: center;">
			实际金额 </li>
	</ul>
	<asp:Repeater ID="Repeater1" runat="server">
		<ItemTemplate>
			<ul>
				<li style="width: 20%; float: left; line-height: 28px; text-align: left; text-overflow: ellipsis;
					white-space: nowrap; overflow: hidden"><a href="?menu=ViewOrderlist&id=<%#Eval("id") %>">
					<%#Eval("OrderNo")%></a> </li>
				<li style="width: 20%; float: left; line-height: 28px; text-align: center;">
					<%#Eval("Rename") %> </li>
				<li style="width: 20%; float: left; line-height: 28px; text-align: center; text-overflow: ellipsis;
					white-space: nowrap; overflow: hidden"> <%#DataBinder.Eval(Container.DataItem, "AddTime", "{0:yyyy-MM-dd}")%></li>
				<li style="width: 20%; float: left; line-height: 28px; text-align: center;">
					<%#formatcc(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%> </li>
				<li style="width: 16%; float: left; line-height: 28px; text-align: center;">
					<%#formatcc(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%></li>
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
<asp:Panel ID="Panel2" runat="server" Width="100%" Visible="false">
	<ul>
		<li style="width: 16%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
			酒店名称 </li>
		<li style="width: 16%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
			价格 </li>
	   <li style="width: 16%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
			入住人 </li>
		<li style="width: 16%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
			入住时间 </li>
		 <li style="width: 16%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
			到店时间 </li>
		<li style="width: 16%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
			城市 </li>
	</ul>
	<asp:Repeater ID="Repeater2" runat="server">
		<ItemTemplate>
			<ul>
				<li style="width: 16%; float: left; line-height: 30px; text-align: center; text-overflow: ellipsis;
					white-space: nowrap; overflow: hidden">
					<%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%></li>
			   <li style="width: 16%; float: left; line-height: 30px; text-align: center">
					<%# DataBinder.Eval(Container, "DataItem.Shijia", "{0:N2}")%></li>
			   <li style="width: 16%; float: left; line-height: 30px; text-align: center">
					<%# Eval("Proinfo")%></li> 
			   <li style="width: 16%; float: left; line-height: 30px; text-align: center">
				   <%#DataBinder.Eval(Container.DataItem, "AddTime", "{0:yyyy-MM-dd}")%></li>
			   <li style="width: 16%; float: left; line-height: 30px; text-align: center">
					<%#Eval("PerID")%></li>
			   <li style="width: 16%; float: left; line-height: 30px; text-align: center">
					<%# Eval("city")%></li>
			</ul>
		</ItemTemplate>
	</asp:Repeater>
	<br />
	<ul>
		<li style="width: 100%; float: none; line-height: 24px; text-align: left; background-color: #F7F7F7">
			合计：<asp:Label ID="preojiage" runat="server" Text=""></asp:Label>元 </li>
	   </ul>
</asp:Panel>
</div>
</form>

</body>
</html>