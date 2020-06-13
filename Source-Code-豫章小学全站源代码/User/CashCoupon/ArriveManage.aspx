<%@ page language="C#" autoeventwireup="true" inherits="User_CashCoupon_ArriveManage, App_Web_qn0afzdj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>优惠劵管理</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="../../JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo" style="width: 98%">
    <div class="us_pynews">
      您现在的位置： <a title="网站首页" href="/" target="_blank">
        <asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a> &gt;&gt; <a title="会员中心" href="../Default.aspx" target="_parent">会员中心</a> &gt;&gt; <a title="抵用劵管理" href="ArriveManage.aspx">优惠劵管理</a>
    </div>
  </div>
  <div class="us_seta"  style="margin-top:5px;">
    <h1 align="center">我的优惠劵</h1>
  </div>
  <table  width="100%" cellpadding="2" cellspacing="1">
    <tr >
      <td align="center" width="20%">编号</td>
       <td align="center" width="15%">密码</td>
      <td align="center" width="10%">金额</td>
      <td align="center" width="15%">生成时间</td>
      <td align="center" width="15%">到期时间</td>
      <td align="center" width="15%">使用时间</td>
      <td align="center" width="10%"> 状态 </td>
    </tr>
    <asp:Repeater ID="Manufacturerslist" runat="server" onitemcommand="Manufacturerslist_ItemCommand" onitemdatabound="Manufacturerslist_ItemDataBound">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
          <td height="24" align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("id") %>' />
            <%#Eval("arriveNO")%></td>
          <td height="24" align="center"><asp:HiddenField ID="hfpwd" runat="server" Value='<%# Eval("id") %>' />
            <%#Eval("arrivePwd")%></td>
          <td height="24" align="center"><%#Eval("amount")%></td>
          <td height="24" align="center"><%#Eval("againTime", "{0:yyyy-MM-dd}")%></td>
          <td height="24" align="center"><%#Eval("endTime", "{0:yyyy-MM-dd}")%></td>
          <td height="24" align="center"><%#GetUseTime(Eval("useTime", "{0}"))%></td>
          <td height="24" align="center"><asp:Label ID="lblState" runat="server" Text='<%# GetState(Eval("State","{0}")) %>'></asp:Label></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
      <td height="24" colspan="5" align="center" class="tdbgleft"> 共
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
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input"
            Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
        </span> 条信息/页  转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
        页 </td>
    </tr>
  </table>
</form>
</body>
</html>
