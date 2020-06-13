<%@ page language="C#" autoeventwireup="true" inherits="User_Profile_ExChangeRecord, App_Web_ktmoec40" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>兑换记录</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="../../Common/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label> </a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt;<a href="ExChangeRecord.aspx">兑换记录</a>&nbsp;
</div>
</div>
    <div class="us_seta"  style="margin-top:5px;">
      <h1 align="center">兑换记录</h1>
    </div>
    <div align="center">
      <table width="100%">
        <tr>
          <td align="center" width="20%">申请时间</td>
          <td align="center" width="10%">卡类别</td>
          <td align="center" width="10%">卡信息</td>
          <td align="center" width="30%">备注</td>
          <td align="center" width="10%">确认日期</td>
          <td align="center" width="10%">兑换状态</td>
        </tr>
      </table>
      <asp:Repeater ID="repf" runat="server">
        <ItemTemplate>
          <table width="100%">
            <tr>
              <td align="center"  width="20%"><asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' />
                <asp:Label ID="lblOrderData" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OrderData","{0:yyyy-MM-dd}") %>'></asp:Label></td>
              <td align="center" width="10%"><asp:Label ID="lblCardType" runat="server" Text='<%# GetCardType(Eval("CardType","{0}")) %>'></asp:Label></td>
              <td align="center" width="10%"><asp:Label ID="lblCardinfo" runat="server" Text='<%#GetCardinfo(Eval("ShopCardId","{0}")) %>'> </asp:Label></td>
              <td align="center" width="30%"><asp:Label ID="lblRemark" runat="server" Text='<%#GetRemark(Eval("remark","{0}"))%>'></asp:Label></td>
              <td align="center" width="10%"><asp:Label ID="lblconfirmData" runat="server" Text='<%#GetConfirmData(Eval("confirmData","{0}"),Eval("confirmState","{0}")) %>'></asp:Label></td>
              <td align="center"  width="10%"><asp:Label ID="lblDstate" runat="server" Text='<%#GetState(Eval("State","{0}")) %>'></asp:Label></td>
            </tr>
          </table>
        </ItemTemplate>
      </asp:Repeater>
      <table>
        <tr>
          <td height="24" colspan="7" align="center"> 共
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
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
            </span>条信息/页  转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            页 </td>
        </tr>
      </table>
    </div>
</form>
</body>
</html>