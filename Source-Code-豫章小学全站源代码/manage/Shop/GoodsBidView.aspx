
<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_GoodsBidView, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>促销方案管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 促销管理 &gt;&gt; <span><a href='GoodsBid.aspx'>竞拍商品列表</a></span>&gt;&gt; <span>竞拍商品出价</span>
	</div>
    <div class="clearbox"></div>    
    
              
       <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg">
          <td  align="center" class="title"><span class="tdbgleft">用户姓名</span></td>
        <td  align="center" class="title">
              出价时间</td>
        <td  align="center" class="title">
              竞拍价格</td>
        </tr>
        <asp:Repeater ID="Promotions" runat="server">       
        <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><%#GetName(Eval("UserID"))%></td>
          <td height="24" align="center"><%#Eval("AddTime")%></td>
          <td height="24" align="center"><%#Eval("PMoney")%></td>         
        </tr>  
        </ItemTemplate>
        
        
        </asp:Repeater>
        <tr class="tdbg">
          <td height="24" colspan="6" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条记录  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" 
                OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox> 条记录/页  转到第 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList> 页</td>
        </tr>
      </tbody>
    </table>
</form>
</body>