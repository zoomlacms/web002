<%@ page language="C#" autoeventwireup="true" inherits="User_Pub, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>互动页面</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_pynews" style="height: 24px; line-height: 24px;">
您现在的位置： <span id="YourPosition"><span><a title="网站首页" href="/">
	<asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; 我的互动</div>
<ul>
<li style="width: 500px; float: left; line-height: 30px; text-align: left">
	<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">我发布的互动</asp:LinkButton>
	|
	<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">我参与的互动</asp:LinkButton>
</li>
<li style="width: 260px; float: left; line-height: 30px; text-align: right">
	<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</li>
<li>
	<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"  EmptyDataText="暂无数据" 
		DataKeyNames="GeneralID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging"
		OnRowCommand="Lnk_Click" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
		<Columns>
			<asp:BoundField DataField="GeneralID" HeaderText="ID">
				<HeaderStyle Width="6%" />
				<ItemStyle HorizontalAlign="Center" />
			</asp:BoundField>
			<asp:TemplateField HeaderText="标题">
				<HeaderStyle Width="50%" />
				<ItemTemplate>
					<a href='ShowPubList.aspx?ID=<%# Eval("GeneralID") %>'>
						<%# Eval("Title")%></a>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="状态">
				<ItemTemplate>
					<%# GetStatus(Eval("Status", "{0}")) %>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
			<asp:TemplateField HeaderText="操作">
				<ItemTemplate>
					<%#GetLink(Eval("GeneralID")+"") %>&nbsp;&nbsp;<a href="<%# GetUrl(Eval("GeneralID", "{0}"))%>"
						target="_blank">访问</a>
					<asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GeneralID") %>' Visible='<%#GetVisible(Eval("GeneralID")+"") %>'>修改</asp:LinkButton>
					<asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>' Visible='<%# GetVisible(Eval("GeneralID")+"")  %>'
						OnClientClick="return confirm('你确定将该数据删除到回收站吗？')"><%# GetIsDe(Eval("Status", "{0}")) %></asp:LinkButton>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
		</Columns>
		<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<RowStyle BackColor="#EFF3FB" Height="25px" />
		<EditRowStyle BackColor="#2461BF" />
		<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
		<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
		<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<AlternatingRowStyle BackColor="White" />
		<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
			NextPageText="下一页" PreviousPageText="上一页" />
	</asp:GridView>
</li>
<li>
	<asp:DropDownList ID="DropDownList1" runat="server">
		<asp:ListItem Value="0">按标题查找</asp:ListItem>
		<asp:ListItem Value="1">按ID查找</asp:ListItem>
	</asp:DropDownList>
	<asp:TextBox ID="TxtSearchTitle" runat="server"></asp:TextBox>
	<asp:Button ID="Btn_Search" runat="server" Text="搜索" CssClass="button" OnClick="Btn_Search_Click" />
</li>
</ul>
</form>
</body>
</html>
