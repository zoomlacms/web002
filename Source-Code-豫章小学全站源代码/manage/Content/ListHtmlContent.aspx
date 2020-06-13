<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ListHtmlContent, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>内容生成管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; <span><a href="ContentManage.aspx">内容管理</a></span> &gt;&gt;
	<span>
	<asp:Label ID="Label1" runat="server" Text="生成管理"></asp:Label></span>
</div>
<div class="clearbox">
</div>
<div class="divline" style="padding-left: 10px">
	<ul>
		<li><b>请选择排列顺序：</b>
		<asp:DropDownList ID="txtbyfilde" runat="server" OnSelectedIndexChanged="txtbyfilde_SelectedIndexChanged">
		</asp:DropDownList>
		<asp:DropDownList ID="txtbyOrder" runat="server" OnSelectedIndexChanged="txtbyOrder_SelectedIndexChanged">
		</asp:DropDownList></li>
		<li>
		   &nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
				<asp:ListItem Value="1">ID检索</asp:ListItem>
				<asp:ListItem Value="0">标题检索</asp:ListItem>
				<asp:ListItem Value="2">录入者检索</asp:ListItem>
			</asp:DropDownList>
			<asp:TextBox ID="TextBox1" class="l_input" runat="server"></asp:TextBox>
			<asp:Button ID="Button4" runat="server" Text="查找" OnClick="Button4_Click" class="C_input" />
		</li></ul>
</div>
<div class="clearbox">
</div>   
<asp:GridView ID="Egv" runat="server" AutoGenerateColumns="false"
	DataKeyNames="GeneralID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging"
	OnRowCommand="MakeHtmlGo" Width="100%" >
	<Columns>
		<asp:TemplateField>
		<HeaderTemplate>
		选择
		</HeaderTemplate>
			<ItemTemplate>
				<asp:CheckBox ID="chkSel" runat="server" />
			</ItemTemplate>
			<HeaderStyle Width="5%" />
			<ItemStyle  HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:BoundField HeaderText="ID" DataField="GeneralID">
			<HeaderStyle Width="5%" />
			<ItemStyle  HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:TemplateField>
		<HeaderTemplate>
		<a href="ListHtmlContent.aspx?orderby=title"><font color=green><b>标题</b></font></a>
		</HeaderTemplate>
			<ItemTemplate>
				<%# GetPic(Eval("ModelID", "{0}"))%> <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%>
			</ItemTemplate>
			<HeaderStyle Width="55%" />
			<ItemStyle />
		</asp:TemplateField>
		<asp:TemplateField>
		<HeaderTemplate>
		<a href="ListHtmlContent.aspx?orderby=Status"><font color="green"><b>状态</b></font></a>
		</HeaderTemplate>
			<ItemTemplate>
				<%# GetStatus(Eval("Status", "{0}")) %>
			</ItemTemplate>
			<HeaderStyle Width="10%" />
			<ItemStyle  HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="生成操作">
			<ItemTemplate>
				<%# GetCteate(Eval("IsCreate", "{0}"))%>
				<asp:LinkButton ID="LinkButton1" runat="server" CommandName="MakeHtml" CommandArgument='<%# Eval("GeneralID") %>' CausesValidation="false">生成文件</asp:LinkButton>
				|
				<%--<a href="ListHtmlContent.aspx?ContentID=<%# Eval("GeneralID") %>" target="_blank">查看文件</a>--%>
				<a href="<%#(geturl(Eval("GeneralID","{0}"))=="")?"javascript:void(0);":geturl(Eval("GeneralID","{0}"))%>">查看文件</a>
				|
				<a href="ListHtmlContent.aspx?GeneralID=<%# Eval("GeneralID") %>">删除文件</a>
			</ItemTemplate>
			<ItemStyle  HorizontalAlign="Center"/>
		</asp:TemplateField>
	</Columns>
	<RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
	<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	<PagerStyle ForeColor="#030E0E" HorizontalAlign="Center" />
	<PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText="" PreviousPageText="" Visible="False" />
	<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="25px" Font-Overline="False" BorderColor="White" />
   <%-- <PagerSettings Visible="False" />
	<RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
	<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	<PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
	<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
		Height="30px" Font-Overline="False" BorderColor="White" />--%>
	<%--<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
		NextPageText="下一页" PreviousPageText="上一页" />--%>
</asp:GridView>
<%# GetPic(Eval("ModelID", "{0}"))%>
	<div  style="text-align: center" class="tdbgleft" >
	<span  style=" text-align: center">共
		<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
		条数据
		<asp:Label ID="Toppage" runat="server" Text="" />
		<asp:Label ID="Nextpage" runat="server" Text="" />
		<asp:Label ID="Downpage" runat="server" Text="" />
		<asp:Label ID="Endpage" runat="server" Text="" />
		页次：
		<asp:Label ID="Nowpage" runat="server" Text="" />/
		<asp:Label ID="PageSize" runat="server" Text="" />页
		<asp:Label ID="pagess" runat="server" Text="" />
		<asp:TextBox ID="txtPage" runat="server" AutoPostBack="true"  ontextchanged="txtPage_TextChanged" Width="30px" class="C_input"></asp:TextBox>
		条数据/页 转到第
		<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList3_SelectedIndexChanged">
		</asp:DropDownList>
		页<asp:RangeValidator ID="RangeValidator1" runat="server"  ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" 
		MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
		</span>
</div>
<div class="clearbox">
</div>
<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
<asp:Button ID="btnAudit" style="width:100px;" class="C_input" CausesValidation="false" runat="server" Text="生成文件" 
	OnClientClick="if(!IsSelectedId()){alert('请选择生成项');return false;}else{return confirm('你确定要审核选中内容吗？')}" 
	onclick="btnAudit_Click" />&nbsp;
<asp:Button ID="btnUnAudit" style="width:100px;" CausesValidation="false" runat="server" Text="删除文件" class="C_input"    
	OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要取消审核选中内容吗？')}" 
	onclick="btnUnAudit_Click" />&nbsp;
<asp:HiddenField ID="HiddenNodeID" runat="server" />
</form>
</body>
</html>