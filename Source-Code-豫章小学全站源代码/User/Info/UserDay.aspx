<%@ page language="C#" autoeventwireup="true" inherits="User_Info_UserDay, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>节日提醒</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body style="background: none">
<form id="form1" runat="server">
  <div class="us_topinfo" style="width: 98%">
    您现在的位置：<span id="Span1"><a title="网站首页" href="/" target="_blank">
      <asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; <a title="节日提醒" href="/User/Info/UserDay.aspx">节日提醒</a>
  </div>
  <div style="margin-top: 10px;">
    <div class="us_seta" style="margin-top: 5px;">
      <table width="100%" cellpadding="2" cellspacing="1">
        <tr class="tdbgleft" style="text-align: center; font-weight: bold; height: 26px">
          <td width="10%"> ID </td>
          <td width="10%"> 时间 </td>
          <td width="70%"> 节日标题 </td>
          <td width="10%"> 操作 </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="text-align: center">
              <td><asp:Label ID="idla" runat="server" Text=""></asp:Label></td>
              <td><%#Eval("D_date","{0:d}")%></td>
              <td><%#Eval("D_name")%></td>
              <td><a href="?menu=edit&id=<%#Eval("id") %>">修改</a> <a href="?menu=delete&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
            </tr>
          </ItemTemplate>
        </asp:Repeater>
      </table>
    </div>
  </div>
  <div style="margin-top: 10px;">
    <div class="us_seta" style="margin-top: 5px;">
      <h1 style="text-align: center">
        <asp:Literal ID="nodetxt" runat="server" Text="节日提醒"></asp:Literal>
      </h1>
      <table>
        <tr>
          <td> 节日标题： </td>
          <td><asp:TextBox ID="D_title" runat="server" class="input_out" Width="430px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="D_title" ErrorMessage="节日标题不能为空！"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
          <td> 节日日期： </td>
          <td><asp:TextBox ID="D_date" runat="server" class="input_out" Width="120px" Text="" onclick="parent.openWin('/Common/SelectChinaDay.html','选择日期');"></asp:TextBox>
            <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" ToolTip="鼠标点击左边输入框出现时间选择框" />
            <span id="Span2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="D_date" ErrorMessage="节日日期不能为空！"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
          <td> 节日说明： </td>
          <td><asp:TextBox ID="D_Content" runat="server" Height="80px" CssClass="input_out" TextMode="MultiLine" Width="425px"></asp:TextBox></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td style="text-align: center"><asp:Button ID="BtnSubmit" runat="server" Text="添加" class="i_bottom" OnClick="BtnSubmit_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="BtnCancle" runat="server" Text="取消" class="i_bottom" CausesValidation="false" OnClick="BtnCancle_Click" /></td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>