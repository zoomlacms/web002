<%@ page language="C#" autoeventwireup="true" inherits="User_Content_ShowPubList, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>内容预览</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/js/SelectCheckBox.js"></script>
</head>
<body>  
<form id="form1" runat="server">
<div>
<ul class="us_seta" style="margin-top: 10px;">
	<h1 style="text-align: center">
		<asp:Label ID="Label1" runat="server" Text="信息预览"></asp:Label></h1>
	<asp:DetailsView ID="DetailsView1" runat="server" Width="100%" CellPadding="4" GridLines="None"
		Font-Size="12px" Style="margin-bottom: 3px; margin-top: 2px;" CssClass="r_navigation">
		<Fields>
		</Fields>
		<FooterStyle Font-Bold="True" BackColor="#FFFFFF" />
		<CommandRowStyle Font-Bold="True" CssClass="tdbgleft" />
		<RowStyle />
		<FieldHeaderStyle Font-Bold="True" />
		<PagerStyle HorizontalAlign="Center" />
		<HeaderStyle Font-Bold="True" />
		<EditRowStyle />
		<AlternatingRowStyle />
	</asp:DetailsView>
</ul>
<%--<ul class="us_seta" style="margin-top: 10px;">
	<h1 style="text-align: center">
		<asp:Label ID="Label2" runat="server" Text="互动信息"></asp:Label></h1>
	<asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="tdbgleft">
		<Columns>
			<asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-HorizontalAlign="Center" />
			<asp:BoundField DataField="PubName" HeaderText="互动信息" ItemStyle-HorizontalAlign="Center" />
			<asp:BoundField DataField="Num" HeaderText="回复数量" ItemStyle-HorizontalAlign="Center" />
			<asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
			<ItemTemplate>
			<a href='ShowPub.aspx?ID=<%#Eval("GID") %>&pid=<%#Eval("PID") %>'>查看</a>
			</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
</ul>--%>
</div>
</form>
</body>
</html>