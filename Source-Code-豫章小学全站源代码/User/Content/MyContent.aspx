<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Content.MyContentpage, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的内容</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" /> 
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
<script language="javascript" type="text/javascript" src="/js/SelectCheckBox.js"></script>
</head>
<body>   
<div style="height: 24px; line-height: 24px;">
<asp:Label ID="lblAddContent" runat="server" Text="Label"></asp:Label>
</div>
<div class="us_pynews">
<form id="form1" runat="server">
<div class="us_seta">
	<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
		DataKeyNames="GeneralID" OnPageIndexChanging="Egv_PageIndexChanging"
		OnRowCommand="Lnk_Click" Width="100%" CellPadding="4" ForeColor="#333333" 
        GridLines="None" OnRowDataBound="Egv_RowDataBound" 
        EnableModelValidation="True"  >
		<Columns>
			<asp:TemplateField HeaderStyle-Height="25px" HeaderText="选择">
				<ItemTemplate>
					<asp:CheckBox ID="chkSel" runat="server"  />
				</ItemTemplate>
                <HeaderStyle Height="25px"></HeaderStyle>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
			<asp:BoundField DataField="GeneralID" HeaderText="ID">
				<HeaderStyle Width="6%" />
				<ItemStyle HorizontalAlign="Center" />
			</asp:BoundField>
			<asp:TemplateField HeaderText="标题">
				<HeaderStyle Width="50%" />
				<ItemTemplate>
					<a href='ShowPubList.aspx?ID=<%# Eval("GeneralID") %>'>
						<%# ZoomLa.Common.BaseClass.Htmlcode(Eval("Title","{0}"))%></a>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="状态">
				<ItemTemplate>
					<%# GetStatus(Eval("Status", "{0}")) %>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
			<asp:TemplateField HeaderText="已生成">
				<ItemTemplate>
					<%# GetCteate(Eval("IsCreate", "{0}"))%>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
			<asp:TemplateField HeaderText="操作">
				<ItemTemplate>
					<a href='ShowPublist.aspx?ID=<%# Eval("GeneralID") %>'>预览</a>&nbsp;&nbsp;<a href="<%# GetUrl(Eval("Status", "{0}"))%>"
						target="_blank">访问</a>
					<asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GeneralID") %>'>修改</asp:LinkButton>
					
					<asp:LinkButton ID="LinkButton3" runat="server" Visible='<%#GetIsDe(Eval("Status", "{0}")) %>' CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>'
						OnClientClick="return confirm('你确定将该数据删除到回收站吗？')">删除</asp:LinkButton>                                
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
		<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
	</asp:GridView>
	<div style="width: 100%; float: left; line-height: 30px; margin-top: 5px;">
		<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
			Text="选中本页显示的所有项目" />
		<asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click" class="i_bottom"
			OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}" UseSubmitBehavior="true" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:DropDownList ID="DropDownList1" runat="server">
			<asp:ListItem Value="0">按标题查找</asp:ListItem>
			<asp:ListItem Value="1">按ID查找</asp:ListItem>
		</asp:DropDownList>
		<asp:TextBox ID="TxtSearchTitle" runat="server"></asp:TextBox>
		<asp:Button ID="Btn_Search" runat="server" class="i_bottom" Text="搜索" OnClick="Btn_Search_Click" />
		<asp:HiddenField ID="HiddenField1" runat="server" />
		<asp:HiddenField ID="HiddenField2" runat="server" />
        <asp:HiddenField ID="HiddenField3" runat="server" />
	</div>
</div>
</form>
</div>
</body>
</html>
