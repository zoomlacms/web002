<%@ page language="C#" autoeventwireup="true" inherits="User_SearchOrder, App_Web_cl0g4yzl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>购物订单管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="s_bright">
<div class="us_topinfo">

  <div class="us_showinfo">
	  <h1><span class="us_showinfo1">您好！</span>
      您现在的位置：<span id="YourPosition"><a title="购物订单管理" href="/User/ViewOrder.aspx">订单查询系统</a>
      </h1>
  </div>
  
	<div class="cleardiv"></div>
</div>
<!-- str -->

	  <div class="us_seta" style="margin-top:10px;">
      
		  <h1 style="text-align:center"><asp:Label ID="Label1" runat="server" Text="订单查询"></asp:Label></h1>
       
       <asp:Panel ID="souch" runat="server"  Width="100%" Visible="false">
       <ul style="width:100%;background-color:#FFF5EC">
       <li style="width:15%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            订单编号:
          </li>
          <li style="width:84%; float:left;line-height:30px; text-align:left; height: 30px;background-color:#FFF5EC">
            <asp:TextBox ID="orderno" autocomplete="off" runat="server"></asp:TextBox></li></ul>
       <ul style="width:100%;background-color:#FFF5EC">
         <li style="width:15%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            收货人姓名:
          </li>
          <li style="width:84%; float:left;line-height:30px; text-align:left; height: 29px;background-color:#FFF5EC">
            <asp:TextBox ID="username" autocomplete="off" runat="server"></asp:TextBox>
          </li>
       </ul>
        <ul style="width:100%;background-color:#FFF5EC">
         <li style="width:100%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
             <asp:Button ID="Button3" PostBackUrl="SearchOrder.aspx" runat="server" Text="搜索订单" OnClick="Button3_Click" />
          </li>
       </ul>
       <ul>
         <li style="width:100%; float:left;line-height:30px; text-align:left">
              说明：这里只能查询非会员的订单。订单编号和收货人姓名必须完全正确才能找得到如果您是会员，<br />请登陆后进入会员控制面板查询自己的订单。
          </li>
       </ul>
       
      

    </asp:Panel>
       
       <asp:Panel ID="Orderlist" runat="server"  Width="100%" Visible="false">
       <ul style="background-color:Blue">
          <li style="width:15.9%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            订单编号
          </li>
            <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            客户名称
          </li>
         <li style="width:10%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
           下单时间
          </li>
          <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
           订单金额
          </li>
           <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
           实际金额
          </li>
          <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            需要发票
          </li> 
          <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            已开发票 
          </li> 
          <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            订单状态 
          </li> 
          <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            付款状态 
          </li> 
          <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            物流状态 
          </li> 
           <li style="width:8.3%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
           操作
          </li>
       </ul>
           <asp:Repeater ID="Ordertable" runat="server">
           <ItemTemplate>
           <ul>
            <li style="width:15.9%; float:left;line-height:28px; text-align:left;text-overflow:ellipsis;white-space:nowrap;overflow:hidden">
            <a href="?menu=ViewOrderlist&id=<%#Eval("id") %>"><%#Eval("OrderNo")%></a>
          </li>
            <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
            <%#Eval("Reuser") %>
          </li>
         <li style="width:10%; float:left;line-height:28px; text-align:center;text-overflow:ellipsis;white-space:nowrap;overflow:hidden">
           <%#Eval("AddTime") %>
          </li>
          <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
           <%#formatcc(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0:N2}"))%>
          </li>
           <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
            <%#getshijiage(Eval("id", "{0}"))%>
          </li>
          <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
          <%#fapiao(DataBinder.Eval(Container,"DataItem.Invoiceneeds","{0}"))%>
          </li> 
          <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
           <%#fapiao(DataBinder.Eval(Container, "DataItem.Developedvotes","{0}")) %>
          </li> 
          <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
           <%#formatzt(DataBinder.Eval(Container, "DataItem.OrderStatus", "{0}"),"0")%>
          </li> 
          <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
            <%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"),"1")%>
          </li> 
          <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
           <%#formatzt(DataBinder.Eval(Container, "DataItem.StateLogistics", "{0}"),"2")%> 
          </li> 
          <li style="width:8.3%; float:left;line-height:28px; text-align:center;">
              <%#getbotton(Eval("id","{0}")) %>
          </li> 
       </ul>
       </ItemTemplate>
           </asp:Repeater>

    </asp:Panel>

    <asp:Panel ID="OrderProlist" runat="server"  Width="100%" Visible="false">
       <ul>
          <li style="width:24.6%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            商品名称
          </li>
            <li style="width:13.6%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            单位
          </li>
         <li style="width:13.6%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
           数量
          </li>
          <li style="width:16.6%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
            销售类型
          </li>
           <li style="width:13.6%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
           市场价
          </li>
          <li style="width:16.6%; float:left;line-height:30px; text-align:center;background-color:#FFF5EC">
           金额
          </li> 
       </ul>
           <asp:Repeater ID="OrderProview" runat="server">
           <ItemTemplate>
          <ul>
          <li style="width:24.6%; float:left;line-height:24px; text-align:center; text-overflow:ellipsis;white-space:nowrap;overflow:hidden">
           <%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%>
          </li>
            <li style="width:13.6%; float:left;line-height:24px; text-align:center">
          <%#Eval("proname")%>
          </li>
         <li style="width:13.6%; float:left;line-height:24px; text-align:center">
         <%#Eval("pronum") %>
          </li>
          <li style="width:16.6%; float:left;line-height:24px; text-align:center">
           <%#formatnewstype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
          </li>
           <li style="width:13.6%; float:left;line-height:24px; text-align:center">
           <%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
          </li>
          <li style="width:16.6%%; float:none;line-height:24px; text-align:center">
           <%#getprojia(DataBinder.Eval(Container, "DataItem.ID", "{0}"))%>
          </li> 
       </ul>
       </ItemTemplate>
       
           </asp:Repeater>
        <ul>
       <li style="width:98.5%; float:none;line-height:24px; text-align:left;background-color:#F7F7F7">
               合计：<asp:Label ID="ojiage" runat="server" Text=""></asp:Label> 元  
       </li>
       <li style="width:98.5%; float:none;line-height:24px; text-align:left;background-color:#F7F7F7">
               运费：<asp:Label ID="oyunfei" runat="server" Text=""></asp:Label> 元
       </li> 
        <li style="width:98.5%; float:none;line-height:24px; text-align:left;background-color:#F7F7F7">
               实际金额：<asp:Label ID="ojiages" runat="server" Text=""></asp:Label> + <asp:Label ID="cyunfei" runat="server" Text=""></asp:Label>＝<asp:Label ID="orderallpromoney" runat="server" Text=""></asp:Label> 元  
       </li> 
        <li style="width:98.5%; float:none;line-height:24px; text-align:left;background-color:#F7F7F7">
              已付款：<asp:Label ID="labelmoney" runat="server" Text=""></asp:Label> 元  
       </li> 
       </ul>
               <ul>
       <li style="width:98.5%; float:none;line-height:24px; text-align:center;">
           <asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button1_Click" />
       </li>

       </ul>
    </asp:Panel>
        </div>
</div>
</form>
</body>
</html>