<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.FlowManager, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>流程管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css"  type="text/css" rel="stylesheet" />
</head>
<body>
<form id="myform" runat="server">
<div class="r_navigation">
	<span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<span><a href="FlowManager.aspx">流程管理</a></span>
</div>
<div class="clearbox">
</div>
<asp:ObjectDataSource ID="odsFlow" runat="server" SelectMethod="GetFlowAll" TypeName="ZoomLa.BLL.B_Flow"
	DeleteMethod="DelFlowById">
	<DeleteParameters>
		<asp:Parameter Name="id" Type="Int32" />
	</DeleteParameters>
</asp:ObjectDataSource>
<div>
</div>
<asp:GridView ID="gwFlow" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
	DataSourceID="odsFlow" Width="100%" DataKeyNames="id" RowStyle-HorizontalAlign="Center"
	OnRowDataBound="gwFlow_RowDataBound" PageSize="20"  Height="20px">
<RowStyle HorizontalAlign="Center" Height="20px"></RowStyle>
	<Columns>
		<asp:BoundField DataField="id" HeaderText="ID" />
		<asp:BoundField DataField="flowName" HeaderText="流程名称">
			<ItemStyle Width="150px" />
		</asp:BoundField>
		<asp:BoundField DataField="flowDepict" HeaderText="流程描述">
			<ItemStyle Width="260px" />
		</asp:BoundField>
		<asp:TemplateField HeaderText="流程操作" ShowHeader="False">
			<ItemTemplate>
				<a href='FlowProcess.aspx?id=<%# Eval("id") %>&name=<%# Eval("flowName") %>'>|添加步骤|</a><a href='FlowProcessManager.aspx?id=<%# Eval("id") %>&name=<%#Eval("flowName") %>'>步骤列表|</a><a href='ModifyFlow.aspx?id=<%#Eval("id") %>'>修改流程|</a><a href='FlowManager.aspx?Action=copy&id=<%#Eval("id") %>'>复制流程|</a><asp:LinkButton ID="lbDel" runat="server" CausesValidation="False" CommandName="Delete"
					Text="删除流程"></asp:LinkButton>
			</ItemTemplate>
		</asp:TemplateField>
	</Columns>
	<PagerStyle HorizontalAlign="Center" Font-Bold="true" />
	<HeaderStyle Height="26px" />
</asp:GridView>
</form>
</body>
</html>