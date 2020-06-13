<%@ page language="C#" autoeventwireup="true" inherits="manage_Search_SearchFunc, App_Web_4vgnqrph" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>便捷导航</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 扩展功能&gt;&gt; 便捷导航 <a href="AddSearch.aspx">[新增导航]</a></div>
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无导航信息</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
	<tr align="left">
		<td style="width:10%" class="tdbg">
			欢迎您使用便捷导航模块；<br />
			在此位置您可以对索引目录进行观察位置、删除目录及管理目录的索引文件。<br />
			<p style="color: Red">凡是文件未启用，站内链接不存在该文件则无法链接到指定的页面。</p>
		</td>
	</tr>
</table>
<div>
	<asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" CssClass="border" Width="100%" OnRowDataBound="gvCard_RowDataBound" RowStyle-CssClass='tdbg'>
		<Columns>
			<asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
				<ItemTemplate>
				   <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("id") %>' /> <asp:CheckBox ID="chkSel" runat="server" />
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="名称" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
				<ItemTemplate>
					<asp:HyperLink ID="lblName" runat="server" NavigateUrl='<%#Eval("id","AddSearch.aspx?menu=edit&id={0}") %>'  Text='<%# Eval("Name") %>' ToolTip="点击编辑导航"></asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="状态" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
				<ItemTemplate>
					<asp:Label ID="lblState" runat="server" Text='<%# Eval("state") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="文件或地址路径">
				<ItemTemplate>
				   <asp:HyperLink ID="hlLink" runat="server" NavigateUrl='<%#Eval("flieUrl") %>' Text='<%#Eval("flieUrl") %>' ToolTip='<%# Eval("Name") %>'></asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="连接类型" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
				<ItemTemplate>
					<asp:Image ID="imgLinkType" runat="server" />
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="创建时间" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
				<ItemTemplate>
					<asp:Label ID="lblTime" runat="server" Text='<%# getDate(Eval("time","{0}"))%>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
	<tr class="tdbg">
		<td colspan="6">
			<div class="tdbg">
				<span>
					<asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
					<asp:Button ID="BtnDelete" runat="server" CssClass="C_input" OnClick="BtnDelete_Click"	OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}" Text="删除选定内容" Width="134px" />
					<asp:Button ID="Button1" runat="server" Text="批量启用" CssClass="C_input" OnClick="Btnuse_Click" />
					<asp:Button ID="Button2" runat="server" Text="批量停用" CssClass="C_input" OnClick="Btnstop_Click" />
				</span>  <span style="text-align: center">
				共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
						<asp:Label ID="Toppage" runat="server" Text="" />
						<asp:Label ID="Nextpage" runat="server" Text="" />
						<asp:Label ID="Downpage" runat="server" Text="" />
						<asp:Label ID="Endpage" runat="server" Text="" />页次：
						<asp:Label ID="Nowpage" runat="server" Text="" />/
						<asp:Label ID="PageSize" runat="server" Text="" />页
						<asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
						<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" ontextchanged="txtPage_TextChanged"></asp:DropDownList>
						页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="仅接受数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
				 </span>
			</div>
		</td>
	</tr>
</table>
</form>
</body>
</html>