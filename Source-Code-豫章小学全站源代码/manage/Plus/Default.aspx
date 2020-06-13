<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.GuestBook, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>留言列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;留言管理&gt;&gt;留言列表<%=cateName %></div>
<asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="GID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" EmptyDataText="无相关数据">
	<Columns>
		<asp:TemplateField HeaderText="选中">                            
			<ItemTemplate>
				<asp:CheckBox ID="chkSel" runat="server" />
			</ItemTemplate>
			<ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
			<HeaderStyle Width="5%" />
		</asp:TemplateField>
		<asp:BoundField DataField="GID" HeaderText="序号">
		<ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
		<HeaderStyle Width="5%" />
		</asp:BoundField>                                               
		<asp:TemplateField HeaderText="标题">
			<ItemTemplate>                                
			   <a href="GuestBookShow.aspx?GID=<%# Eval("GID")%>"><%# Eval("Title")%></a>
			</ItemTemplate>
			 <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
			 <HeaderStyle Width="20%" />
		</asp:TemplateField>
		<asp:TemplateField HeaderText="留言时间">
			<ItemTemplate>                                
			   <%#Eval("GDate") %>
			</ItemTemplate>
			 <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
			 <HeaderStyle Width="15%" />
		</asp:TemplateField>   
		<asp:TemplateField HeaderText="留言IP">
			<ItemTemplate>                                
			   <%#Eval("IP") %>
			</ItemTemplate>
			 <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
			 <HeaderStyle Width="10%" />
		</asp:TemplateField>                                                  
		<asp:TemplateField HeaderText="操作">                
		<ItemTemplate>                
			<asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("GID") %>' OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton> | 
			<asp:LinkButton ID="LinkButton3" runat="server" CommandName="QList" CommandArgument='<%# Eval("GID") %>'>留言内容</asp:LinkButton>
		</ItemTemplate>
		<ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
		<HeaderStyle Width="10%" />
		</asp:TemplateField>
	</Columns>
	 <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
	 <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	 <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
	 <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
	 <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />                
</asp:GridView>
<div class="clearbox"></div>           
<table  class="TableWrap"  border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
	<tr>
		<td style="height: 21px">                   
		  <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
				Text="全选" />
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="btndelete" runat="server" class="C_input" OnClientClick="return confirm('确定要删除选中的项目吗？')" Text="批量删除" OnClick="btndelete_Click" />                
			<asp:HiddenField ID="HdnCateID" runat="server" />
		</td>
	</tr>                
</table>
</form>
</body>
</html>