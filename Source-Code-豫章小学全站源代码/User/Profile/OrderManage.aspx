<%@ page language="C#" autoeventwireup="true" inherits="User_Profile_OrderManage, App_Web_ktmoec40" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的订单</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<style>
.item_list { margin-left:15px; list-style:none; padding:0 20px 0 0; }
.item_list li { zoom:1; clear:both; background:url(../Images/go_icon.png) no-repeat -390px 0px; padding-left:16px; }
</style>
<script type="text/javascript" language="javascript">
    function Show() {
        if (document.getElementById("hedui").style.display == "none") {
            document.getElementById("look").innerText = "点此查看↑";
            document.getElementById("hedui").style.display = "";
        }else{
            document.getElementById("hedui").style.display = "none";
            document.getElementById("look").innerText = "点此查看↓";
        }
    }

    function change() {

    }
</script>
</head>
<body>
<form runat="server">
<div class="us_topinfo" style="width:98%">
您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt;<a title="我的订单" href="OrderManage.aspx?state=0">我的订单</a>
</div>
    <div class="us_seta" style="margin-top: 5px;">
      <h1 align="center"> 订单详情</h1>
    </div>
  </div>
  <div class="us_topinfo" style="margin-top: 10px; width: 98%; margin-left: 10px"> <a href="OrderManage.aspx?state=0">待返订单</a> | <a href="OrderManage.aspx?state=1">已返订单</a> | <a href="OrderManage.aspx?state=2">失效订单</a></div>
  <div style="margin-left: 10px; ">
    <div id="orderlist" runat="server" style="float:left;margin-top:5px"></div>
    <div id="order" runat="server" style="margin-left: 15px;margin-top:5px;float:right"> 如果您刚下的单不在列表中，<a id="look" href="javascript:void(0)" onclick="Show()">点此查看↓</a> </div>
    <br />
    <div id="hedui" style="display:none;">
      <ul class="item_list">
        <li><strong>请核对您的下单时间：</strong></li>
        <li style="color:Gray">如果不到30分钟，请耐心等待，30分钟后<a href="?state=0">点此刷新</a></li>
        <li style="color:Gray">如果超过30分钟，建议您去商家页面取消订单后重新下单；或者将您的订单编号、下单时间提交给在线客服，我们会在24小时内帮您核对。 <a href="###">提交给在线客服&gt;&gt;</a></li>
      </ul>
    </div>
  </div>
  <div>
    <asp:HiddenField ID="count" runat="server" />
    <br />
    <div id="tips" runat="server" style="background:#FEEADB;padding:5px;margin-left:5px;"> </div>
    <div align="center">
      <table width="100%">
        <tr>
          <td align="center" width="14%">订单状态</td>
          <td align="center" width="12%">订单反馈日期</td>
          <td align="center" width="12%">商家</td>
          <td align="center" width="12%">订单号</td>
          <td align="center" width="12%">订单金额</td>
          <td align="center" width="12%">预计可返金额</td>
          <td align="center" width="14%">预计返利时间</td>
          <td align="center" width="12%">实返金额</td>
        </tr>
      </table>
      <div id="lblOrderTip" runat="server" style="margin-top:20px; height:50px;color:Red"></div>
      <asp:Repeater ID="repf" runat="server" OnItemDataBound="repf_ItemDataBound">
        <ItemTemplate>
          <table width="100%">
            <tr>
              <td align="center" width="14%"><asp:Label ID="lblState" runat="server"></asp:Label></td>
              <td align="center" width="12%"><asp:Label ID="lblProData" runat="server"></asp:Label></td>
              <td align="center" width="12%"><asp:Label ID="lblShop" runat="server"></asp:Label></td>
              <td align="center" width="12%"><asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' />
                <asp:Label ID="lblOrderNo" runat="server" Text='<%#Eval("OrderNo") %>'></asp:Label></td>
              <td align="center" width="12%"><asp:Label ID="lblOrderMoney" runat="server" 
                        Text='<%#DataBinder.Eval(Container, "DataItem.OrderMoney", "{0:N2}")%>'></asp:Label></td>
              <td align="center" width="12%"><asp:Label ID="ProfileMoney" runat="server" 
                        Text='<%#DataBinder.Eval(Container, "DataItem.profileMoney", "{0:N2}")%>'> </asp:Label></td>
              <td align="center" width="14%"><asp:Label ID="lblTime" runat="server"> </asp:Label></td>
              <td align="center" width="12%"><asp:Label ID="lblFM" runat="server" ></asp:Label></td>
            </tr>
          </table>
        </ItemTemplate>
      </asp:Repeater>
      <table>
        <tr class="tdbg">
          <td height="24" colspan="7" align="center" class="tdbgleft"> 共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条信息
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />
            /
            <asp:Label ID="PageSize" runat="server" Text="" />
            页 <span style="text-align: center">
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
            </span>条信息/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
            页 </td>
        </tr>
      </table>
    </div>
</form>
</body>
</html>