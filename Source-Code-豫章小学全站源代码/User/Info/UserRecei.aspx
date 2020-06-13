<%@ page language="C#" autoeventwireup="true" inherits="User_Info_UserRecei, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户地址薄</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a> &gt;&gt; <span><a href="UserRecei.aspx">我的地址薄</a>&gt;&gt;<a href="UserDeci_Modify.aspx">添加地址薄</a></div>
  <div class="us_seta"  style="margin-top:5px;">
    <h1 align="center">我的地址薄</h1>
  </div>
  <div align="center">
    <table width="100%" >
      <tr class="tdbgleft">
        <td align="center" width="8%">收货人</td>
        <td align="center" width="8%">邮政编码</td>
        <td align="center" width="14%">所在省市</td>
        <td align="center" width="15%">具体地址</td>
        <td align="center" width="21%">手机/电话</td>
        <td align="center" width="10%">E-Mail</td>
        <td align="center" width="7%">默认</td>
        <td align="center" width="17%">操作</td>
      </tr>
      <asp:Repeater ID="repf" runat="server" onitemcommand="repf_ItemCommand" onitemdatabound="repf_ItemDataBound" >
        <ItemTemplate>
          <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="center" width="8%"><asp:Label ID="AddTime" runat="server" Text='<%#Eval("ReceivName") %>'></asp:Label></td>
            <td align="center" width="8%"><asp:Label ID="Points" runat="server" Text='<%#Eval("Zipcode") %>'></asp:Label></td>
            <td align="center" width="14%"><asp:Label ID="Type" runat="server" Text='<%#GetPro(Eval("Provinces","{0}")) %>'> </asp:Label></td>
            <td align="center" width="15%"><%#GetJedoa(Eval("Street","{0}")) %></td>
            <td align="center" width="21%"><%#GetMobi(Eval("MobileNum","{0}"),Eval("phone","{0}")) %></td>
            <td align="center" width="10%"><%#Eval("Email")%></td>
            <td align="center" width="7%"><%#GetIsDefault(Eval("isDefault","{0}")) %></td>
            <td align="center" width="17%"><asp:HiddenField ID="hfid" runat="server" Value='<%#Eval("isDefault") %>' />
              <asp:LinkButton ID="lbDefault" runat="server" CommandArgument='<%#Eval("ID") %>'  CommandName="def">设为默认</asp:LinkButton>
              <asp:LinkButton ID="bt" runat="server" CommandArgument='<%#Eval("ID") %>'  CommandName="Upd">修改</asp:LinkButton>
              <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("ID") %>'  CommandName="del">删除</asp:LinkButton></td>
          </tr>
        </ItemTemplate>
      </asp:Repeater>
      <tr class="tdbg">
        <td height="24" colspan="8" align="center" class="tdbgleft"><asp:Label id="divTips" runat="server" ForeColor="Red"></asp:Label>
          共
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