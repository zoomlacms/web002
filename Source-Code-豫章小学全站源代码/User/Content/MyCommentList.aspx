<%@ page language="C#" autoeventwireup="true" inherits="User_Content_MyCommentList, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE>
<html>
<head>
<title>我参与的</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />  
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
<div class="us_pynews">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;
<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 我参与的&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server">
		<asp:ListItem Value="0" Selected="True">按标题查找</asp:ListItem>
		<asp:ListItem Value="1">按ID查找</asp:ListItem>
	</asp:DropDownList>
	<asp:TextBox ID="TxtSearchTitle" runat="server"></asp:TextBox>
	<asp:Button ID="Btn_Search" runat="server" class="i_bottom" Text="搜索" OnClick="Btn_Search_Click" />
</div>
<div class="cleardiv"></div>
</div>
<div class="us_seta">
<asp:GridView ID="Egv" runat="server"   AutoGenerateColumns="False"
	DataKeyNames="ID"   Width="100%" CellPadding="4" ForeColor="#333333" 
        GridLines="None" OnRowDataBound="Egv_RowDataBound" 
        EnableModelValidation="True"  >
	<Columns>
		<asp:BoundField DataField="GeneralID" HeaderText="ID">
			<HeaderStyle Width="6%" />
			<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:TemplateField HeaderText="标题">
            <ItemTemplate>
                <asp:Label ID="lblTitle" runat="server"  Text='<%# Eval("Title" ) %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="作者">
            <ItemTemplate>
                <asp:Label ID="lblInput" runat="server"  Text='<%# Eval("inputer" ) %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
            <asp:TemplateField HeaderText="发表时间">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server"   Text='<%# getTime(Eval("commentTime")) %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
		<asp:TemplateField HeaderText="状态">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server"    Text='<%# GetStatus(Eval("status", "{0}")) %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
		<asp:TemplateField HeaderText="操作">
			<ItemTemplate>
				<a href='../../Comments/CommentFor.aspx?ID=<%#Eval("GeneralID","{0}") %>' target="_blank">访问</a>
			</ItemTemplate>
			<ItemStyle HorizontalAlign="Center" />
		</asp:TemplateField>
	</Columns>
	<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
	<RowStyle BackColor="#f6fdf6" Height="25px" />
	<EditRowStyle BackColor="#2461BF" />
	<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
	<PagerStyle HorizontalAlign="Center" />
	<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
	<AlternatingRowStyle BackColor="#f6fdf6" />
</asp:GridView>
<div align="center" class="tdbgleft">共
<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>个信息
<asp:Label ID="Toppage" runat="server" Text="" />
<asp:Label ID="Nextpage" runat="server" Text="" />
<asp:Label ID="Downpage" runat="server" Text="" />
<asp:Label ID="Endpage" runat="server" Text="" />
页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
<asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList2"
runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
</asp:DropDownList>
页<asp:HiddenField ID="HdnItemID" runat="server" /><asp:HiddenField ID="HdnTitle" runat="server" />
</div>
</div>
</form>
</body>
</html>
