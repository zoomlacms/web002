<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.CollectionManage, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("M_CollectionManage_acquisiton")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span><%=lang.Get("M_SpecContent_manage")%> </span>&gt;&gt;<span> <%=lang.Get("M_CommentManage_system")%> </span>&gt;&gt; <span><a href="ContentManage.aspx"><%=lang.Get("M_SpecContent_content")%> 
 </a></span>&gt;&gt; <%=lang.Get("M_CollectionManage_acquisitonProjects")%>
</div>
<div class="clearbox">
</div>
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" height="26px" DataKeyNames="CItem_ID" PageSize="20" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowDataBound="Egv_RowDataBound">
	<Columns>
		<asp:TemplateField HeaderText="选择">
			<ItemTemplate>
				<asp:CheckBox ID="chkSel" runat="server" />
			</ItemTemplate>
			<HeaderStyle Width="4%" />
			<ItemStyle  HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:BoundField HeaderText="ID" DataField="CItem_ID">
			<HeaderStyle Width="5%" />
			<ItemStyle  HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:TemplateField HeaderText="项目名称">
			<ItemTemplate>
				<a href='CollectionStep1.aspx?Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>
					<%#DataBinder.Eval(Container.DataItem, "ItemName")%></a>
			</ItemTemplate>
			<HeaderStyle Width="30%" />
			<ItemStyle />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="网站名称">
			<ItemTemplate>
				<a href='<%#DataBinder.Eval(Container.DataItem,"CollUrl") %>' target="_blank">
					<%#DataBinder.Eval(Container.DataItem, "SiteName")%></a>
			</ItemTemplate>
			<HeaderStyle Width="10%" />
			<ItemStyle  HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="入库节点">
			<ItemTemplate>
				<%#GetNode(DataBinder.Eval(Container.DataItem, "NodeID").ToString())%>
			</ItemTemplate>
			<HeaderStyle Width="24%" />
			<ItemStyle HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="所属模型">
			<ItemTemplate>
				<%#GetMode(DataBinder.Eval(Container.DataItem, "ModeID").ToString())%>
			</ItemTemplate>
			<HeaderStyle Width="10%" />
			<ItemStyle  HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="操作">
			<ItemTemplate>
				&nbsp;<a href='CollectionStep1.aspx?Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>修改项目</a> | <a href='CollectionStep2.aspx?Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>修改列表</a>&nbsp;
				<br />
				&nbsp;<a href='CollectionStep3.aspx?Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>修改字段</a> |
				<asp:LinkButton ID="LinkButton4" runat="server" CommandName="Del" CommandArgument='<%# Eval("CItem_ID") %>' OnClientClick="return confirm('你确定将该数据删除吗？')" OnClick="LinkButton4_Click">删除项目</asp:LinkButton>&nbsp;
			</ItemTemplate>
			<ItemStyle HorizontalAlign="Center" />
		</asp:TemplateField>
	</Columns>
	<RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
	<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	<PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
	<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
	<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td>
			<asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)" runat="server" />
			<%--<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
	 OnClick=""    Text="全选" />--%>
			&nbsp;
			<asp:Button ID="btnDeleteAll" runat="server" style="width:110px;"  OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}" Text="批量删除" OnClick="btnDeleteAll_Click" class="C_input" />
		</td>
	</tr>
</table>
</form>
</body>
</html>