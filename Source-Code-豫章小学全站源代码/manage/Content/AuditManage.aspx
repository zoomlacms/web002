<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_AuditManage, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>内容预审核管理</title>
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>    
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; <a href="ContentManage.aspx">内容管理</a>&gt;&gt;内容预审核管理&gt;&gt;【<a href="AddAudit.aspx?menu=add">新增内容预审核</a>】</div>
<div id="nocontent"  runat="server" style="display:none">
暂无预审核信息
</div>
<asp:GridView ID="Egv" runat="server"  AutoGenerateColumns="False" 
	CssClass="border"  Width="100%" AllowSorting="true" 
	onrowdatabound="Egv_RowDataBound" onrowcommand="Egv_RowCommand">
	<Columns>
		<asp:TemplateField>
			<ItemTemplate>
				<asp:CheckBox ID="chkSel" runat="server" />
			</ItemTemplate>
			<ItemStyle  HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="ID">
			<ItemTemplate>
			<asp:HiddenField ID="hfIds" runat="server" Value='<%#Eval("id") %>' />
			<asp:HyperLink ID="id" runat="server" Text='<%# Eval("id") %>' NavigateUrl='AddAudit.aspx?menu=edit&id=<%# Eval("id") %>'></asp:HyperLink>
			</ItemTemplate>
			<ItemStyle  HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField  HeaderText="指定审核内容">
			<ItemTemplate>
				<asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("NodeId") %>' />
				<asp:Label ID="lblContent" runat="server" Text=""></asp:Label>
			</ItemTemplate>
			 <ItemStyle  HorizontalAlign="Center" />
		  </asp:TemplateField>
		   <asp:TemplateField  HeaderText="开始时间">
			<ItemTemplate>
				<asp:Label ID="time" runat="server" Text='<%#Eval("BeginTime") %>'></asp:Label>
			</ItemTemplate>
			 <ItemStyle  HorizontalAlign="Center" />
		  </asp:TemplateField>
		   <asp:TemplateField  HeaderText="结束时间">
			<ItemTemplate>
				<asp:Label ID="endTime" runat="server" Text='<%#Eval("endTime") %>'></asp:Label>
			</ItemTemplate>
			 <ItemStyle  HorizontalAlign="Center" />
		  </asp:TemplateField>
		<asp:TemplateField HeaderText="操作">
			<ItemTemplate>
				<asp:LinkButton ID="LnkDelete" runat="server" CommandName="Del" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');"
					CommandArgument='<%# Eval("id")%>'>删除</asp:LinkButton>
			 <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Upd" CommandArgument='<%# Eval("id")%>'>修改</asp:LinkButton>
			</ItemTemplate>
			<ItemStyle  HorizontalAlign="Center" />
		</asp:TemplateField>
	</Columns>
	<RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
	<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	<PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
	<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
</asp:GridView>
<span style="text-align: center">
	共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
	<asp:Label ID="Toppage" runat="server" Text="" />
	<asp:Label ID="Nextpage" runat="server" Text="" />
	<asp:Label ID="Downpage" runat="server" Text="" />
	<asp:Label ID="Endpage" runat="server" Text="" />页次：
	<asp:Label ID="Nowpage" runat="server" Text="" />/
	<asp:Label ID="PageSize" runat="server" Text="" />页
	<asp:Label ID="pagess" runat="server" Text="" />
	<asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
		Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
	<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
	ontextchanged="DropDownList3_TextChanged" ></asp:DropDownList>
	页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
		ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
 </span><br />
<asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged" Text="全选" />
<asp:Button ID="btnDel" runat="server" Text="批量删除" OnClick="btnDel_Click" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')};" />
</form>
</body>
</html>