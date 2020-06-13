<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_ChangeProduct, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<title>变更商品</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<head id="Head1" runat="server">
</head>
  <script language="javascript">
      function CheckAll(spanChk)//CheckBox全选
      {
          var oItem = spanChk.children;
          var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
          xState = theBox.checked;
          elm = theBox.form.elements;
          for (i = 0; i < elm.length; i++)
              if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
              if (elm[i].checked != xState)
                  elm[i].click();
          }
      }
    </script>
<body>
<form id="form1" runat="server">

<asp:HiddenField ID="HiddenUserID" runat="server" />
  <asp:HiddenField ID="HiddenPUserID" runat="server" />
<asp:HiddenField ID="HiddenMenu" runat="server" />
<asp:HiddenField ID="HiddenLock" runat="server" />
<asp:HiddenField ID="HiddenLock2" runat="server" />
 <asp:HiddenField ID="user1Change" runat="server" />
<asp:HiddenField ID="user2Change" runat="server" />
  <asp:HiddenField ID="HiddenExID" runat="server" />
	  <asp:HiddenField ID="HiddenExState" runat="server" />
	  <table cellpadding="0" cellspacing="0" border="0" width="950" align=center><tr><td>
	  
		 <div style="width:950px;  margin-left: auto; margin-right:auto; margin-top:50px;">
		<div class="r_navigation">
	
  <span>商品交换</span> &gt;&gt; <span>申请交换方</span> &gt;&gt; <span>User1</span></div>
	   </div>
<div style="width:950px;  margin-left: auto; margin-right:auto; margin-top:8px;background:url(/Images/jian.jpg) 445px 200px no-repeat;">
<div style="float:left; width:430px;padding:3px;border: 1px solid #9bbde6; ">
<div class="border" style="margin-top:8px; margin-bottom:5px">
 &nbsp;&nbsp;
	<span>申请方所拥有的商品</span> &gt;&gt; <span><asp:Label ID="LabelU1" runat="server" Text=""></asp:Label></span></div>
<asp:GridView ID="GridView1" DataKeyNames="ID" Width="100%" runat="server" AllowPaging="True" PageSize="10" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" EmptyDataText="暂无数据"  OnPageIndexChanging="Egv_PageIndexChanging">
						<Columns>
						   　<asp:TemplateField HeaderText="选择交换商品"  >
			  <HeaderStyle Width="15%" HorizontalAlign="Center" />
			  <ItemTemplate>
				  <asp:CheckBox ID="chkSel1" runat="server" />
			  </ItemTemplate>
				<ItemStyle HorizontalAlign="Center" CssClass="tdbg"/>
		 
		</asp:TemplateField> 
							<asp:TemplateField HeaderText="编号" ItemStyle-Width="12%">
								<ItemTemplate>
								 
									<asp:Label ID="Label1a" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
								</ItemTemplate>
								 <ItemStyle HorizontalAlign="Center" CssClass="tdbg"/>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="商品名称" ItemStyle-Width="20%">   
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>                     
									<asp:Label ID="Label2a" runat="server" Text='<%# Bind("Proname") %>'></asp:Label>
								</ItemTemplate>
								<HeaderStyle Width="50%" />
							</asp:TemplateField>
							<asp:TemplateField HeaderText="价格">
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									<asp:Label ID="Label3a" runat="server" Text='<%# Bind("LinPrice") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
					
						  
						</Columns>
						  <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
					</asp:GridView>
					 <div class="border" style=" margin-top:8px;text-align:center" >
	
   &nbsp;&nbsp;&nbsp;
  <asp:Button ID="Button3" runat="server" Text="添加商品" 
	 onclick="Button1_Click" />
	
	</div>
<div class="border" style="margin-top:8px;">
   &nbsp;&nbsp;  <span>申请交换方所交换商品</span> &gt;&gt; <span><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span><asp:Label
	  ID="Label1" runat="server" Text=""></asp:Label>	</div>
<div style="width:100%;margin: 0 auto;margin-top:8px;">
<asp:GridView ID="GridView2" DataKeyNames="P_ID" Width="100%" runat="server" AutoGenerateColumns="False" OnRowCommand="Lnk_Click" >
						<Columns>
							<asp:TemplateField ItemStyle-Width="10%">
								<ItemTemplate>
									<asp:CheckBox ID="chkSel2" runat="server"  />
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="编号" ItemStyle-Width="8%">
								<ItemTemplate>                                 
									<asp:Label ID="Label2a" runat="server" Text='<%# Bind("prodID") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
						 
							<asp:TemplateField HeaderText="商品名称">
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									<asp:Label ID="Label2b" runat="server" Text='<%# Bind("prodName") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
						
							<asp:TemplateField HeaderText="价格" ItemStyle-Width="15%">
								<ItemTemplate>
								  
					<asp:Label ID="Label2c" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
								</ItemTemplate>
								<ItemStyle HorizontalAlign="Center" />
							</asp:TemplateField>
							   <asp:TemplateField HeaderText="数量" ItemStyle-Width="15%">
								<EditItemTemplate>
									<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Num") %>' Width="20px"></asp:TextBox>
									<asp:Button ID="Button5" runat="server" Text="提 交" OnClick="Button5_Click" UseSubmitBehavior="False" />
								</EditItemTemplate>
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton2" ToolTip="点击校正修改邮址" runat="server" OnClick="LinkButton2_Click"><%#DataBinder.Eval(Container.DataItem, "Num")%></asp:LinkButton>
								</ItemTemplate>
								<HeaderStyle Width="280px" />
							</asp:TemplateField>
						   
							 <asp:TemplateField HeaderText="数量" ItemStyle-Width="12%">
						 
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
								   <asp:LinkButton ID="LinkButton3" runat="server"  CommandName="Del" CommandArgument='<%# Eval("P_ID") %>'  OnClientClick="return confirm('你确定将该数据彻底删除吗？')">删除</asp:LinkButton> 
								</ItemTemplate>
								
							</asp:TemplateField>
						</Columns>
					</asp:GridView>
</div>
<div id="User1" runat="server">
<div class="border" style=" margin-top:8px;" >
 &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="LinkUser1" runat="server" onclick="LinkUser1_Click">同意交换</asp:LinkButton>&nbsp;&nbsp;&nbsp;
  <asp:LinkButton ID="LinkUser2" runat="server" onclick="LinkUser2_Click">拒绝交换</asp:LinkButton>&nbsp;&nbsp;&nbsp;
  <asp:LinkButton ID="LinkUser3" runat="server" onclick="LinkUser3_Click">锁定商品</asp:LinkButton>&nbsp;&nbsp;&nbsp;
  <asp:LinkButton ID="LinkUser4" runat="server" onclick="LinkUser4_Click">解除锁定</asp:LinkButton>&nbsp;&nbsp;&nbsp;
  <asp:LinkButton ID="LinkUser5" runat="server" onclick="Button1_Click" UseSubmitBehavior="False">添加商品</asp:LinkButton>	</div>
  
	
</div>    
</div>

<div style="float:right; width:430px;padding:3px;border: 1px solid #9bbde6;  ">
<div class="border" style="margin-top:8px; margin-bottom:5px">
 &nbsp;&nbsp;
	<span>被申请方所拥有的商品</span> &gt;&gt; <span><asp:Label ID="LabelU2" runat="server" Text=""></asp:Label></span></div>
<asp:GridView ID="GridView3" DataKeyNames="ID" Width="100%" runat="server" AllowPaging="True" PageSize="10" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" EmptyDataText="暂无数据"  OnPageIndexChanging="GridView3_PageIndexChanging">
						<Columns>
						   　<asp:TemplateField HeaderText="选择交换商品"  >
			  <HeaderStyle Width="15%" HorizontalAlign="Center" />
			  <ItemTemplate>
				  <asp:CheckBox ID="chkSel3" runat="server" />
			  </ItemTemplate>
				<ItemStyle HorizontalAlign="Center" CssClass="tdbg"/>
		 
		</asp:TemplateField> 
							<asp:TemplateField HeaderText="编号" ItemStyle-Width="12%">
								<ItemTemplate>
								 
									<asp:Label ID="Label1a" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
								</ItemTemplate>
								 <ItemStyle HorizontalAlign="Center" CssClass="tdbg"/>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="商品名称" ItemStyle-Width="20%">   
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>                     
									<asp:Label ID="Label2a" runat="server" Text='<%# Bind("Proname") %>'></asp:Label>
								</ItemTemplate>
								<HeaderStyle Width="50%" />
							</asp:TemplateField>
							<asp:TemplateField HeaderText="价格">
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									<asp:Label ID="Label3a" runat="server" Text='<%# Bind("LinPrice") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
					
						  
						</Columns>
						  <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
					</asp:GridView>
					 <div class="border" style=" margin-top:8px; text-align:center " id="Div4" runat="server">
	
   &nbsp;&nbsp;&nbsp;
	<asp:Button ID="Button4" runat="server" Text="添加商品" 
	 onclick="Button1_Click" />
	
	</div>
<div class="border" style="margin-top:8px;">
  &nbsp;&nbsp;<span>被交换方交换商品</span> &gt;&gt; <span><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></span>	
	<asp:Label ID="Label2" runat="server"></asp:Label>
</div>
	<div style="width:100%;margin: 0 auto;margin-top:8px; border:1px solid #9BBDE6">
<asp:GridView ID="GridView4" DataKeyNames="P_ID" Width="100%" runat="server" AutoGenerateColumns="False"  OnRowCommand="Lnk_Click2">
						<Columns>
							<asp:TemplateField ItemStyle-Width="10%">
								<ItemTemplate>
									<asp:CheckBox ID="chkSel2" runat="server"  />
								</ItemTemplate>           
							</asp:TemplateField>
							<asp:TemplateField HeaderText="编号" ItemStyle-Width="8%">
								<ItemTemplate>                                 
									<asp:Label ID="Label2a" runat="server" Text='<%# Bind("prodID") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
						 
							<asp:TemplateField HeaderText="商品名称">
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									<asp:Label ID="Label2b" runat="server" Text='<%# Bind("prodName") %>'></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
						
							<asp:TemplateField HeaderText="价格" ItemStyle-Width="15%">
								<ItemTemplate>
								  
					<asp:Label ID="Label2c" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
								</ItemTemplate>
								<ItemStyle HorizontalAlign="Center" />
							</asp:TemplateField>
							   <asp:TemplateField HeaderText="数量" ItemStyle-Width="15%">
								<EditItemTemplate>
									<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Num") %>' Width="20px"></asp:TextBox>
									<asp:Button ID="Button5" runat="server" Text="提 交" OnClick="Button6_Click" UseSubmitBehavior="False" />
								</EditItemTemplate>
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									<asp:LinkButton ID="LinkButton2" ToolTip="点击校正修改邮址" runat="server" OnClick="LinkButton4_Click"><%#DataBinder.Eval(Container.DataItem, "Num")%></asp:LinkButton>
								</ItemTemplate>
								<HeaderStyle Width="280px" />
							</asp:TemplateField>
						   
							 <asp:TemplateField HeaderText="数量" ItemStyle-Width="12%">
						 
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
								   <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("P_ID") %>'  OnClientClick="return confirm('你确定将该数据彻底删除吗？')">删除</asp:LinkButton> 
								</ItemTemplate>
								
							</asp:TemplateField>
						</Columns>
					</asp:GridView>

 

</div>
<div id="PUser1" runat="server">
<div class="border" style=" margin-top:8px;" >
 &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="LinkPUser1" runat="server" onclick="LinkPUser1_Click">同意交换</asp:LinkButton>&nbsp;&nbsp;&nbsp;
  <asp:LinkButton ID="LinkPUser2" runat="server" onclick="LinkPUser2_Click">拒绝交换</asp:LinkButton>&nbsp;&nbsp;&nbsp;
  <asp:LinkButton ID="LinkPUser3" runat="server" onclick="LinkPUser3_Click">锁定商品</asp:LinkButton>&nbsp;&nbsp;&nbsp;
  <asp:LinkButton ID="LinkPUser4" runat="server" onclick="LinkPUser4_Click">解除锁定</asp:LinkButton>&nbsp;&nbsp;&nbsp;
  <asp:LinkButton ID="LinkPUser5" runat="server" onclick="Button1_Click" UseSubmitBehavior="False">添加商品</asp:LinkButton>	
  </div>
  
	</div>
</div>
</div>

<div style=" clear:both"></div>
<div class="border" style=" margin-top:8px;" id="Div1" runat="server">
			
	<asp:Label ID="LabelUser1" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
	<asp:Label ID="LabelUser2" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
	<asp:Label ID="LabelUser3" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
	<asp:Label ID="LabelUser4" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;	  	
	</div>
	
	  <div class="border" style=" margin-top:8px;" id="Div2" runat="server">
	
	
	<asp:Label ID="LabelPUser1" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
	<asp:Label ID="LabelPUser2" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
	<asp:Label ID="LabelPUser3" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
	<asp:Label ID="LabelPUser4" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
	
	</div>
	
		<div style="width:950px;  margin-left: auto; margin-right:auto; margin-top:15px;">
		<div class="r_navigation">
	
  <span>商品交换</span> &gt;&gt; 聊天信息</div>
	   </div>
	   <asp:Repeater ID="Repeater1" runat="server"  >
				<ItemTemplate>
	   <div style="width:950px;  margin-left: auto; margin-right:auto; margin-top:5px; ">
		<div class="border" style=" padding:15px;">
	
  <span><%# getname(Eval("UserID"))%>说：</span> <br />
 <%#Eval("TContent")%>
	  </div>
	   </div> 
		  </ItemTemplate>
			</asp:Repeater>
			 <div style="width:950px;  margin-left: auto; margin-right:auto; margin-top:10px; ">
		<div class="border" >
	
  共
	<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
	个商品
	<asp:Label ID="Toppage" runat="server" Text="" />
	<asp:Label ID="Nextpage" runat="server" Text="" />
	<asp:Label ID="Downpage" runat="server" Text="" />
	<asp:Label ID="Endpage" runat="server" Text="" />
	页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
		Text="" />页
	<asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
		runat="server" AutoPostBack="True">
	</asp:DropDownList>
	页
	  </div>
	  <div> 
	  <div style="margin-top:10px; ">
		  <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" 
			  Width="604px"></asp:TextBox>
		  <asp:Button ID="Button1" runat="server" Text="提交信息" onclick="Button1_Click1" />
		</div>
				 </div>
	  </td></tr></table>
	  
</form>
</body>
</html>