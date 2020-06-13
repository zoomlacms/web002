<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_ShopScutcheon, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>品牌管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 店铺设置 &gt;&gt; <span>品牌管理 </span>&nbsp;&nbsp;<a href="AddShopBrand.aspx">[添加品牌]</a></div>
    <div class="clearbox"></div>    
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg">
          <td width="105" height="24" align="center" class="title"><span class="tdbgleft">
          <asp:CheckBox ID="CheckBox1"  runat="server"/>            
          </span></td>
      <td width="253" align="center" class="title">
            品牌名称</td>
        <td width="81" align="center" class="title">
              品牌分类</td>
    <td width="51" align="center" class="title">
            已启用</td>
          <td width="75" align="center" class="title"><span class="tdbgleft">属性</span></td>
      <td width="304" align="center" class="title">
                <span class="tdbgleft"></span><span class="tdbgleft">操作</span></td>
        </tr>
          <asp:Repeater ID="Trademarklist" runat="server">
          <ItemTemplate>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><input type="checkbox" name="Item" value="<%#Eval("id") %>" /></td>
          <td height="24" align="center"><%#Eval("Trname") %></td>
          <td height="24" align="center"><%#Eval("TrClass")%></td>
          <td height="24" align="center" class="segtext"><%#showstop2(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></td>
          <td height="24" align="center" class="segtext"><%#showtop2(DataBinder.Eval(Container, "DataItem.id", "{0}"))%> <%#showjian2(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></td>
          <td height="24" align="center">&nbsp; <a href="AddShopBrand.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <%#showstop(DataBinder.Eval(Container, "DataItem.id", "{0}"))%> <%#showtop(DataBinder.Eval(Container, "DataItem.id", "{0}"))%> <%#showjian(DataBinder.Eval(Container, "DataItem.id", "{0}"))%> <a href="?menu=delete&id=<%#Eval("id") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
        </tr>  
          </ItemTemplate>
          </asp:Repeater>
              
        <tr class="tdbg">
          <td height="24" colspan="6" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条数据  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条数据/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
        <tr>
          <td height="24" colspan="6"><asp:Button ID="Button1" class="C_input"  style="width:110px;"  Text="删除选中品牌" runat="server" OnClick="Button1_Click" /></td>
        </tr>
      </tbody>
    </table>
</form>
</body>
</html>