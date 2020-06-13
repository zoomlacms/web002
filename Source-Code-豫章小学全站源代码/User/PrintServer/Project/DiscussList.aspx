<%@ page language="C#" autoeventwireup="true" inherits="User_Project_DiscussList, App_Web_ndk53ewn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>项目内容讨论列表</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="s_bright">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="内容讨论列表" href="/Project/DiscussList.aspx">内容讨论列表</a>
</div>
<div class="us_topinfo" style="margin-top:10px;"><a href="ProjectRequire.aspx">提交需求</a> <a href="ProjectList.aspx">我的项目</a></div>
<div style="margin-top:10px;">
	  <div class="us_seta" style="margin-top:5px;">
		<h1><div align="center"><asp:Label ID="LblTitle" runat="server" Text="项目内容详细信息" Font-Bold="True"></asp:Label></div></h1>
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right">项目名称：</div>
		  </li>
		<li style="width:83%;line-height:30px"><asp:Label ID="LblProName" runat="server" Text=""></asp:Label></li>
		
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right">内容名称：</div>
		  </li>
		<li style="width:83%;line-height:30px"><asp:Label ID="LblProIntro" runat="server" Text=""></asp:Label></li>
		<li style="width:100%; float:left;line-height:30px">
		  <div align="center">
		  </div>
		</li>
		<li style="width:100%; float:left;line-height:30px">
			<div align="center">
			</div>
		</li>
	  </div>
</div>
<div style="margin-top:10px;">
	  <div class="us_seta" style="margin-top:5px;">
		<h1><div align="center"><asp:Label ID="Label1" runat="server" Text="客户项目详细信息" Font-Bold="True"></asp:Label></div></h1>
		  <li style="width:100%; float:left;line-height:30px">
	 <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
	   DataKeyNames="DiscussID" ShowHeader="false" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" EmptyDataText="无相关讨论内容">
		<Columns>  
		<asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate>  
					<%#DataBinder.Eval(Container.DataItem, "DiscussID").ToString()%>                       
				</ItemTemplate>
				<ItemStyle CssClass="tdbg" HorizontalAlign="Left" />
			</asp:TemplateField>             
		   <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate>  
					<%#DataBinder.Eval(Container.DataItem, "DiscussDate").ToString()%> 
					<br />
				   <%#DataBinder.Eval(Container.DataItem, "Content").ToString()%> 
				</ItemTemplate>
				
				<ItemStyle CssClass="tdbg" HorizontalAlign="Left" />
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
		  <div align="center">
		  <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />&nbsp;&nbsp;
			<input name="Cancel" type="button" class="inputbutton" id="Cancel" value="取消" onclick="javascript:history.go(-1)" />
		  </div>
		</li>
		
		<li style="width:100%; float:left;line-height:30px">
			<div align="center">

			</div>
		</li>
	 
	 </div>
	 </div>
	 <div style="margin-top:10px;">
	  <div class="us_seta" style="margin-top:5px;">
	  
		<h1><div align="center"><asp:Label ID="Label3" runat="server" Text="发布讨论" Font-Bold="True"></asp:Label></div></h1>
		
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right">用户名：</div>
		  </li>
		  
		<li style="width:83%;line-height:30px"><asp:TextBox ID="TxtUserName" runat="server" ReadOnly="true"></asp:TextBox></li>
		
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right">讨论内容：</div>
		  </li>
		  
		<li style="width:83%;line-height:30px"><asp:TextBox ID="TxtDisContent" runat="server" TextMode="MultiLine" Rows="8" Columns="50"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtDisContent"
				runat="server" ErrorMessage="讨论内容不能为空！" Display="Dynamic"></asp:RequiredFieldValidator></li>
				   
<li style="width:100%; float:left;line-height:30px">
		  <div align="center">
		  <asp:Button ID="Button1" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />&nbsp;&nbsp;
			<input name="Cancel" type="button" class="inputbutton" id="Button2" value="取消" onclick="javascript:history.go(-1)" />
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