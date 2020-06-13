<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_GoodsBid, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
		
		<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 促销管理 &gt;&gt; <span>竞拍商品列表</span>
	</div>
    <div class="clearbox"></div>    
    
              
       <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg">
          <td width="10%"  align="center" class="title"><span class="tdbgleft">ID</span></td>
        <td width="20%" align="center" class="title">
              商品名称</td>
        <td width="10%" align="center" class="title">
              竞拍人数</td>
          <td width="10%" align="center" class="title">
              竞拍状态</td>
              <td width="20%" align="center" class="title"> 
              竞拍时间</td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">操作</span></td>
        </tr>
        <asp:Repeater ID="Promotions" runat="server">       
        <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><%#Eval("ProID")%></td>
          <td height="24" align="center"><%#GetName(Eval("ProID"))%></td>
          <td height="24" align="center">
          <%#GetCount(Eval("ProID"))%>
          </td>
          <td height="24" align="center">
          <%#GetState(Eval("ProID"))%>
          </td>
          <td height="24" align="center">
          <%#GetTime(Eval("ProID"))%>
          </td>
          <td height="24" align="center">&nbsp;<a href="GoodsBidView.aspx?id=<%#Eval("ProID") %>">查看</a></td>
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
</html>
