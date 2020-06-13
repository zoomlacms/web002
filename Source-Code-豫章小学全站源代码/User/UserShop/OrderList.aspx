<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_OrderList, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
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
<div style="width:100%">
	<!-- str -->
    <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <div class="us_topinfo" style="margin-top:10px; width:98%"><a href="OrderList.aspx">订单管理</a></div>
    <div class="us_topinfo" style="margin-top:10px; width:98%">
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">

      <tbody id="Tabs" >

        <tr class="tdbg">
          <td width="34%" height="24" align="center" class="title">快速查找：
          <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
              <asp:ListItem Selected="True">请选择查找方式</asp:ListItem>
              <asp:ListItem Value="2">今天的新订单</asp:ListItem>
              <asp:ListItem Value="3">所有订单</asp:ListItem>
              <asp:ListItem Value="4">最近10天内的新订单</asp:ListItem>
              <asp:ListItem Value="5">最近一个月内的新订单</asp:ListItem>
              <asp:ListItem Value="6">未确认的订单</asp:ListItem>
              <asp:ListItem Value="7">未付款的订单</asp:ListItem>
              <asp:ListItem Value="8">未付清的订单</asp:ListItem>
              <asp:ListItem Value="9">未送货的订单</asp:ListItem>
              <asp:ListItem Value="10">未签收的订单</asp:ListItem>
              <asp:ListItem Value="11">未结清的订单</asp:ListItem>
              <asp:ListItem Value="12">未开发票的订单</asp:ListItem>
              <asp:ListItem Value="13">已经作废的订单</asp:ListItem>
              <asp:ListItem Value="14">暂停处理的订单</asp:ListItem>
              <asp:ListItem Value="15">已发货的订单</asp:ListItem>
              <asp:ListItem Value="16">已签收的订单</asp:ListItem>
              <asp:ListItem Value="17">已结清的订单</asp:ListItem>
          </asp:DropDownList></td>
          <td width="66%" align="center" class="title">高级查询：
          <asp:DropDownList ID="souchtable" runat="server">
              <asp:ListItem Selected="True" Value="1">订单编号</asp:ListItem>
              <asp:ListItem Value="2">客户名称</asp:ListItem>
              <asp:ListItem Value="3">用户名</asp:ListItem>
              <asp:ListItem Value="4">收货人</asp:ListItem>
              <asp:ListItem Value="5">联系地址</asp:ListItem>
              <asp:ListItem Value="6">联系电话</asp:ListItem>
              <asp:ListItem Value="7">下单时间</asp:ListItem>
              <asp:ListItem Value="8">备注/留言</asp:ListItem>
              <asp:ListItem Value="9">商品名称</asp:ListItem>
              <asp:ListItem Value="10">收货人邮箱</asp:ListItem>
              <asp:ListItem Value="11">发票信息</asp:ListItem>
              <asp:ListItem Value="12">内部记录</asp:ListItem>
              <asp:ListItem Value="13">跟单员</asp:ListItem>
          </asp:DropDownList>
          <asp:TextBox ID="souchkey" runat="server" />
          <asp:Button ID="souchok" runat="server" Text=" 搜索 " OnClick="souchok_Click" /></td>
        </tr>
      </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="0" cellspacing="0" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg" style="background:#FFBD59">
          <td width="20" height="24" align="center" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="145" align="center" class="title"><span class="tdbgleft">订单编号</span></td>
          <td width="75" align="center" class="title"><span class="tdbgleft">客户名称</span></td>
          <td width="65" align="center" class="title"><span class="tdbgleft">用户名</span></td>
          <td width="160" align="center" class="title"><span class="tdbgleft">下单时间</span></td>
          <td align="center" class="title" style="width: 68px"><span class="tdbgleft">实际金额</span></td>
          <td width="65" align="center" class="title"><span class="tdbgleft">收款金额</span></td>
          <td width="37" align="center" class="title"><span class="tdbgleft">需要发票</span></td>
          <td width="37" align="center" class="title"><span class="tdbgleft">已开发票</span></td>
          <td width="75" align="center" class="title"><span class="tdbgleft">订单状态</span></td>
          <td width="75" align="center" class="title"><span class="tdbgleft">付款状态</span></td>
          <td width="75" align="center" class="title"><span class="tdbgleft">物流状态</span></td>
        </tr>
            <asp:Repeater ID="Orderlisttable" runat="server">      
        <ItemTemplate>
                <tr class="tdbg" id="<%#Eval("id") %>" onmouseover="this.className='tdbgmouseover'" ondblclick="getinfo(this.id)" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><%#Getclickbotton(DataBinder.Eval(Container,"DataItem.id","{0}"))%></td>
          <td height="24" align="center"><%#getorderno(Eval("id","{0}"))%></td>
          <td height="24" align="center"><%#Eval("Reuser") %></td>
          <td height="24" align="center"><%#Eval("Rename") %></td>
          <td height="24" align="center"><%#Eval("AddTime") %></td>
          <td height="24" align="right"><%#getshijiage(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></td>
          <td height="24" align="right"><%#formatcs(DataBinder.Eval(Container,"DataItem.Receivablesamount","{0:N2}"))%></td>
          <td height="24" align="center"><%#fapiao(DataBinder.Eval(Container,"DataItem.Invoiceneeds","{0}"))%></td>
          <td height="24" align="center"><%#fapiao(DataBinder.Eval(Container, "DataItem.Developedvotes","{0}")) %></td>
          <td height="24" align="center"><%#formatzt(DataBinder.Eval(Container, "DataItem.OrderStatus", "{0}"),"0")%></td>
          <td height="24" align="center"><%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"),"1")%></td>
          <td height="24" align="center"><%#formatzt(DataBinder.Eval(Container, "DataItem.StateLogistics", "{0}"),"2")%></td>
        </tr>
        </ItemTemplate>       
        </asp:Repeater>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="background:#FFE3BB">
          <td height="24" colspan="5" >
            本次查询合计：<asp:Label ID="thisall" runat="server"></asp:Label><br />
           总计金额：<asp:Label ID="allall" runat="server"></asp:Label></td>
          <td height="24" >
              
              </td>
          <td height="24" align="center" style="width: 88px">&nbsp;</td>
          <td height="24" colspan="5" align="center">&nbsp;</td>
        </tr>
        
        <tr class="tdbg">
          <td height="24" colspan="12" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条记录  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" /> 条记录/页  转到第 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList> 页</td>
        </tr>
        <tr>
          <td height="24" colspan="12">说明：“已结清”与“已付款”的订单不允许删除,当订单号码成“灰色”代表此订单已“作废”</td>
        </tr>
        <tr>
          <td height="24" colspan="12"><asp:Button ID="Button1" Text="删除选中的订单" runat="server" OnClick="Button1_Click1" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" /></td>
        </tr>
      </tbody>
    </table>
</div>
</div>
</form>
</body>
</html>
