<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.FlowProcessManager, App_Web_0tiy15lx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>流程管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css"  type="text/css"  rel="stylesheet" />
</head>
<body>
<form id="myform" runat="server">
<div class="r_navigation">
	<span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<span><a href="FlowManager.aspx">流程管理</a></span>&gt;&gt;<span id="sp1" runat="server"></span>
</div>
<div class="clearbox">
</div>
<asp:ObjectDataSource ID="odsFlowProcess" runat="server" 
	SelectMethod="GetProcessByFlowId" TypeName="ZoomLa.BLL.B_Process" 
	DeleteMethod="DelProcessById">
	<DeleteParameters>
		<asp:Parameter Name="id" Type="Int32" />
	</DeleteParameters>
	<SelectParameters>
		<asp:QueryStringParameter Name="flowId" QueryStringField="id" Type="Int32" />
	</SelectParameters>
</asp:ObjectDataSource>
<div>
</div>
<asp:GridView ID="gwFlowProcess" runat="server" AllowPaging="True" 
	AllowSorting="True" AutoGenerateColumns="False"
	DataSourceID="odsFlowProcess" Width="100%" RowStyle-HorizontalAlign="Center"
	PageSize="20" onrowdatabound="gwFlowProcess_RowDataBound" DataKeyNames="id">
	<RowStyle HorizontalAlign="Center"  Height="20px"></RowStyle>
	<Columns>
		<asp:BoundField DataField="id" HeaderText="ID" />
		<asp:BoundField DataField="PName" HeaderText="流程步骤名称" />
		<asp:BoundField DataField="PDepcit" HeaderText="流程步骤描述" />
		<asp:BoundField DataField="PPassName" HeaderText="通过操作的操作名" />
		<asp:BoundField DataField="PNoPassName" HeaderText="打回操作的操作名" />
		<asp:TemplateField HeaderText="流程步骤操作 " ShowHeader="False">
			<ItemTemplate>
			<a href='ModifyProcess.aspx?id=<%#Eval("id") %>&flowId=<%#Eval("PFlowId") %>&flowname=<%=Request.QueryString["name"] %>'>修改流程步骤</a> |  
				<asp:LinkButton ID="lbDel" runat="server" CausesValidation="False" OnClientClick="{return confirm('你确定要将所有选择项删除吗？')}"
					CommandName="Delete" Text="删除流程步骤"></asp:LinkButton>
			</ItemTemplate>
		</asp:TemplateField>
	</Columns>
	<PagerStyle HorizontalAlign="Center" Font-Bold="true" />
    <HeaderStyle Height="26px" />
</asp:GridView>
<asp:Button runat="server" ID="button1" class="C_input" Text="添加步骤" onclick="button1_Click" OnClientClick="order(); return false;" />
    <script type="text/javascript">
       function order()
        {
            location.href = 'FlowProcess.aspx?id=<%=Request.QueryString["id"] %>&name=<%=Request.QueryString["name"] %>';
        }
    </script>
</form>
</body>
</html>