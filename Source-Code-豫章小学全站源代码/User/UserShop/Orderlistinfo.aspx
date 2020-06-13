<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_Orderlistinfo, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language=javascript> 
function doPrint() { 
bdhtml=window.document.body.innerHTML;
sprnstr= "<!--startprint--> "; 
eprnstr= " <!--endprint--> "; 
prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17); 
prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr)); 
window.document.body.innerHTML=prnhtml; 
window.print();
} 
</script>
</head>
<body>
<div style="width:100%">
	<!-- str -->
    <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <div class="us_topinfo" style="margin-top:10px; width:98%">
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">

        <tr class="tdbg" style="background:#FFE3BB">
            <td colspan="5" align="center" class="title">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;</td>
        </tr>
        <tr class="tdbg">
          <td align="left" style="width: 13%; height: 23px">客户名称：<asp:Label ID="Reuser" runat="server" Text=""></asp:Label></td>
          <td align="left" style="width: 14%; height: 23px">用 户 名：<asp:Label ID="Rename" runat="server" Text=""></asp:Label></td>
          <td align="left" style="width: 13%; height: 23px">购买日期：<asp:Label ID="adddate" runat="server"></asp:Label></td>
          <td width="20%" align="left" style="height: 23px">下单日期：<asp:Label ID="addtime" runat="server"></asp:Label></td>
        </tr>
        <tr class="tdbg">
          <td align="left" style="width: 13%; height: 12px">需开发票：<asp:Label ID="Invoiceneeds" runat="server"></asp:Label></td>
          <td align="left" style="width: 14%; height: 12px">已开发票：<asp:Label ID="Developedvotes" runat="server"></asp:Label></td>
          <td align="left" style="width: 13%; height: 12px">付款状态：<asp:Label ID="Paymentstatus" runat="server"></asp:Label></td>
          <td width="20%" align="left" style="height: 12px">物流状态：<asp:Label ID="StateLogistics" runat="server"></asp:Label></td>
        </tr>
      </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody3">

            <tr class="tdbg">
              <td width="50%" height="24" align="center"><table width="100%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                  <td width="28%" height="24" align="right" class="tdbgleft">收货人姓名：</td>
                  <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Reusers" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">收货人地址：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Jiedao" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">收货人邮箱：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Email" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td align="right" class="tdbgleft" style="height: 24px">付款方式：</td>
                  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="Payment" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">发票信息：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Invoice" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">缺货处理：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Outstock" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">订单类型：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Ordertype" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td align="right" class="tdbgleft" style="height: 24px">要求送货时间：</td>
                  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="Deliverytime" runat="server" Text=""></asp:Label></td>
                </tr>
              </table></td>
              <td width="50%" align="center"><table width="100%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                  <td width="28%" height="24" align="right" class="tdbgleft">联系电话：</td>
                  <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Phone" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td align="right" class="tdbgleft" style="height: 24px">邮政编码：</td>
                  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="ZipCode" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">收货人手机：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Mobile" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">送货方式：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Delivery" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">跟单员：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="AddUser" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">内部记录：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Internalrecords" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">备注/留言：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Ordermessage" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="tdbgleft">订单状态：&nbsp;</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="OrderStatus" runat="server"></asp:Label></td>
                </tr>
              </table></td>
            </tr>
      </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody2">
        <tr class="tdbg">
          <td width="10%" align="center" class="title">图片</td>
          <td width="18%" align="center" class="title">商品名称</td>
          <td width="6%" align="center" class="title">单位</td>
          <td width="6%" align="center" class="title">数量</td>
          <td width="6%" align="center" class="title">市场价</td>
          <td width="6%" align="center" class="title">实价</td>
          <td width="6%" align="center" class="title">指定价</td>
          <td width="6%" align="center" class="title">金额</td>
          <td width="8%" align="center" class="title">服务期限</td>
          <td width="12%" align="center" class="title">备注</td>
        </tr>
        
        <asp:Repeater ID="procart" runat="server">
        <ItemTemplate>
 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><%#getproimg(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
          <td align="center"><%#Eval("proname")%></td>
          <td width="6%" align="center"><%#Eval("Danwei") %></td>
          <td width="6%" align="center"><%#Eval("pronum") %></td>
          <td width="6%" align="center"><%#getjiage("1", DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
          <td width="6%" align="center"><%#getshichangjiage(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
          <td width="6%" align="center"><%#shijia(DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%></td>
          <td width="6%" align="center"><%#getprojia(DataBinder.Eval(Container, "DataItem.ID", "{0}"))%></td>
          <td width="8%" align="center"><%#qixian(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
          <td align="center"><%#beizhu(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
          
          </tr>
          
          </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
          <td height="24">&nbsp;</td>
          <td height="24">&nbsp;</td>
          <td height="24">&nbsp;</td>
          <td height="24">&nbsp;</td>
          <td height="24">&nbsp;</td>
          <td height="24">&nbsp;</td>
          <td height="24" align="center">合计：</td>
          <td height="24" align="left">&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
          <td height="24">&nbsp;</td>
          <td height="24">&nbsp;</td>
        </tr>
                <tr class="tdbg">
                  <td colspan="10" style="height: 24px">&nbsp;运费：<asp:Label ID="Label32" runat="server" Text=""></asp:Label>元
                  </td>
                </tr>
                <tr class="tdbg">
                  <td height="24" colspan="10"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="50%" align="left" style="height: 19px">
                          &nbsp;实际金额：
                          <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
                          + 
                          <asp:Label ID="Label30" runat="server" Text=""></asp:Label>＝<asp:Label ID="Label31"
                              runat="server" Text=""></asp:Label>元</td>
                      <td width="50%" align="right" style="height: 19px">
                          &nbsp;已付款：<asp:Label ID="Label28" runat="server" Text=""></asp:Label>元
                      </td>
                    </tr>
                  </table></td>
                </tr>
                <tr class="tdbg">
                  <td height="24" colspan="10"> <font color="red">
                          <asp:Label ID="Label33" runat="server" Text=""></asp:Label></font> </td>
                </tr>
      </tbody>
    </table>
    <!--endprint--> 

    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;" id="TABLE1">
      <tbody id="Tbody4">

        <asp:Repeater ID="procart2" runat="server">
          <ItemTemplate></ItemTemplate>
        </asp:Repeater>

        <tr class="tdbg">
          <td width="25%" rowspan="3">
              <asp:Button ID="Button4" runat="server" Text="确认订单" Width="100px" OnClick="Button4_Click" /><br />
              <asp:Button ID="Button5" runat="server" Text="取消确认" Width="100px" OnClick="Button5_Click" /><br />
              <asp:Button ID="Button3" runat="server" Text="发货" Width="100px" OnClick="Button3_Click" /></td>
          <td width="25%" rowspan="3">
              <asp:Button ID="Button2" runat="server" Text="已经支付" Width="100px" OnClick="Button2_Click" /><br />
              <asp:Button ID="Button7" runat="server" Text="客户已签收" Width="100px" OnClick="Button7_Click" /><br />
              <asp:Button ID="Button6" runat="server" Text="订单作废" Width="100px" OnClick="Button6_Click" /></td>
          <td width="25%" rowspan="3">
                <asp:Button ID="Button13" runat="server" Text="暂停处理" Width="100px" OnClick="Button13_Click" /><br />
              <asp:Button ID="Button14" runat="server" Text="恢复正常" Width="100px" OnClick="Button14_Click" /><br />
              <asp:Button ID="Button12" runat="server" Text="删除订单" Width="100px" OnClick="Button12_Click" /></td>
          <td width="25%" rowspan="3">
              <asp:Button ID="Button9" runat="server" Text="结清订单" Width="100px" OnClick="Button9_Click" /><br />
              <asp:Button ID="Button11" runat="server" Text="开发票" Width="100px" OnClick="Button11_Click" /><br />
              <asp:Button ID="Button15" runat="server" Text="打印订单" Width="100px" OnClientClick="doPrint();return false;" /></td>
         </tr>
        <tr class="tdbg">
        </tr>
        <tr class="tdbg">
        </tr>
      </tbody>
    </table>
    </div>
</div>
    
</body>
</html>