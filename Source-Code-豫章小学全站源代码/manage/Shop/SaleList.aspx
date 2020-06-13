<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.SaleList, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>销售明细</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript">
        function getinfo(Orderlistid) {
            location.href = 'Orderlistinfo.aspx?id=' + Orderlistid;
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 明细记录 &gt;&gt; <span>销售明细</span>
	</div>
    <div class="clearbox"></div>    
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">

      <tbody id="Tabs" >

        <tr class="tdbg">
          <td width="34%" height="24" align="center" class="title">快速查找：
          <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
              <asp:ListItem Selected="True" Value="1">所有销售记录</asp:ListItem>
              <asp:ListItem Value="2">今天销售明细</asp:ListItem>
              <asp:ListItem Value="3">本周销售明细</asp:ListItem>
              <asp:ListItem Value="4">本月销售明细</asp:ListItem>
          </asp:DropDownList></td>
          <td width="66%" align="center" class="title">高级查询：
          <asp:DropDownList ID="souchtable" runat="server">
              <asp:ListItem Selected="True" Value="Reuser">客户名称</asp:ListItem>
              <asp:ListItem Value="Username">用户名称</asp:ListItem>
              <asp:ListItem Value="Proname">商品名称</asp:ListItem>
              <asp:ListItem Value="AddTime">下单时间</asp:ListItem>
              <asp:ListItem Value="OrderNo">订单编号</asp:ListItem>
          </asp:DropDownList>
          <asp:TextBox ID="souchkey" runat="server" class="l_input" />
          <asp:Button ID="souchok" runat="server" class="C_input" Text=" 搜索 " /></td>
        </tr>
      </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg">
          <td width="133" height="24" align="center" class="title"><span class="tdbgleft">下单时间</span></td>
          <td width="140" align="center" class="title"><span class="tdbgleft">订单编号</span></td>
          <td width="84" align="center" class="title"><span class="tdbgleft">客户名称</span></td>
          <td width="66" align="center" class="title"><span class="tdbgleft">用户名称</span></td>
          <td width="53" align="center" class="title"><span class="tdbgleft">商品名称</span></td>
          <td width="33" align="center" class="title"><span class="tdbgleft">单位</span></td>
          <td width="34" align="center" class="title"><span class="tdbgleft">数量</span></td>
          <td width="78" align="center" class="title"><span class="tdbgleft">市场价</span></td>
          <td width="51" align="center" class="title"><span class="tdbgleft">指定价</span></td>
          <td width="66" align="center" class="title"><span class="tdbgleft">金额</span></td>
        </tr>
          <asp:Repeater ID="salelistpage" runat="server">
          <ItemTemplate>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" ondblclick="getinfo(this.id)" id="<%#Eval("Orderlistid") %>">
          <td height="24" align="center"><%#getordertime(Eval("Orderlistid", "{0}"))%></td>
          <td height="24" align="center"><a href="Orderlistinfo.aspx?id=<%#Eval("Orderlistid","{0}")%>"><%#GetOrder(Eval("Orderlistid","{0}"))%></a></td>
          <td height="24" align="center"><%#GetOrderiuser(Eval("Orderlistid","{0}"))%></td>
          <td height="24" align="center"><%#Eval("Username","{0}") %></td>
          <td height="24" align="center"><%#Eval("proname","{0}") %></td>
          <td height="24" align="right" ><%#Eval("Danwei","{0}") %></td>
          <td height="24" align="center"><%#Eval("Pronum","{0}") %></td>
          <td height="24" align="center"><%#string.Format("{0:c}", getpromoney(Eval("ProID","{0}")))%></td>
          <td height="24" align="center"><%#Eval("Shijia","{0:c}")%></td>
          <td height="24" align="right"><%#Eval("AllMoney","{0:c}") %></td>
        </tr>
          </ItemTemplate>
          </asp:Repeater>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" colspan="9" align="right">总计金额：</td>
          <td height="24" align="right">
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        </tr>
        
        <tr class="tdbg">
<td height="22" colspan="10" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条记录  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条记录/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
      </tbody>
    </table>
</form>
</body>
</html>