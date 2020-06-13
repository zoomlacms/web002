<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_addnode, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加栏目</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
</head>
<body style="background: none">
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
  您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="栏目管理" href="/User/Pages/ClassManage.aspx">栏目管理</a>&gt;&gt;<a title="添加栏目" href="/User/Pages/Modifyinfo.aspx"> 添加栏目</a>
</div>
  <div style="margin-top: 10px;">
    <div class="us_seta" style="margin-top: 5px;">
      <h1 style="text-align: center">
        <asp:Literal ID="nodetxt" runat="server" Text="添加栏目"></asp:Literal>
      </h1>
      <table>
        <tr>
          <td> 栏目名称： </td>
          <td><asp:TextBox ID="Title" runat="server" class="input_out" Width="430px" /></td>
        </tr>
        <tr>
          <td> 栏目排序： </td>
          <td><asp:TextBox ID="NodeOrder" runat="server" class="input_out" Width="72px" Text="0"></asp:TextBox></td>
        </tr>
        <tr>
          <td> 显示状态： </td>
          <td><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Text="显示" Value="1" Selected="True"></asp:ListItem>
              <asp:ListItem Text="隐藏" Value="0"></asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr>
          <td> 栏目捆绑： </td>
          <td><asp:DropDownList ID="ClassNode" runat="server"> </asp:DropDownList></td>
        </tr>
        <tr>
          <td> META描述： </td>
          <td><asp:TextBox ID="PageMetakeyinfo" runat="server" Height="106px" Width="430px" TextMode="MultiLine" class="input_out"></asp:TextBox></td>
        </tr>
        <tr>
          <td> keyword关键字： </td>
          <td><asp:TextBox ID="keyword" runat="server" Width="430px" class="input_out"></asp:TextBox></td>
        </tr>
        <tr>
          <td> 栏目提示： </td>
          <td><asp:TextBox ID="Nodeimgtext" runat="server" Width="430px" class="input_out"></asp:TextBox></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td style="text-align: center"><asp:Button ID="BtnSubmit" runat="server" Text="确认" class="i_bottom" onclick="BtnSubmit_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="BtnCancle" runat="server" Text="取消" class="i_bottom" CausesValidation="false" onclick="BtnCancle_Click" /></td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>