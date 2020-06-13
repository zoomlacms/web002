<%@ page language="C#" autoeventwireup="true" inherits="User_Info_userCarInfo, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<head runat="server">
<title>订单列表</title>
</head>
<body>
    <div style=" text-align:center">
		  <div class="us_seta" style="margin-top:10px; Width:800px">
			  <h1 style="text-align:center"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h1>
      <asp:Panel ID="OrderProlist" runat="server"  Width="800" >
           <ul style=" margin-top:15px;">
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
               <%#Gettypes(Eval("ProID","{0}"))%><%#DataBinder.Eval(Container, "DataItem.proname", "{0}")%>
              </li>
                <li style="width:13.6%; float:left;line-height:24px; text-align:center">
              <%#Eval("Danwei")%>
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
               <asp:Button ID="Button1" OnClientClick="javascript:history.go(-1);return false;" runat="server" Text="返回" />
           </li>
           </ul>
        </asp:Panel>
        </div>
    </div>
</body>
</html>