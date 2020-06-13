<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Payment, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>手机短信充值记录</title>
<link href="/App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link href="../css/default1.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/js/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; </span><span>手机短信充值记录</span></span></div>
<div class="clearbox"></div>
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PaymentID" PageSize="20" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%">
	<Columns>
		<asp:TemplateField HeaderText="选择">
			  <HeaderStyle Width="6%" />
			  <ItemTemplate>
				  <asp:CheckBox ID="chkSel" runat="server" />
			  </ItemTemplate>
			  <ItemStyle HorizontalAlign="Center" />                
		</asp:TemplateField>
		<asp:BoundField DataField="PaymentID" HeaderText="ID">
			<HeaderStyle Width="6%" />
			<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:BoundField DataField="PaymentNum" HeaderText="支付序号">
			<HeaderStyle Width="10%" />
			<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:BoundField DataField="PayPlatName" HeaderText="支付平台">
			<HeaderStyle Width="10%" />
			<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:BoundField DataField="MoneyPay" HeaderText="金额">
			<HeaderStyle Width="6%" />
			<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:BoundField DataField="MoneyTrue" HeaderText="实际金额">
			<HeaderStyle Width="6%" />
			<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:TemplateField HeaderText="交易状态">
			<HeaderStyle Width="6%" />
			<ItemTemplate>  
				<%# GetStatus(Eval("Status","{0}"))%>
			</ItemTemplate>
			<ItemStyle HorizontalAlign="Center" />            
		</asp:TemplateField>
		<asp:TemplateField HeaderText="处理结果">
			<HeaderStyle Width="6%" />
			<ItemTemplate>  
				<%# GetCStatus(Eval("CStatus","{0}"))%>    
			</ItemTemplate>
			<ItemStyle HorizontalAlign="Center" />            
		</asp:TemplateField>
		<asp:BoundField DataField="PlatformInfo" HeaderText="平台反馈">
			<HeaderStyle Width="10%" />
			<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>            
		<asp:TemplateField HeaderText="操作" >
			<ItemTemplate>                     
				<asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("PaymentID") %>' OnClientClick="return confirm('你确定将该数据删除吗？')">删除</asp:LinkButton>
			  </ItemTemplate>
			<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
	</Columns>
	<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
	<RowStyle BackColor="#e0f7e5" Height="25px" />
	<EditRowStyle BackColor="#2461BF" />
	<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
	<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
	<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
	<AlternatingRowStyle BackColor="White" />
	<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>
<div style="padding-top: 5px;">
		<table width="100%" cellpadding="5" cellspacing="0" class="border">
			<tr class="tdbg">
				<td>
					<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="选中本页显示的所有项目" />
					<asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"
		OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}" CssClass="button" UseSubmitBehavior="true" />
				</td>
			</tr>
		</table>
	</div> 
</form>
</body>
</html>