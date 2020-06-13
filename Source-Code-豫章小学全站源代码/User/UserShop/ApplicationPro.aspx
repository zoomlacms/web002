<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_ApplicationPro, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<head id="Head1" runat="server">
<title>商品交换</title>
</head>
<script language="javascript">
function CheckAll(spanChk)//CheckBox全选
{
var oItem = spanChk.children;
var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
xState=theBox.checked;
elm=theBox.form.elements;
for(i=0;i<elm.length;i++)
if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
{
	if(elm[i].checked!=xState)
	elm[i].click();
}
}
</script>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="HiddenUserID" runat="server" />
      <asp:HiddenField ID="HiddenPUserID" runat="server" />
         <div style="width:950px;  margin-left: auto; margin-right:auto; margin-top:50px;">
         <div class="r_navigation">
	  <span>商品交换</span> </div>
           </div>
  <div style="width:950px;  margin-left: auto; margin-right:auto; margin-top:8px;background:url(/Images/jian.jpg) 445px 130px no-repeat;">
<div style="float:left; width:430px; padding:3px;border: 1px solid #9bbde6;">
<div class="border" style="margin-top:8px; margin-bottom:5px;">
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
<asp:Button ID="Button3" runat="server" Text="添加商品" onclick="Button3_Click" />
</div>
 <div class="border" style="margin-top:5px;">
	 &nbsp;&nbsp; <span>你要交换的商品</span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>	</div>
<div style="width:100%;margin: 0 auto;margin-top:8px; border:1px solid #9BBDE6">
  <asp:GridView ID="GridView2" DataKeyNames="prodID" Width="100%" runat="server" AutoGenerateColumns="False" >
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
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"  OnClientClick="return confirm('你确定将该数据彻底删除吗？')">删除</asp:LinkButton> 
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
   </asp:GridView>
</div>
</div>
<div style="float:right; width:430px;padding:3px;border: 1px solid #9bbde6; ">
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
<div class="border" style=" margin-top:8px;text-align:center" >
       &nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button4" runat="server" Text="添加商品" onclick="Button4_Click" 
          />
</div>
 <div class="border" style="margin-top:5px;">
		&nbsp;&nbsp;
	  <span>你想要交换的商品</span>
      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
 </div>
 <div style="width:100%;margin: 0 auto;margin-top:8px; border:1px solid #9BBDE6">
   <asp:GridView ID="GridView4" DataKeyNames="prodID" Width="100%" runat="server" AutoGenerateColumns="False" >
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
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton5_Click"  OnClientClick="return confirm('你确定将该数据彻底删除吗？')">删除</asp:LinkButton> 
                </ItemTemplate>    
            </asp:TemplateField>
        </Columns>
   </asp:GridView>
</div>
</div>
</div>
<div style=" clear:both"></div>
<div style=" text-align:center">
<asp:Button ID="Button2" runat="server" Text="提交申请" UseSubmitBehavior="False" onclick="Button2_Click"  />
&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Text="交谈是否可见" />
</div>
<div style=" clear:both"></div>
<br /> <br /> <br />
</form>
</body>
</html>