<%@ page language="C#" autoeventwireup="true" inherits="User_Project_ProjectList, App_Web_ndk53ewn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户项目列表</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server"> 
<div class="s_bright">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="用户项目列表" href="ProjectList.aspx">用户项目列表</a>
</div>
<div class="us_topinfo" style="margin-top:10px;"><a href="ProjectRequire.aspx">提交需求</a> <a href="ProjectList.aspx">我的项目</a></div>
<div style="margin-top:10px;">
  <div class="us_seta" style="margin-top:5px;">
	<h1><div align="center"><asp:Label ID="LblTitle" runat="server" Text="客户项目详细信息" Font-Bold="True"></asp:Label></div></h1>
	  <li style="width:100%; float:left;line-height:30px">
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="border"
   DataKeyNames="RequireID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" OnRowCommand="GridView1_RowCommand" EmptyDataText="无任何相关数据">
	<Columns>                         
		<asp:TemplateField HeaderText="项目ID" ItemStyle-HorizontalAlign="Center">
			<ItemTemplate>
				<%# DataBinder.Eval(Container.DataItem, "ProjectID").ToString()%>       
			</ItemTemplate>
			<HeaderStyle Width="10%" />
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:TemplateField>
		<asp:BoundField DataField="ProjectName" HeaderText="项目名称" ItemStyle-HorizontalAlign="Center">
			<HeaderStyle Width="20%" />
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:BoundField DataField="StartDate" HeaderText="开始时间" ItemStyle-HorizontalAlign="Center" >
			<HeaderStyle Width="16%" />
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:BoundField>
		  <asp:TemplateField HeaderText="进度" ItemStyle-HorizontalAlign="Center">
			<HeaderStyle Width="5%" />
			<ItemTemplate>
					<%# CountRate(Convert.ToInt32(Eval("ProjectID"))) %>
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	   </asp:TemplateField>
		<asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
			<ItemTemplate>                        
				<asp:LinkButton ID="LnkDelete"  runat="server" CommandName="DeleteUser" OnClientClick="if(!this.disabled) return confirm('确实要删除此会员吗？');"
					CommandArgument='<%# Eval("ProjectID")%>' OnClick="delete_Click" Visible="false">删除</asp:LinkButton>
				<asp:LinkButton ID="Lnk"  runat="server" CommandName="ShowDetail"
					CommandArgument='<%# Eval("ProjectID")%>'>详细内容</asp:LinkButton>
				
			  </ItemTemplate>
			  <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
		</asp:TemplateField>
	　</Columns>
	 <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
	<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	<PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
	<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
	<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>  
	  </li>
	<li style="width:100%; float:left;line-height:30px">
	  <div align="left">
	  <asp:DropDownList ID="DLType" runat="server">
<asp:ListItem Value="0" Text="按名称" Selected="True"></asp:ListItem>
<asp:ListItem Value="1" Text="按时间"></asp:ListItem>
<asp:ListItem Value="2" Text="按ID"></asp:ListItem>        
<asp:ListItem Value="3" Text="按描述"></asp:ListItem>    
</asp:DropDownList> <asp:TextBox runat="server" ID="SearchValue" Text="关键字"></asp:TextBox><asp:Button ID="Search" runat="server" Text="搜索" OnClick="Search_Click"/>
	  </div>
	</li>
	
	<li style="width:100%; float:left;line-height:30px">
		<div align="center">
    	</div>
	</li>
  </div>
</div>
</form>
</body>
</html>