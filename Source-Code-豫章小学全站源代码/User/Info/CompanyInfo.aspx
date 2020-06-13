<%@ page language="C#" autoeventwireup="true" inherits="User_Info_CompanyInfo, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%Call.Label("{$SiteName/}"); %>会议中心</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body style="background: none">
<form id="form1" runat="server">
  <div class="us_topinfo" style="width:98%">
    <div class="us_pynews">
      您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank">
        <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
        </a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; </span><span><a title="商铺信息设置" href="/User/ChangPSW.aspx">商铺信息设置</a></span></span>
    </div>
    <div class="cleardiv"> </div>
  </div>
  <div style="margin-top: 10px;">
    <div class="us_seta" style="margin-top: 5px; height: 300px">
      <h1 style="text-align: center">
        <div> 商铺信息设置</div>
      </h1>
      <table>
        <tr>
          <td> 公司名称： </td>
          <td><asp:TextBox ID="txtName" runat="server" class="input_out" Width="474px" /></td>
        </tr>
        <tr>
          <td> 当前状态： </td>
          <td><asp:Label ID="lblState" ForeColor="Red" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblState_hid" runat="server" Text="" Visible="false"></asp:Label></td>
        </tr>
        <tr>
          <td> 公司介绍： </td>
          <td><asp:TextBox ID="txtCompanyDescribe" runat="server" TextMode="MultiLine" Height="60px" class="input_out" Width="473px"></asp:TextBox></td>
        </tr>
        <tr>
          <td> 公司Logo： </td>
          <td><asp:FileUpload ID="FileUpload1" runat="server" class="input_out" />
            <asp:Label ID="lblMessage" runat="server" Text="" Visible="false"></asp:Label></td>
        </tr>
        <tr>
          <td> 服务认证： </td>
          <td><asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>请选择</asp:ListItem>
              <asp:ListItem>已通过国际认证</asp:ListItem>
              <asp:ListItem>产品实行三包</asp:ListItem>
              <asp:ListItem Value="按客商要求生产制造">按客商要求生产制造</asp:ListItem>
              <asp:ListItem>未设置</asp:ListItem>
            </asp:DropDownList>
            (说明: 选择国际认证则需要您添加证书并通过后才能显示) </td>
        </tr>
        <tr>
          <td style="text-align: center"><asp:Button ID="BtnSubmit" runat="server" Text="确认" class="i_bottom" OnClick="BtnSubmit_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="BtnCancle" runat="server" Text="取消" class="i_bottom" OnClick="BtnCancle_Click" /></td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>