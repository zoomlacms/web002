<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_SaleList, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
    <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <div class="us_topinfo" style="margin-top:10px; width:98%"><a href="SaleList.aspx">资金明细</a> <a href="#">销售明细</a> <a href="#">支付明细</a> <a href="#">开发票明细</a></div>
    <div class="us_topinfo" style="margin-top:10px; width:98%">
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabs" >
        <tr class="tdbg">
          <td width="34%" height="24" align="center" class="title">快速查找：
          <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
              <asp:ListItem Value="1">所有资金明细记录</asp:ListItem>
              <asp:ListItem Value="2">10天内的资金明细记录</asp:ListItem>
              <asp:ListItem Value="3">一个月内的资金明细记录</asp:ListItem>
              <asp:ListItem Value="4">上一月的资金明细记录</asp:ListItem>
              <asp:ListItem Value="5">当前月的资金明细记录</asp:ListItem>
              <asp:ListItem Value="6">所有已确认的记录</asp:ListItem>
              <asp:ListItem Value="7">所有未确认的记录</asp:ListItem>
          </asp:DropDownList></td>
          <td width="66%" align="center" class="title">高级查询：
          <asp:DropDownList ID="souchtable" runat="server">
              <asp:ListItem Value="SuccessTime">交易时间</asp:ListItem>
              <asp:ListItem Selected="True" Value="UserID">用户名</asp:ListItem>
              <asp:ListItem Value="PaymentNum">支付序号</asp:ListItem>
              <asp:ListItem Value="MoneyPay">金额</asp:ListItem>
              <asp:ListItem Value="MoneyTrue">实际金额</asp:ListItem>
          </asp:DropDownList>
          <asp:TextBox ID="souchkey" runat="server" />
          <asp:Button ID="souchok" runat="server" Text=" 搜索 " /></td>
        </tr>
      </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="0" cellspacing="0" class="border" style="background-color: white;">
      <tbody id="Tabss">
               <tr class="us_seta" style="background:#FFBD59">
          <td width="15%" height="24" align="center" class="title"><span class="tdbgleft">交易时间</span></td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">用户名</span></td>
          <td width="15%" align="center" class="title"><span class="tdbgleft">交易方式</span></td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">支付序号</span></td>
          <td width="15%" align="center" class="title"><span class="tdbgleft">金额</span></td>
          <td width="15%" align="center" class="title"><span class="tdbgleft">实际金额</span></td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">交易状态</span></td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">处理状态</span></td>
        </tr>
        <asp:Repeater ID="Productlist" runat="server">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><%#Eval("PayTime")%></td>
          <td height="24" align="center"><%#getusername(Eval("UserID","{0}"))%></td>
          <td height="24" align="center"><%#getPayPlat(Eval("PayPlatID","{0}"))%></td>
          <td height="24" align="center"><%#Eval("PaymentNum") %></td>
          <td height="24" align="right"><%#Eval("MoneyPay","{0:f}") %></td>
          <td height="24" align="right"><%#Eval("MoneyTrue","{0:f}") %></td>
          <td height="24" align="center" ><%# GetStatus(Eval("Status","{0}"))%></td>
          <td height="24" align="center"><%# GetCStatus(Eval("CStatus","{0}"))%></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
                 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" colspan="4" align="right">
              总计金额：</td>
              <td height="24" align="right">
              <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
              </td>
          <td height="24" align="right">
              <asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
          <td height="24" colspan="4" align="right">&nbsp;</td>
        </tr>
        <tr class="tdbg">
<td height="22" colspan="10" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条记录  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条记录/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
     </tbody>
    </table>
        
    </div>
</div>
    </form>
</body>
</html>