<%@ page language="C#" autoeventwireup="true" inherits="User_PrintServer_FeightOrder, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>航班订单管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>   
<form id="form1" runat="server">
<div class="us_topinfo">
 您现在的位置：<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; 航班订单管理
</div>
</div>
	<div class="us_seta" style="margin-top: 10px;">
		<h1 style="text-align: center">
			<asp:Label ID="Label1" runat="server" Text=""></asp:Label></h1>
			 <asp:Panel ID="Panel1" runat="server" Width="100%">
			<ul>
				  <li style="width: 17%; float: left; line-height: 30px; text-align: center;">
					订单编号 </li>
				<li style="width: 16%; float: left; line-height: 30px; text-align: center;">
					客户名称 </li>
				<li style="width: 16%; float: left; line-height: 30px; text-align: center;">
					起飞时间 </li>
				<li style="width: 16%; float: left; line-height: 30px; text-align: center;">
					订单金额 </li>
				<li style="width: 16%; float: left; line-height: 30px; text-align: center; ">
					实际金额 </li>
				<li style="width: 16%; float: left; line-height: 30px; text-align: center;">
					操作 </li>
			</ul>
			<asp:Repeater ID="Repeater1" runat="server">
				<ItemTemplate>
					<ul>
					  <ul>
						<li style="width: 17%; float: left; line-height: 28px; text-align: left; text-overflow: ellipsis;
							white-space: nowrap; overflow: hidden"><a href="?menu=ViewOrderlist&id=<%#Eval("id") %>">
								<%#Eval("OrderNo")%></a> </li>
						<li style="width: 16%; float: left; line-height: 28px; text-align: center;">
							<%#Eval("Reuser") %> </li>
						<li style="width: 16%; float: left; line-height: 28px; text-align: center; text-overflow: ellipsis;
							white-space: nowrap; overflow: hidden"> <%#DataBinder.Eval(Container.DataItem, "AddTime", "{0:yyyy-MM-dd}")%></li>
						<li style="width: 16%; float: left; line-height: 28px; text-align: center;">
							<%#formatcc(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%> </li>
						<li style="width: 16%; float: left; line-height: 28px; text-align: center;">
						   <%#formatcc(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%></li>
						<li style="width: 16%; float: left; line-height: 28px; text-align: center;"> <%#getbotton(Eval("id","{0}")) %></li>
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
				<li style="width:24%; float: left; line-height: 30px; text-align: center;">
					乘客名称 </li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center;">
					 证件类型</li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center;">
					证件号码 </li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center;">
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
				<li style="width:24%; float: left; line-height: 30px; text-align: center;">
					航班号 </li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center;">
					起飞 </li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center;">
					价格 </li>
				<li style="width:24%; float: left; line-height: 30px; text-align: center;">
					机建/燃油 </li>
			</ul>
			</div>
			<div style="width:100%">
			<asp:Repeater ID="Repeater2" runat="server">
				<ItemTemplate>
					<ul>
						<li style="width:24%; float: left; line-height: 30px; text-align: center; text-overflow: ellipsis;
							white-space: nowrap; overflow: hidden"><%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%></li>
						<li style="width:24%; float: left; line-height: 30px; text-align: center">
							<%#DataBinder.Eval(Container.DataItem, "AddTime", "{0:yyyy-MM-dd}")%></li>
						<li style="width:24%; float: left; line-height: 30px; text-align: center">
							 <%# DataBinder.Eval(Container, "DataItem.Shijia", "{0:N2}")%></li>
						<li style="width:24%; float: left; line-height: 30px; text-align: center">
							<%#Eval("Proinfo")%> </li>
					</ul>
				</ItemTemplate>
			</asp:Repeater>
			</div>
			<br />
			<ul >
				<li style="width:45%; float: none; line-height: 24px; text-align: left;">
					保险数量：<asp:Label ID="lblIns" runat="server" Text=""></asp:Label> 份 </li>
				<li style="width:90%; float: none; line-height: 24px; text-align: left;">
					合计：<asp:Label ID="preojiage" runat="server" Text=""></asp:Label> 元 </li>
			   
			</ul>
		 </asp:Panel>
	</div>
</form>
</body>
</html>