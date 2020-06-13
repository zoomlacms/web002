<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserPurse, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员积分</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;用户管理&gt;&gt;会员管理&gt;&gt;<a href='UserManage.aspx'>会员列表</a>&gt;&gt;会员资金操作</div>
  <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="2" class="spacingtitle"><asp:Label ID="Lbl_t" runat="server" Text="会员资金操作"></asp:Label></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 20%" align="right"> 会员名：</td>
      <td class="bqright"><asp:Label ID="lbUserName" runat="server" ></asp:Label></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 20%" align="right"> 资金余额：</td>
      <td class="bqright"><asp:Label ID="lblPurse" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 20%" align="right"> 资金操作：</td>
      <td class="bqright"><asp:RadioButtonList ID="rblPurse" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Value="1" Selected="True">加资金</asp:ListItem>
          <asp:ListItem Value="2">减资金</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 20%" align="right"> 资金：</td>
      <td class="bqright"><asp:TextBox ID="TxtScore" runat="server" CssClass="l_input"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" ID="Rev_1" ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtScore" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 20%" align="right"> 备注：</td>
      <td class="bqright"><asp:TextBox ID="TxtDetail" runat="server" Rows="10" TextMode="MultiLine" Width="50%" CssClass="x_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbgbottom">
      <td colspan="2"><asp:HiddenField ID="Hdn_t" runat="server" />
        <asp:HiddenField ID="HdnUserID" runat="server" />
        <asp:Button ID="EBtnSubmit" Text="确 认" OnClick="EBtnSubmit_Click" OnClientClick="" runat="server" class="C_input" />
        <asp:Button ID="Button1" Text="取 消" runat="server" class="C_input" CausesValidation="false" onclick="Button1_Click" /></td>
    </tr>
  </table>
  <table  width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr class="tdbg">
      <td align="center" class="title">操作时间</td>
      <td align="center" class="title">操作金额</td>
      <td align="center" class="title">操作人</td>
      <td align="center" class="title">备注</td>
    </tr>
    <asp:Repeater ID="repea" runat="server">
      <ItemTemplate>
        <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td align="center"><%#DataBinder.Eval(Container.DataItem, "HisTime", "{0:yyyy-MM-dd}")%></td>
          <td align="center"><%#DataBinder.Eval(Container.DataItem, "Score", "{0:F2}")%></td>
          <td align="center"><a href='/manage/User/AdminDetail.aspx?roleid=0&id=<%#Eval("Operator") %>' target="_blank"><%#GetUserName(Eval("Operator", "{0}"))%></a></td>
          <td align="center"><%#Eval("Detail")%></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr>
      <td colspan="4"><asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条数据
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />
        /
        <asp:Label ID="PageSize" runat="server" Text="" />
        页
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                    Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
        条数据/页 转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
        页
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator></td>
    </tr>
  </table>
</form>
</body>
</html>