<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AuditingState, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>工作流配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css"  type="text/css" rel="stylesheet" />
</head>
<body>
<form id="myform" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;<a href="AuditingState.aspx">工作流配置</a></div>
<div>
<asp:GridView ID="gvAuditingState" runat="server" DataSourceID="odsAuditingState"
	AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="stateCode" AllowSorting="True"
	OnRowDataBound="gvAuditingState_RowDataBound" Width="100%" PageSize="20">
	<Columns>
		<asp:TemplateField HeaderText="状态码" ItemStyle-Height="22" ItemStyle-Width="8%" ItemStyle-HorizontalAlign="Center">
			<ItemTemplate>
				<asp:Label ID="Label1" runat="server" Text='<%# Bind("StateCode") %>'></asp:Label>
			</ItemTemplate>
		</asp:TemplateField>
		<asp:TemplateField HeaderText="状态名称">
			<ItemTemplate>
				<asp:Label ID="Label3" runat="server" Text='<%#Eval("StateName") %>'></asp:Label>
			</ItemTemplate>
			<EditItemTemplate>
				<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("StateName") %>'></asp:TextBox>
			</EditItemTemplate>
		</asp:TemplateField>
		<asp:TemplateField HeaderText="状态类型"  ItemStyle-HorizontalAlign="Center">
			<ItemTemplate>
				<%# GetStateType(Eval("StateType").ToString())%>
			</ItemTemplate>
			<EditItemTemplate>
				<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StateType") %>'></asp:TextBox>
			</EditItemTemplate>
		</asp:TemplateField>
		<asp:TemplateField HeaderText="编辑" ShowHeader="False"  ItemStyle-HorizontalAlign="Center">
			<ItemTemplate >
				<asp:LinkButton ID="btnEdit" runat="server" CausesValidation="True" CommandName="Edit"
					Text="编辑" Enabled='<%# IsEnabled(Eval("StateType").ToString())%>' />
			</ItemTemplate>
			<EditItemTemplate>
				<asp:LinkButton ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update"
					Text="更新" />
				&nbsp;<asp:LinkButton ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel"
					Text="取消" />
			</EditItemTemplate>
		</asp:TemplateField>
		<asp:TemplateField HeaderText="删除" ShowHeader="False"  ItemStyle-HorizontalAlign="Center">
			<ItemTemplate>
				<asp:LinkButton ID="btnDel" runat="server" Text="删除" CommandName="Delete" OnClientClick="return confirm('你确定将该数据删除吗？');"  CommandArgument="Eval('StateCode').ToString())"
					Enabled='<%# IsEnabled(Eval("StateType").ToString())%>' />
			</ItemTemplate>
		</asp:TemplateField>
	</Columns>
	<RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
	<HeaderStyle Height="26px" />
</asp:GridView>
<asp:ObjectDataSource ID="odsAuditingState" runat="server" SelectMethod="GetAuditingStateAll"
	TypeName="ZoomLa.BLL.B_AuditingState" DeleteMethod="DelAuditingStateByStateCode"
	UpdateMethod="ModifyAuditingStateByStateCode">
	<DeleteParameters>
		<asp:Parameter Name="stateCode" Type="String" />
	</DeleteParameters>
	<UpdateParameters>
		<asp:Parameter Name="stateName" Type="String" />
		<asp:Parameter Name="stateType" Type="String" />
		<asp:Parameter Name="stateCode" Type="String" />
	</UpdateParameters>
</asp:ObjectDataSource>
</div>
</form>
</body>
</html>