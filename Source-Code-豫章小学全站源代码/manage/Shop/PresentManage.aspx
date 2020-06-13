<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.PresentManage, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>促销商品管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 促销管理 &gt;&gt; <span>促销商品管理</span>
	</div>
    <div class="clearbox"></div>  
    
      <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg">
          <td width="44" height="24" align="center" class="title"><span class="tdbgleft">
            <asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)"  runat="server" />            
          </span></td>
        <td width="214" align="center" class="title">
              促销礼品名称</td>
          <td width="113" align="center" class="title">
              单位</td>
          <td width="130" align="center" class="title"><span class="tdbgleft">价格</span></td>
        <td width="120" align="center" class="title">
              服务期限</td>
          <td width="100" align="center" class="title"><span class="tdbgleft">库存量</span></td>
          <td width="137" align="center" class="title"><span class="tdbgleft">报警下限</span></td>
            <td width="94" align="center" class="title">
                <span class="tdbgleft"></span><span class="tdbgleft">操作</span></td>
        </tr>  
        <asp:Repeater ID="Presetlist" runat="server">
        <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><input name="Item" type="checkbox" value='<%# Eval("id")%>'/>  </td>
          <td height="24" align="center"><%#Eval("Prename")%></td>
          <td height="24" align="center"><%#Eval("ProUnit")%></td>
          <td height="24" align="left">
          <%# getformat(DataBinder.Eval(Container, "DataItem.ShiPrice","{0:N2}"),DataBinder.Eval(Container,"DataItem.Linprice","{0:N2}"))%>
          </td>
          <td height="24" align="center"><%#Eval("ServerPeriod")%></td>
          <td height="24" align="center"><%#Eval("Stock") %></td>
          <td height="24" align="center"><%#Eval("StockDown") %></td>
          <td height="24" align="center">&nbsp; &nbsp;<a href="AddPresent.aspx?menu=edit&id=<%#Eval("id") %>"">修改</a> <a href="?menu=del&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" >删除</a></td>
        </tr> 
        </ItemTemplate>      
        </asp:Repeater>
               <tr class="tdbg">
          <td height="24" colspan="12" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条记录  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条记录/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
        <tr>
          <td height="24" colspan="12"><asp:Button ID="Button1" class="C_input"  style="width:150px;" Text="删除选中的促销礼品"  OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"  runat="server" OnClick="Button1_Click" /></td>
        </tr>
      </tbody>
    </table>
</form>
</body>
</html>