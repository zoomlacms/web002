<%@ page language="C#" autoeventwireup="true" inherits="User_Info_listprofit, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="us_topinfo">
			您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName"  runat="server" Text="Label"></asp:Label></a></span>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt; <a href="UserInfo.aspx">账户管理</a> &gt;&gt; 我的收益信息</span>
</div>
<div class="us_seta" style="margin-top: 10px; float:left; width:100%" id="manageinfos" runat="server">
	<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
</div>
 <div class="us_seta" style="margin-top: 10px; width:100%; float:left" id="Div1" runat="server">
	<asp:Label ID="Label2" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
	 <asp:Label ID="Label3" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
	 <asp:Label ID="Label4" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
	 <asp:Label ID="Label5" runat="server" ></asp:Label>
</div>
    <div class="us_seta" style="margin-top: 10px; float:left; width:100%" id="manageinfo" runat="server">
        <h1 style="text-align: center">
            收益信息</h1>
        <div style=" text-align:center; vertical-align:middle;">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
<br />  
               <asp:Label ID="Label1" runat="server" Text="您还没有收益信息"></asp:Label><br /><br />                
                </asp:View>
                
                <asp:View ID="View2" runat="server">
              
             <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="10%" class="title">VIP卡号</td>
        <td width="20%" class="title">下单时间</td>
        <td width="15%" class="title">订单编号</td>     
        <td width="10%" class="title"> 成交额</td>  
        <td width="10%" class="title"> 应提成</td>
        <td width="10%" class="title"> 付款状态</td>
        <td width="10%" class="title"> 物流状态</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onMouseOver="this.className='tdbgmouseover'" onMouseOut="this.className='tdbg'">
        <td height="22" align="center"><%# Eval("cardnum")%></td>
        <td height="22" align="center"><%# Eval("AddTime")%></td>
        <td height="22" align="center"><a href="carinfo.aspx?id=<%# Eval("id")%>" target="_blank"><%# Eval("OrderNo")%></a></td>
        <td height="22" align="center"><%# Eval("Ordersamount")%>
        <td height="22" align="center"><%#gomoney(DataBinder.Eval(Container, "DataItem.Ordersamount", "{0}"), DataBinder.Eval(Container.DataItem, "userid").ToString())%></td>
         <td height="22" align="center"><%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"), "1")%></td>
        <td height="22" align="center"><%#formatzt(DataBinder.Eval(Container, "DataItem.StateLogistics", "{0}"), "2")%></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbgleft">        
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        &nbsp;&nbsp;页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
            转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
         &nbsp;&nbsp;共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条记录  &nbsp;&nbsp;<asp:Label ID="pagess" runat="server" Text="" />条记录/页 
              </td>
      </tr>
    </table>
     </asp:View>
      </asp:MultiView>
     </div>
    </div>
</body>
</html>