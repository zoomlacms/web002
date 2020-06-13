<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_AddAgio, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>促销方案管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 商城管理&gt;&gt; 促销管理 &gt;&gt; <a href="AgioProject.aspx"> 打折方案管理</a>&gt;&gt; <a href="AgioList.aspx?ID=<%=Request.QueryString["AID"].ToString() %>"> <%=proName %>方案打折信息管理</a>&gt;&gt; <%=type%>打折信息</div>
  <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
    <tr align="center">
      <td colspan="2" class="spacingtitle"><%=type%>打折信息 </td>
    </tr>
    <tr class="WebPart">
      <td height="22" class="tdbgleft" align="right" style="width: 24%"><strong>打折方案名称：</strong></td>
      <td width="76%" valign="middle"><%=proName %></td>
    </tr>
    <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="22" class="tdbgleft" align="right" style="width: 24%" valign="top"><strong>数量区限：</strong></td>
      <td height="22" valign="middle"><asp:TextBox ID="txtStartNum" class="l_input" runat="server" Width="90px" />
        &nbsp; &nbsp; &gt; &nbsp;
        <asp:TextBox ID="txtEndNum"  class="l_input" runat="server" Width="90px" />
        购物数量 <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEndNum" ControlToValidate="txtStartNum" ErrorMessage="请输入正确的数量区限" Operator="GreaterThan" Type="Integer"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEndNum" ErrorMessage="请输入购物数量的下限"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStartNum" ErrorMessage="请输入购物数量的上限"></asp:RequiredFieldValidator></td>
    </tr>
    <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top"><strong>折扣：</strong></td>
      <td height="22" valign="middle"><asp:TextBox ID="txtAgio"  class="l_input" runat="server" Width="30px" MaxLength="3" />
        %
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtAgio" ErrorMessage="*请输入正确的折扣信息" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAgio" ErrorMessage="*折扣不能小于1或大于100" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAgio" ErrorMessage="*请输入正确的折扣信息"></asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg">
      <td height="22" colspan="5" align="center" class="tdbgleft"><asp:Button ID="Button4" class="C_input" runat="server" Text="提  交" OnClick="Button4_Click" />
        &nbsp;
        &nbsp; &nbsp;
        <input id="Button5" type="button" class="C_input" value="返  回" onclick="javascript:window.history.go(-1);" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"></td>
    </tr>
  </table>
</form>
</body>
</html>